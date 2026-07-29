import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.IntermediateFilamentAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.intermediateFilamentAssembly ∧ A.object.mechanicalIntegrity

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse