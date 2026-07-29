import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidDropletMetabolismPackage where
  triacylglycerolSynthesis : Prop
  lipolysisActivated : Prop
  triacylglycerolSynthesisTerm : triacylglycerolSynthesis
  lipolysisActivatedTerm : lipolysisActivated

structure LipidDropletMetabolismEvidence (M : LipidDropletMetabolismPackage) where
  triacylglycerolSynthesisClosed : M.triacylglycerolSynthesis
  lipolysisActivatedClosed : M.lipolysisActivated

def LipidDropletMetabolismClosed (M : LipidDropletMetabolismPackage) : Prop :=
  M.triacylglycerolSynthesis ∧ M.lipolysisActivated

theorem lipid_droplet_metabolism_closed_from_evidence
    (M : LipidDropletMetabolismPackage)
    (E : LipidDropletMetabolismEvidence M) : LipidDropletMetabolismClosed M := by
  exact And.intro E.triacylglycerolSynthesisClosed E.lipolysisActivatedClosed

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse
