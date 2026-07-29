import HautevilleHouse.CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.MechanosensingBridge

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure LaminComponents where
  laminA : Prop
  laminB : Prop
  laminC : Prop
  farnesylation : Prop

structure NuclearPoreComplex where
  nup153 : Prop
  sunProteins : Prop
  nesprins : Prop

structure NucleoskeletonPackage {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} (P : MechanosensingPackage M) where
  laminNetwork : LaminComponents
  poreConnection : NuclearPoreComplex
  chromatinTethering : Prop
  laminNetworkAssembled : Prop
  poreConnectionEstablished : Prop
  chromatinTetheringClosed : chromatinTethering

structure NucleoskeletonEvidence {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} {P : MechanosensingPackage M}
    (N : NucleoskeletonPackage P) where
  laminNetworkAssembledClosed : N.laminNetworkAssembled
  poreConnectionEstablishedClosed : N.poreConnectionEstablished
  chromatinTetheringClosed : N.chromatinTetheringClosed

def NucleoskeletonClosed {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} {P : MechanosensingPackage M}
    (N : NucleoskeletonPackage P) : Prop :=
  N.laminNetworkAssembled ∧ N.poreConnectionEstablished ∧ N.chromatinTetheringClosed

theorem nucleoskeleton_closed_from_evidence {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} {P : MechanosensingPackage M}
    (N : NucleoskeletonPackage P) (E : NucleoskeletonEvidence N) :
    NucleoskeletonClosed N := by
  exact And.intro E.laminNetworkAssembledClosed
    (And.intro E.poreConnectionEstablishedClosed E.chromatinTetheringClosed)

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse