import canonicalLaneMathlib.AdmissibleClass
import CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure NetworkAssemblyPackage where
  tetramerFormation : Prop
  unitLengthFilamentFormation : Prop
  filamentElongation : Prop
  lateralAssociation : Prop

structure NetworkAssemblyEvidence (N : NetworkAssemblyPackage) where
  tetramerFormationClosed : N.tetramerFormation
  unitLengthFilamentFormationClosed : N.unitLengthFilamentFormation
  filamentElongationClosed : N.filamentElongation
  lateralAssociationClosed : N.lateralAssociation

def NetworkAssemblyClosed (N : NetworkAssemblyPackage) : Prop :=
  N.tetramerFormation ∧ N.unitLengthFilamentFormation ∧
  N.filamentElongation ∧ N.lateralAssociation

theorem network_assembly_closed_from_evidence (N : NetworkAssemblyPackage)
    (E : NetworkAssemblyEvidence N) : NetworkAssemblyClosed N := by
  exact And.intro E.tetramerFormationClosed
    (And.intro E.unitLengthFilamentFormationClosed
      (And.intro E.filamentElongationClosed E.lateralAssociationClosed))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse