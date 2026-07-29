import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidDropletDynamicsPackage where
  dropletMotility : Prop
  fusionFission : Prop
  lipidTransfer : Prop
  autophagicTurnover : Prop

structure LipidDropletDynamicsEvidence (D : LipidDropletDynamicsPackage) where
  dropletMotilityClosed : D.dropletMotility
  fusionFissionClosed : D.fusionFission
  lipidTransferClosed : D.lipidTransfer
  autophagicTurnoverClosed : D.autophagicTurnover

def LipidDropletDynamicsClosed (D : LipidDropletDynamicsPackage) : Prop :=
  D.dropletMotility ∧ D.fusionFission ∧ D.lipidTransfer ∧ D.autophagicTurnover

theorem lipid_droplet_dynamics_closed_from_evidence (D : LipidDropletDynamicsPackage) (E : LipidDropletDynamicsEvidence D) :
    LipidDropletDynamicsClosed D := by
  exact And.intro E.dropletMotilityClosed
    (And.intro E.fusionFissionClosed
      (And.intro E.lipidTransferClosed E.autophagicTurnoverClosed))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse