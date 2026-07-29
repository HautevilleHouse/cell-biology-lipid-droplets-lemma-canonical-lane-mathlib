import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidDropletFormationPackage where
  triglycerideSynthesis : Prop
  dropletNucleation : Prop
  perilipinCoating : Prop
  dynamicsRegulation : Prop

structure LipidDropletFormationEvidence (P : LipidDropletFormationPackage) where
  triglycerideSynthesisClosed : P.triglycerideSynthesis
  dropletNucleationClosed : P.dropletNucleation
  perilipinCoatingClosed : P.perilipinCoating
  dynamicsRegulationClosed : P.dynamicsRegulation

def LipidDropletFormationClosed (P : LipidDropletFormationPackage) : Prop :=
  P.triglycerideSynthesis ∧ P.dropletNucleation ∧ P.perilipinCoating ∧ P.dynamicsRegulation

theorem lipid_droplet_formation_closed_from_evidence (P : LipidDropletFormationPackage) (E : LipidDropletFormationEvidence P) :
    LipidDropletFormationClosed P := by
  exact And.intro E.triglycerideSynthesisClosed (And.intro E.dropletNucleationClosed (And.intro E.perilipinCoatingClosed E.dynamicsRegulationClosed))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse