import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyLipidDropletsLemmaCanonicalLaneLean.LipaseActivationDynamics

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure DropletFormationRegulationPackage {P : LipidDropletCellPackage}
    {F : LipidMetabolismPDEPackage P}
    (A : LipaseActivationDynamicsPackage F) where
  nucelationMechanism : Prop
  growthKinetics : Prop
  sizeDistribution : Prop
  coatProteinDynamics : Prop
  lipidTransfer : Prop

structure DropletFormationRegulationEvidence {P : LipidDropletCellPackage}
    {F : LipidMetabolismPDEPackage P}
    {A : LipaseActivationDynamicsPackage F}
    (D : DropletFormationRegulationPackage A) where
  nucelationMechanismClosed : D.nucelationMechanism
  growthKineticsClosed : D.growthKinetics
  sizeDistributionClosed : D.sizeDistribution
  coatProteinDynamicsClosed : D.coatProteinDynamics
  lipidTransferClosed : D.lipidTransfer

def DropletFormationRegulationClosed {P : LipidDropletCellPackage}
    {F : LipidMetabolismPDEPackage P}
    {A : LipaseActivationDynamicsPackage F}
    (D : DropletFormationRegulationPackage A) : Prop :=
  D.nucelationMechanism ∧ D.growthKinetics ∧
  D.sizeDistribution ∧ D.coatProteinDynamics ∧ D.lipidTransfer

theorem droplet_formation_regulation_closed_from_evidence
    {P : LipidDropletCellPackage} {F : LipidMetabolismPDEPackage P}
    {A : LipaseActivationDynamicsPackage F}
    (D : DropletFormationRegulationPackage A)
    (E : DropletFormationRegulationEvidence D) : DropletFormationRegulationClosed D := by
  exact And.intro E.nucelationMechanismClosed
    (And.intro E.growthKineticsClosed
      (And.intro E.sizeDistributionClosed
        (And.intro E.coatProteinDynamicsClosed E.lipidTransferClosed)))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse