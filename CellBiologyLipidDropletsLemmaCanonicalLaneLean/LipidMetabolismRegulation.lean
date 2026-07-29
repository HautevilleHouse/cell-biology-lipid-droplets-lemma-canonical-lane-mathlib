import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidMetabolismRegulationPackage where
  lipogenesisPathway : Prop
  lipolysisPathway : Prop
  fattyAcidOxidation : Prop
  transcriptionControl : Prop

structure LipidMetabolismRegulationEvidence (M : LipidMetabolismRegulationPackage) where
  lipogenesisPathwayClosed : M.lipogenesisPathway
  lipolysisPathwayClosed : M.lipolysisPathway
  fattyAcidOxidationClosed : M.fattyAcidOxidation
  transcriptionControlClosed : M.transcriptionControl

def LipidMetabolismRegulationClosed (M : LipidMetabolismRegulationPackage) : Prop :=
  M.lipogenesisPathway ∧ M.lipolysisPathway ∧ M.fattyAcidOxidation ∧ M.transcriptionControl

theorem lipid_metabolism_regulation_closed_from_evidence (M : LipidMetabolismRegulationPackage)
    (E : LipidMetabolismRegulationEvidence M) : LipidMetabolismRegulationClosed M := by
  exact And.intro E.lipogenesisPathwayClosed
    (And.intro E.lipolysisPathwayClosed
      (And.intro E.fattyAcidOxidationClosed E.transcriptionControlClosed))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse