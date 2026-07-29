import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

def bridgeClosed (A : LipidDropletAdmissibleClass) : Prop :=
  LipidDropletBiogenesisClosed A.object.biogenesisPackage ∧
  LipidDropletProteomeClosed A.object.proteomePackage ∧
  LipidDropletMetabolismClosed A.object.metabolismPackage ∧
  LipidDropletDynamicsClosed A.object.dynamicsPackage ∧
  LipidDropletPathologyClosed A.object.pathologyPackage

theorem bridge_from_admissible_class (A : LipidDropletAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse