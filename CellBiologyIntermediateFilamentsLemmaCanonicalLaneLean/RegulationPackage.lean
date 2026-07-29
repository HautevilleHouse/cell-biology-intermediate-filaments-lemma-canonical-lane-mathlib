import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure RegulationPackage where
  phosphorylationControl : Prop
  subunitExchange : Prop
  disassemblyPathway : Prop
  assemblyDisassemblyCycle : Prop
  cellularLocalization : Prop

structure RegulationEvidence (R : RegulationPackage) where
  phosphorylationControlClosed : R.phosphorylationControl
  subunitExchangeClosed : R.subunitExchange
  disassemblyPathwayClosed : R.disassemblyPathway
  assemblyDisassemblyCycleClosed : R.assemblyDisassemblyCycle
  cellularLocalizationClosed : R.cellularLocalization

def RegulationClosed (R : RegulationPackage) : Prop :=
  R.phosphorylationControl ∧ R.subunitExchange ∧ R.disassemblyPathway ∧ R.assemblyDisassemblyCycle ∧ R.cellularLocalization

theorem regulation_closed_from_evidence (R : RegulationPackage) (E : RegulationEvidence R) :
    RegulationClosed R := by
  exact And.intro E.phosphorylationControlClosed (And.intro E.subunitExchangeClosed (And.intro E.disassemblyPathwayClosed (And.intro E.assemblyDisassemblyCycleClosed E.cellularLocalizationClosed)))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse