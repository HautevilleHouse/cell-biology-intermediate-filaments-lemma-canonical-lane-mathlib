import canonicalLaneMathlib.AdmissibleClass
import CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure MechanicalPropertiesPackage where
  tensileStrength : Prop
  elasticity : Prop
  viscoelasticity : Prop
  crosslinkingDynamics : Prop

structure MechanicalPropertiesEvidence (M : MechanicalPropertiesPackage) where
  tensileStrengthClosed : M.tensileStrength
  elasticityClosed : M.elasticity
  viscoelasticityClosed : M.viscoelasticity
  crosslinkingDynamicsClosed : M.crosslinkingDynamics

def MechanicalPropertiesClosed (M : MechanicalPropertiesPackage) : Prop :=
  M.tensileStrength ∧ M.elasticity ∧
  M.viscoelasticity ∧ M.crosslinkingDynamics

theorem mechanical_properties_closed_from_evidence (M : MechanicalPropertiesPackage)
    (E : MechanicalPropertiesEvidence M) : MechanicalPropertiesClosed M := by
  exact And.intro E.tensileStrengthClosed
    (And.intro E.elasticityClosed
      (And.intro E.viscoelasticityClosed E.crosslinkingDynamicsClosed))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse