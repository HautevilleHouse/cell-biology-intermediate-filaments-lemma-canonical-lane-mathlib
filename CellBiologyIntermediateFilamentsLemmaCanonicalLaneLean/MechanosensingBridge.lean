import HautevilleHouse.CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.CytoskeletalNetworkDynamics

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure MechanosensingInput where
  extracellularMatrix : Prop
  cellCellJunctions : Prop
  appliedStrain : Prop

structure ForceTransduction where
  integrinAdhesion : Prop
  cadherinAdhesion : Prop
  actinIFCrosslinking : Prop

structure MechanosensingPackage {A : AssemblyPackage} {D : DynamicsPackage A} (M : MechanosensingInput) where
  forceSensing : Prop
  signalTransduction : Prop
  geneRegulation : Prop
  forceTransductionEvidence : ForceTransduction
  forceSensingClosed : forceSensing
  signalTransductionClosed : signalTransduction
  geneRegulationClosed : geneRegulation

structure MechanosensingEvidence {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} (P : MechanosensingPackage M) where
  forceSensingClosed : P.forceSensing
  signalTransductionClosed : P.signalTransduction
  geneRegulationClosed : P.geneRegulation

def MechanosensingClosed {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} (P : MechanosensingPackage M) : Prop :=
  P.forceSensing ∧ P.signalTransduction ∧ P.geneRegulation

theorem mechanosensing_closed_from_evidence {A : AssemblyPackage} {D : DynamicsPackage A}
    {M : MechanosensingInput} (P : MechanosensingPackage M) (E : MechanosensingEvidence P) :
    MechanosensingClosed P := by
  exact And.intro E.forceSensingClosed
    (And.intro E.signalTransductionClosed E.geneRegulationClosed)

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse