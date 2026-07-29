import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidDropletBiogenesisPackage where
  seipinRecruited : Prop
  nascentDropletEmerged : Prop
  seipinRecruitedTerm : seipinRecruited
  nascentDropletEmergedTerm : nascentDropletEmerged

structure LipidDropletBiogenesisEvidence (P : LipidDropletBiogenesisPackage) where
  seipinRecruitedClosed : P.seipinRecruited
  nascentDropletEmergedClosed : P.nascentDropletEmerged

def LipidDropletBiogenesisClosed (P : LipidDropletBiogenesisPackage) : Prop :=
  P.seipinRecruited ∧ P.nascentDropletEmerged

theorem lipid_droplet_biogenesis_closed_from_evidence
    (P : LipidDropletBiogenesisPackage)
    (E : LipidDropletBiogenesisEvidence P) : LipidDropletBiogenesisClosed P := by
  exact And.intro E.seipinRecruitedClosed E.nascentDropletEmergedClosed

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse
