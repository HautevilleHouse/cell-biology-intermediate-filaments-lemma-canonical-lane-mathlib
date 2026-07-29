import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure DiseaseMutationsPackage where
  keratinMutation : Prop
  laminMutation : Prop
  neurofilamentMutation : Prop
  phenotypicManifestation : Prop

structure DiseaseMutationsEvidence (P : DiseaseMutationsPackage) where
  keratinMutationClosed : P.keratinMutation
  laminMutationClosed : P.laminMutation
  neurofilamentMutationClosed : P.neurofilamentMutation
  phenotypicManifestationClosed : P.phenotypicManifestation

def DiseaseMutationsClosed (P : DiseaseMutationsPackage) : Prop :=
  P.keratinMutation ∧ P.laminMutation ∧ P.neurofilamentMutation ∧ P.phenotypicManifestation

theorem disease_mutations_closed_from_evidence
    (P : DiseaseMutationsPackage)
    (E : DiseaseMutationsEvidence P) :
    DiseaseMutationsClosed P := by
  exact And.intro E.keratinMutationClosed
    (And.intro E.laminMutationClosed
      (And.intro E.neurofilamentMutationClosed E.phenotypicManifestationClosed))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse