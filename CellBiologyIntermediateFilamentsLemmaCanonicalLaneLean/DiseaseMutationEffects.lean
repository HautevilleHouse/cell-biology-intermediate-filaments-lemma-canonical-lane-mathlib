import HautevilleHouse.CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.NuclearEnvelopeConnection

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure IFMutation where
  gene : String
  mutationType : String
  domainAffected : String
  phenotype : String

structure PathologicalAlteration where
  assemblyDefect : Prop
  mechanicalFragility : Prop
  nuclearAbnormality : Prop
  signalingDysregulation : Prop

structure DiseasePackage {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} {P : MechanosensingPackage M}
    {N : NucleoskeletonPackage P} where
  mutations : List IFMutation
  alterations : PathologicalAlteration
  mutationMapped : Prop
  alterationEvidence : alterations
  mutationMappedClosed : mutationMapped

structure DiseaseEvidence {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} {P : MechanosensingPackage M}
    {N : NucleoskeletonPackage P} (Dis : DiseasePackage) where
  mutationMappedClosed : Dis.mutationMapped
  alterationEvidenceClosed : Dis.alterationEvidence

def DiseaseClosed {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} {P : MechanosensingPackage M}
    {N : NucleoskeletonPackage P} (Dis : DiseasePackage) : Prop :=
  Dis.mutationMapped ∧ Dis.alterationEvidence

theorem disease_closed_from_evidence {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} {P : MechanosensingPackage M}
    {N : NucleoskeletonPackage P} (Dis : DiseasePackage) (E : DiseaseEvidence Dis) :
    DiseaseClosed Dis := by
  exact And.intro E.mutationMappedClosed E.alterationEvidenceClosed

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse