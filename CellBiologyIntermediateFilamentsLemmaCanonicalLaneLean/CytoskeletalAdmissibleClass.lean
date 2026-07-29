import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure CytoskeletalAdmittedObject where
  cellType : Type
  filamentNetwork : Type
  intermediateFilamentPresent : Prop
  networkConnectivity : Prop
  mechanicalIntegrity : Prop
  conclusion : mechanicalIntegrity

structure AdmissibleClass where
  object : CytoskeletalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CytoskeletalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CytoskeletalWitnessClosed (O : CytoskeletalAdmittedObject) : Prop :=
  O.mechanicalIntegrity

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse