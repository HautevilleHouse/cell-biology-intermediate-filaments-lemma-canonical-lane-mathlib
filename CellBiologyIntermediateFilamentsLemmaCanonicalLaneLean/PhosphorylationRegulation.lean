import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure PhosphorylationRegulation where
  kinaseTargets : Prop
  phosphataseActivity : Prop
  phosphorylationState : Prop
  assemblyModulation : Prop

structure PhosphorylationEvidence (P : PhosphorylationRegulation) where
  kinaseTargetsClosed : P.kinaseTargets
  phosphataseActivityClosed : P.phosphataseActivity
  phosphorylationStateClosed : P.phosphorylationState
  assemblyModulationClosed : P.assemblyModulation

def PhosphorylationClosed (P : PhosphorylationRegulation) : Prop :=
  P.kinaseTargets ∧ P.phosphataseActivity ∧ P.phosphorylationState ∧ P.assemblyModulation

theorem phosphorylation_closed_from_evidence (P : PhosphorylationRegulation) (E : PhosphorylationEvidence P) :
    PhosphorylationClosed P := by
  exact And.intro E.kinaseTargetsClosed (And.intro E.phosphataseActivityClosed (And.intro E.phosphorylationStateClosed E.assemblyModulationClosed))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse
