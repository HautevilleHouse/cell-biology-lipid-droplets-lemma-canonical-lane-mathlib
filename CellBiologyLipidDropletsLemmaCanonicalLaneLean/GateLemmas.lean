import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

def gateClosed (A : LipidDropletAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : LipidDropletAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse