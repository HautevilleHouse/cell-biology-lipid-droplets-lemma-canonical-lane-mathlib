import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidDropletCellPackage where
  cellType : Type u
  vesicle : Type v
  dropletMembraneComposition : Prop
  lipidMetabolismFlux : Prop
  storageRegulation : Prop
  lipaseActivation : Prop
  dropletFormationRegulation : Prop

structure LipidDropletCellEvidence (P : LipidDropletCellPackage) where
  dropletMembraneCompositionClosed : P.dropletMembraneComposition
  lipidMetabolismFluxClosed : P.lipidMetabolismFlux
  storageRegulationClosed : P.storageRegulation
  lipaseActivationClosed : P.lipaseActivation
  dropletFormationRegulationClosed : P.dropletFormationRegulation

def LipidDropletCellClosed (P : LipidDropletCellPackage) : Prop :=
  P.dropletMembraneComposition ∧ P.lipidMetabolismFlux ∧
  P.storageRegulation ∧ P.lipaseActivation ∧
  P.dropletFormationRegulation

theorem lipid_droplet_cell_closed_from_evidence (P : LipidDropletCellPackage)
    (E : LipidDropletCellEvidence P) : LipidDropletCellClosed P := by
  exact And.intro E.dropletMembraneCompositionClosed
    (And.intro E.lipidMetabolismFluxClosed
      (And.intro E.storageRegulationClosed
        (And.intro E.lipaseActivationClosed E.dropletFormationRegulationClosed)))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse