import canonicalLaneMathlib.AdmissibleClass
import CellBiologyLipidDropletsLemmaCanonicalLaneLean.BridgeLemmas
import CellBiologyLipidDropletsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

def ConstrainedLipidDropletClosure (A : LipidDropletAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lipid_droplet_endgame (A : LipidDropletAdmissibleClass) :
    ConstrainedLipidDropletClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse