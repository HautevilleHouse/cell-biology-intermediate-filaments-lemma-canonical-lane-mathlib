import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure IntermediateFilamentAssembly where
  filamentType : Type u
  subunitProtein : Type v
  polymerizationState : Prop
  assemblyConditions : Prop
  disassemblyConditions : Prop

structure AssemblyEvidence (A : IntermediateFilamentAssembly) where
  polymerizationStateClosed : A.polymerizationState
  assemblyConditionsClosed : A.assemblyConditions
  disassemblyConditionsClosed : A.disassemblyConditions

def AssemblyClosed (A : IntermediateFilamentAssembly) : Prop :=
  A.polymerizationState ∧ A.assemblyConditions ∧ A.disassemblyConditions

theorem assembly_closed_from_evidence (A : IntermediateFilamentAssembly) (E : AssemblyEvidence A) :
    AssemblyClosed A := by
  exact And.intro E.polymerizationStateClosed (And.intro E.assemblyConditionsClosed E.disassemblyConditionsClosed)

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse
