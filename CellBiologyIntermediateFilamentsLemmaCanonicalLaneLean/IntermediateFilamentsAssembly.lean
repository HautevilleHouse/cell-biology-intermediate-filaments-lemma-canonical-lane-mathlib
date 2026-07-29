import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure IntermediateFilamentProtein where
  sequence : String
  assemblyCompetence : Prop
  coiledCoilDomain : Prop
  headDomain : Prop
  tailDomain : Prop

structure FilamentAssemblyPackage where
  tetramerFormation : Prop
  unitLengthFilamentFormation : Prop
  filamentElongation : Prop
  filamentAnnealing : Prop
  networkFormation : Prop

structure FilamentAssemblyEvidence (P : FilamentAssemblyPackage) where
  tetramerFormationClosed : P.tetramerFormation
  unitLengthFilamentFormationClosed : P.unitLengthFilamentFormation
  filamentElongationClosed : P.filamentElongation
  filamentAnnealingClosed : P.filamentAnnealing
  networkFormationClosed : P.networkFormation

def FilamentAssemblyClosed (P : FilamentAssemblyPackage) : Prop :=
  P.tetramerFormation ∧ P.unitLengthFilamentFormation ∧
  P.filamentElongation ∧ P.filamentAnnealing ∧ P.networkFormation

theorem filament_assembly_closed_from_evidence (P : FilamentAssemblyPackage)
    (E : FilamentAssemblyEvidence P) : FilamentAssemblyClosed P := by
  exact And.intro E.tetramerFormationClosed
    (And.intro E.unitLengthFilamentFormationClosed
      (And.intro E.filamentElongationClosed
        (And.intro E.filamentAnnealingClosed E.networkFormationClosed)))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse