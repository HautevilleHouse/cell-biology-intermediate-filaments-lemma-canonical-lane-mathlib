import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure CellBiologyAdmittedObject where
  cell : Type
  cytoskeleton : Type
  filamentNetwork : Type
  intermediateFilamentAssembly : Prop
  mechanicalIntegrity : Prop
  conclusion : intermediateFilamentAssembly ∧ mechanicalIntegrity

structure AdmissibleClass where
  object : CellBiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.intermediateFilamentAssembly ∧ A.object.mechanicalIntegrity) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse