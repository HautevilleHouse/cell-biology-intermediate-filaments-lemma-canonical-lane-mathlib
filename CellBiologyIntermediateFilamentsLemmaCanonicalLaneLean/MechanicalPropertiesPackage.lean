import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure MechanicalPropertiesPackage where
  tensileStrength : Prop
  elasticityModulus : Prop
  viscoelasticResponse : Prop
  strainHardening : Prop
  networkStiffness : Prop

structure MechanicalPropertiesEvidence (M : MechanicalPropertiesPackage) where
  tensileStrengthClosed : M.tensileStrength
  elasticityModulusClosed : M.elasticityModulus
  viscoelasticResponseClosed : M.viscoelasticResponse
  strainHardeningClosed : M.strainHardening
  networkStiffnessClosed : M.networkStiffness

def MechanicalPropertiesClosed (M : MechanicalPropertiesPackage) : Prop :=
  M.tensileStrength ∧ M.elasticityModulus ∧ M.viscoelasticResponse ∧ M.strainHardening ∧ M.networkStiffness

theorem mechanical_properties_closed_from_evidence (M : MechanicalPropertiesPackage) (E : MechanicalPropertiesEvidence M) :
    MechanicalPropertiesClosed M := by
  exact And.intro E.tensileStrengthClosed (And.intro E.elasticityModulusClosed (And.intro E.viscoelasticResponseClosed (And.intro E.strainHardeningClosed E.networkStiffnessClosed)))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse