import HautevilleHouse.CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

def ConstrainedCellBiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_biology_endgame (A : AdmissibleClass) :
    ConstrainedCellBiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse