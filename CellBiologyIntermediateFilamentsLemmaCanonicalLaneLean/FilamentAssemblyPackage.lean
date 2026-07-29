import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure FilamentAssemblyPackage where
  tetramerFormation : Prop
  unitLengthFilament : Prop
  endToEndAnneal : Prop
  lateralBundling : Prop
  crossLinking : Prop

structure FilamentAssemblyEvidence (P : FilamentAssemblyPackage) where
  tetramerFormationClosed : P.tetramerFormation
  unitLengthFilamentClosed : P.unitLengthFilament
  endToEndAnnealClosed : P.endToEndAnneal
  lateralBundlingClosed : P.lateralBundling
  crossLinkingClosed : P.crossLinking

def FilamentAssemblyClosed (P : FilamentAssemblyPackage) : Prop :=
  P.tetramerFormation ∧ P.unitLengthFilament ∧ P.endToEndAnneal ∧ P.lateralBundling ∧ P.crossLinking

theorem filament_assembly_closed_from_evidence (P : FilamentAssemblyPackage) (E : FilamentAssemblyEvidence P) :
    FilamentAssemblyClosed P := by
  exact And.intro E.tetramerFormationClosed (And.intro E.unitLengthFilamentClosed (And.intro E.endToEndAnnealClosed (And.intro E.lateralBundlingClosed E.crossLinkingClosed)))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse