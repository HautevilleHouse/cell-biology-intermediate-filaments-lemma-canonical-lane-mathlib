import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure FilamentAdmittedObject where
  cellType : Type
  filamentNetwork : Type
  assemblyCompleteness : Prop
  mechanicalIntegrity : Prop
  conclusion : assemblyCompleteness ∧ mechanicalIntegrity

structure AdmissibleClass where
  object : FilamentAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse