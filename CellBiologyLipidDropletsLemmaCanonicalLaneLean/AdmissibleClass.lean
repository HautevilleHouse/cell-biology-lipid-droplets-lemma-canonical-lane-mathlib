import CellBiologyLipidDropletsLemmaCanonicalLaneLean.CellBiologyLipidDropletsLemmaCanonicalLaneLean
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : LipidDropletAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LipidDropletWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse