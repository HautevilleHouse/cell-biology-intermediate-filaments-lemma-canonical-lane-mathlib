import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

def ConstrainedIntermediateFilamentsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_intermediate_filaments_endgame (A : AdmissibleClass) :
    ConstrainedIntermediateFilamentsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse