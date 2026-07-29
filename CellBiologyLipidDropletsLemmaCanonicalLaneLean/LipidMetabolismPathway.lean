import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidMetabolismPathwayPackage where
  fattyAcidSynthesis : Prop
  triacylglycerolSynthesis : Prop
  lipolysisRegulation : Prop
  betaOxidation : Prop

structure LipidMetabolismPathwayEvidence (M : LipidMetabolismPathwayPackage) where
  fattyAcidSynthesisClosed : M.fattyAcidSynthesis
  triacylglycerolSynthesisClosed : M.triacylglycerolSynthesis
  lipolysisRegulationClosed : M.lipolysisRegulation
  betaOxidationClosed : M.betaOxidation

def LipidMetabolismPathwayClosed (M : LipidMetabolismPathwayPackage) : Prop :=
  M.fattyAcidSynthesis ∧ M.triacylglycerolSynthesis ∧ M.lipolysisRegulation ∧ M.betaOxidation

theorem lipid_metabolism_pathway_closed_from_evidence (M : LipidMetabolismPathwayPackage) (E : LipidMetabolismPathwayEvidence M) :
    LipidMetabolismPathwayClosed M := by
  exact And.intro E.fattyAcidSynthesisClosed
    (And.intro E.triacylglycerolSynthesisClosed
      (And.intro E.lipolysisRegulationClosed E.betaOxidationClosed))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse