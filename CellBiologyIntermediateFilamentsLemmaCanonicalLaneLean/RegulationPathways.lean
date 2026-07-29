import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure RegulationPathwaysPackage where
  phosphorylationRegulation : Prop
  ubiquitinationDegradation : Prop
  geneExpressionControl : Prop
  assemblyDisassemblyCycle : Prop

structure RegulationPathwaysEvidence (P : RegulationPathwaysPackage) where
  phosphorylationRegulationClosed : P.phosphorylationRegulation
  ubiquitinationDegradationClosed : P.ubiquitinationDegradation
  geneExpressionControlClosed : P.geneExpressionControl
  assemblyDisassemblyCycleClosed : P.assemblyDisassemblyCycle

def RegulationPathwaysClosed (P : RegulationPathwaysPackage) : Prop :=
  P.phosphorylationRegulation ∧ P.ubiquitinationDegradation ∧ P.geneExpressionControl ∧ P.assemblyDisassemblyCycle

theorem regulation_pathways_closed_from_evidence
    (P : RegulationPathwaysPackage)
    (E : RegulationPathwaysEvidence P) :
    RegulationPathwaysClosed P := by
  exact And.intro E.phosphorylationRegulationClosed
    (And.intro E.ubiquitinationDegradationClosed
      (And.intro E.geneExpressionControlClosed E.assemblyDisassemblyCycleClosed))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse