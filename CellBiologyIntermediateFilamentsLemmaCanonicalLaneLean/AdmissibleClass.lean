import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure CellBiologyAdmittedObject where
  cellType : Type
  filamentSystem : Prop
  lemmaStatement : Prop

structure CellBiologyAdmissibleClass where
  object : CellBiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CellBiologyAdmissibleClass) : Prop :=
  A.object.lemmaStatement ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse
