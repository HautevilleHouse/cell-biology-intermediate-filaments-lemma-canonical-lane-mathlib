import canonicalLaneMathlib.AdmissibleClass
import CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure CellSignalingPackage where
  phosphorylationRegulation : Prop
  signalingScaffold : Prop
  mechanicalSignalTransduction : Prop
  feedbackLoop : Prop

structure CellSignalingEvidence (S : CellSignalingPackage) where
  phosphorylationRegulationClosed : S.phosphorylationRegulation
  signalingScaffoldClosed : S.signalingScaffold
  mechanicalSignalTransductionClosed : S.mechanicalSignalTransduction
  feedbackLoopClosed : S.feedbackLoop

def CellSignalingClosed (S : CellSignalingPackage) : Prop :=
  S.phosphorylationRegulation ∧ S.signalingScaffold ∧
  S.mechanicalSignalTransduction ∧ S.feedbackLoop

theorem cell_signaling_closed_from_evidence (S : CellSignalingPackage)
    (E : CellSignalingEvidence S) : CellSignalingClosed S := by
  exact And.intro E.phosphorylationRegulationClosed
    (And.intro E.signalingScaffoldClosed
      (And.intro E.mechanicalSignalTransductionClosed E.feedbackLoopClosed))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse