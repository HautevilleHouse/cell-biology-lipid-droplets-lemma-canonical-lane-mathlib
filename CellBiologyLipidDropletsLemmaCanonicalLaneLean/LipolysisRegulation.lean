import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipolysisRegulationPackage where
  hormoneSensitiveLipaseActivation : Prop
  adiposeTriglycerideLipasePathway : Prop
  perilipinPhosphorylation : Prop
  fattyAcidReleaseControl : Prop

structure LipolysisRegulationEvidence (L : LipolysisRegulationPackage) where
  hormoneSensitiveLipaseActivationClosed : L.hormoneSensitiveLipaseActivation
  adiposeTriglycerideLipasePathwayClosed : L.adiposeTriglycerideLipasePathway
  perilipinPhosphorylationClosed : L.perilipinPhosphorylation
  fattyAcidReleaseControlClosed : L.fattyAcidReleaseControl

def LipolysisRegulationClosed (L : LipolysisRegulationPackage) : Prop :=
  L.hormoneSensitiveLipaseActivation ∧ L.adiposeTriglycerideLipasePathway ∧ L.perilipinPhosphorylation ∧ L.fattyAcidReleaseControl

theorem lipolysis_regulation_closed_from_evidence (L : LipolysisRegulationPackage) (E : LipolysisRegulationEvidence L) :
    LipolysisRegulationClosed L := by
  exact And.intro E.hormoneSensitiveLipaseActivationClosed (And.intro E.adiposeTriglycerideLipasePathwayClosed (And.intro E.perilipinPhosphorylationClosed E.fattyAcidReleaseControlClosed))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse