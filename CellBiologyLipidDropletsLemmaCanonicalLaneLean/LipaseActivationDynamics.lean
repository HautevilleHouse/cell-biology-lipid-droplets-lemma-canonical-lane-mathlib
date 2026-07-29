import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyLipidDropletsLemmaCanonicalLaneLean.LipidMetabolismPDE

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipaseActivationDynamicsPackage {P : LipidDropletCellPackage}
    (F : LipidMetabolismPDEPackage P) where
  hormoneSensitivity : Prop
  phosphorylationCascade : Prop
  feedbackLoop : Prop
  activationThreshold : Prop
  timeScaleSeparation : Prop

structure LipaseActivationDynamicsEvidence {P : LipidDropletCellPackage}
    {F : LipidMetabolismPDEPackage P}
    (A : LipaseActivationDynamicsPackage F) where
  hormoneSensitivityClosed : A.hormoneSensitivity
  phosphorylationCascadeClosed : A.phosphorylationCascade
  feedbackLoopClosed : A.feedbackLoop
  activationThresholdClosed : A.activationThreshold
  timeScaleSeparationClosed : A.timeScaleSeparation

def LipaseActivationDynamicsClosed {P : LipidDropletCellPackage}
    {F : LipidMetabolismPDEPackage P}
    (A : LipaseActivationDynamicsPackage F) : Prop :=
  A.hormoneSensitivity ∧ A.phosphorylationCascade ∧
  A.feedbackLoop ∧ A.activationThreshold ∧ A.timeScaleSeparation

theorem lipase_activation_dynamics_closed_from_evidence
    {P : LipidDropletCellPackage} {F : LipidMetabolismPDEPackage P}
    (A : LipaseActivationDynamicsPackage F)
    (E : LipaseActivationDynamicsEvidence A) : LipaseActivationDynamicsClosed A := by
  exact And.intro E.hormoneSensitivityClosed
    (And.intro E.phosphorylationCascadeClosed
      (And.intro E.feedbackLoopClosed
        (And.intro E.activationThresholdClosed E.timeScaleSeparationClosed)))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse