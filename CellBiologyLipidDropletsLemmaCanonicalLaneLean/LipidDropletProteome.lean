import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidDropletProteomePackage where
  perilipinFamily : Prop
  lipaseRecruitment : Prop
  membraneTrafficking : Prop
  signalingScaffold : Prop

structure LipidDropletProteomeEvidence (P : LipidDropletProteomePackage) where
  perilipinFamilyClosed : P.perilipinFamily
  lipaseRecruitmentClosed : P.lipaseRecruitment
  membraneTraffickingClosed : P.membraneTrafficking
  signalingScaffoldClosed : P.signalingScaffold

def LipidDropletProteomeClosed (P : LipidDropletProteomePackage) : Prop :=
  P.perilipinFamily ∧ P.lipaseRecruitment ∧ P.membraneTrafficking ∧ P.signalingScaffold

theorem lipid_droplet_proteome_closed_from_evidence (P : LipidDropletProteomePackage) (E : LipidDropletProteomeEvidence P) :
    LipidDropletProteomeClosed P := by
  exact And.intro E.perilipinFamilyClosed
    (And.intro E.lipaseRecruitmentClosed
      (And.intro E.membraneTraffickingClosed E.signalingScaffoldClosed))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse