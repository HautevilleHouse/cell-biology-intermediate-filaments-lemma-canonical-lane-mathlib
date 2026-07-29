import canonicalLaneMathlib.AdmissibleClass
import CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean

structure CellMigrationPackage where
  lamellipodiaFormation : Prop
  focalAdhesionDynamics : Prop
  nucleusPositioning : Prop
  migrationPolarity : Prop

structure CellMigrationEvidence (C : CellMigrationPackage) where
  lamellipodiaFormationClosed : C.lamellipodiaFormation
  focalAdhesionDynamicsClosed : C.focalAdhesionDynamics
  nucleusPositioningClosed : C.nucleusPositioning
  migrationPolarityClosed : C.migrationPolarity

def CellMigrationClosed (C : CellMigrationPackage) : Prop :=
  C.lamellipodiaFormation ∧ C.focalAdhesionDynamics ∧
  C.nucleusPositioning ∧ C.migrationPolarity

theorem cell_migration_closed_from_evidence (C : CellMigrationPackage)
    (E : CellMigrationEvidence C) : CellMigrationClosed C := by
  exact And.intro E.lamellipodiaFormationClosed
    (And.intro E.focalAdhesionDynamicsClosed
      (And.intro E.nucleusPositioningClosed E.migrationPolarityClosed))

end CellBiologyIntermediateFilamentsLemmaCanonicalLaneLean
end HautevilleHouse