import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure CellAdhesionPackage where
  hemidesmosomeAttachment : Prop
  desmosomeJunction : Prop
  cellMatrixAdhesion : Prop
  signalingPathwayActivation : Prop

structure CellAdhesionEvidence (P : CellAdhesionPackage) where
  hemidesmosomeAttachmentClosed : P.hemidesmosomeAttachment
  desmosomeJunctionClosed : P.desmosomeJunction
  cellMatrixAdhesionClosed : P.cellMatrixAdhesion
  signalingPathwayActivationClosed : P.signalingPathwayActivation

def CellAdhesionClosed (P : CellAdhesionPackage) : Prop :=
  P.hemidesmosomeAttachment ∧ P.desmosomeJunction ∧ P.cellMatrixAdhesion ∧ P.signalingPathwayActivation

theorem cell_adhesion_closed_from_evidence
    (P : CellAdhesionPackage)
    (E : CellAdhesionEvidence P) :
    CellAdhesionClosed P := by
  exact And.intro E.hemidesmosomeAttachmentClosed
    (And.intro E.desmosomeJunctionClosed
      (And.intro E.cellMatrixAdhesionClosed E.signalingPathwayActivationClosed))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse