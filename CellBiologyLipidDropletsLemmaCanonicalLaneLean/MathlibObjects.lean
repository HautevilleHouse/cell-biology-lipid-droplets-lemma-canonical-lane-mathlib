import CellBiologyLipidDropletsLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidDropletSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LipidDropletAdmittedObject where
  space : LipidDropletSpace
  dropletFormation : Prop
  lipolysisRegulation : Prop
  dynamicsModel : Type
  dynamicsTopology : TopologicalSpace dynamicsModel
  dropletFormationClosed : Prop
  conclusion : dropletFormationClosed

def LipidDropletWitnessClosed (O : LipidDropletAdmittedObject) : Prop :=
  O.dropletFormationClosed

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse