import HautevilleHouse.CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.FilamentAssembly

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure MechanicalPropertiesPackage where
  tensileStrength : Prop
  elasticityModulus : Prop
  networkViscoelasticity : Prop
  strainStiffening : Prop
  resilienceToDeformation : Prop

structure MechanicalPropertiesEvidence (P : MechanicalPropertiesPackage) where
  tensileStrengthClosed : P.tensileStrength
  elasticityModulusClosed : P.elasticityModulus
  networkViscoelasticityClosed : P.networkViscoelasticity
  strainStiffeningClosed : P.strainStiffening
  resilienceToDeformationClosed : P.resilienceToDeformation

def MechanicalPropertiesClosed (P : MechanicalPropertiesPackage) : Prop :=
  P.tensileStrength ∧ P.elasticityModulus ∧ P.networkViscoelasticity ∧
  P.strainStiffening ∧ P.resilienceToDeformation

theorem mechanical_properties_closed_from_evidence (P : MechanicalPropertiesPackage) (E : MechanicalPropertiesEvidence P) :
    MechanicalPropertiesClosed P := by
  exact And.intro E.tensileStrengthClosed
    (And.intro E.elasticityModulusClosed
      (And.intro E.networkViscoelasticityClosed
        (And.intro E.strainStiffeningClosed E.resilienceToDeformationClosed)))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse