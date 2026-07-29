import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyLipidDropletsLemmaCanonicalLaneLean.LipidDropletCellPackage

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidMetabolismPDEPackage (P : LipidDropletCellPackage) where
  timeParameter : Type u
  concentrationField : Type v
  diffusionEquation : Prop
  reactionTerms : Prop
  boundaryConditions : Prop
  fluxConservation : Prop

structure LipidMetabolismPDEEvidence {P : LipidDropletCellPackage}
    (F : LipidMetabolismPDEPackage P) where
  diffusionEquationClosed : F.diffusionEquation
  reactionTermsClosed : F.reactionTerms
  boundaryConditionsClosed : F.boundaryConditions
  fluxConservationClosed : F.fluxConservation

def LipidMetabolismPDEClosed {P : LipidDropletCellPackage}
    (F : LipidMetabolismPDEPackage P) : Prop :=
  F.diffusionEquation ∧ F.reactionTerms ∧
  F.boundaryConditions ∧ F.fluxConservation

theorem lipid_metabolism_pde_closed_from_evidence
    {P : LipidDropletCellPackage} (F : LipidMetabolismPDEPackage P)
    (E : LipidMetabolismPDEEvidence F) : LipidMetabolismPDEClosed F := by
  exact And.intro E.diffusionEquationClosed
    (And.intro E.reactionTermsClosed
      (And.intro E.boundaryConditionsClosed E.fluxConservationClosed))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse