import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure DropletProteomeOrganizationPackage where
  perilipinCoat : Prop
  enzymeRecruitment : Prop
  lipidMetabolismEnzymes : Prop
  signalingProteins : Prop

structure DropletProteomeOrganizationEvidence (P : DropletProteomeOrganizationPackage) where
  perilipinCoatClosed : P.perilipinCoat
  enzymeRecruitmentClosed : P.enzymeRecruitment
  lipidMetabolismEnzymesClosed : P.lipidMetabolismEnzymes
  signalingProteinsClosed : P.signalingProteins

def DropletProteomeOrganizationClosed (P : DropletProteomeOrganizationPackage) : Prop :=
  P.perilipinCoat ∧ P.enzymeRecruitment ∧ P.lipidMetabolismEnzymes ∧ P.signalingProteins

theorem droplet_proteome_organization_closed_from_evidence (P : DropletProteomeOrganizationPackage)
    (E : DropletProteomeOrganizationEvidence P) : DropletProteomeOrganizationClosed P := by
  exact And.intro E.perilipinCoatClosed
    (And.intro E.enzymeRecruitmentClosed
      (And.intro E.lipidMetabolismEnzymesClosed E.signalingProteinsClosed))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse