import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyLipidDropletsLemmaCanonicalLaneLean.DropletFormationRegulation

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedLipidDropletClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lipid_droplet_endgame (A : AdmissibleClass) :
    ConstrainedLipidDropletClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse