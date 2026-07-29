import HautevilleHouse.CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.IntermediateFilamentAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure FilamentAssemblyPackage where
  monomerPolymerization : Prop
  coiledCoilDimerization : Prop
  tetramerFormation : Prop
  unitLengthFilamentAssembly : Prop
  filamentAnnealing : Prop
  dynamicTurnover : Prop

structure FilamentAssemblyEvidence (P : FilamentAssemblyPackage) where
  monomerPolymerizationClosed : P.monomerPolymerization
  coiledCoilDimerizationClosed : P.coiledCoilDimerization
  tetramerFormationClosed : P.tetramerFormation
  unitLengthFilamentAssemblyClosed : P.unitLengthFilamentAssembly
  filamentAnnealingClosed : P.filamentAnnealing
  dynamicTurnoverClosed : P.dynamicTurnover

def FilamentAssemblyClosed (P : FilamentAssemblyPackage) : Prop :=
  P.monomerPolymerization ∧ P.coiledCoilDimerization ∧ P.tetramerFormation ∧
  P.unitLengthFilamentAssembly ∧ P.filamentAnnealing ∧ P.dynamicTurnover

theorem filament_assembly_closed_from_evidence (P : FilamentAssemblyPackage) (E : FilamentAssemblyEvidence P) :
    FilamentAssemblyClosed P := by
  exact And.intro E.monomerPolymerizationClosed
    (And.intro E.coiledCoilDimerizationClosed
      (And.intro E.tetramerFormationClosed
        (And.intro E.unitLengthFilamentAssemblyClosed
          (And.intro E.filamentAnnealingClosed E.dynamicTurnoverClosed))))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse