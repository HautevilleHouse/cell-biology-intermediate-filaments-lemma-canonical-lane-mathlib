import HautevilleHouse.CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.MechanicalProperties

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure RegulationAndDynamicsPackage where
  phosphorylationRegulation : Prop
  subunitExchange : Prop
  filamentTransport : Prop
  interactionWithOtherCytoskeletalNetworks : Prop
  assemblyDisassemblyCycle : Prop

structure RegulationAndDynamicsEvidence (P : RegulationAndDynamicsPackage) where
  phosphorylationRegulationClosed : P.phosphorylationRegulation
  subunitExchangeClosed : P.subunitExchange
  filamentTransportClosed : P.filamentTransport
  interactionWithOtherCytoskeletalNetworksClosed : P.interactionWithOtherCytoskeletalNetworks
  assemblyDisassemblyCycleClosed : P.assemblyDisassemblyCycle

def RegulationAndDynamicsClosed (P : RegulationAndDynamicsPackage) : Prop :=
  P.phosphorylationRegulation ∧ P.subunitExchange ∧ P.filamentTransport ∧
  P.interactionWithOtherCytoskeletalNetworks ∧ P.assemblyDisassemblyCycle

theorem regulation_and_dynamics_closed_from_evidence (P : RegulationAndDynamicsPackage) (E : RegulationAndDynamicsEvidence P) :
    RegulationAndDynamicsClosed P := by
  exact And.intro E.phosphorylationRegulationClosed
    (And.intro E.subunitExchangeClosed
      (And.intro E.filamentTransportClosed
        (And.intro E.interactionWithOtherCytoskeletalNetworksClosed E.assemblyDisassemblyCycleClosed)))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse