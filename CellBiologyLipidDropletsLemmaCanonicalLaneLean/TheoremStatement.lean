import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "CellBiologyLipidDropletsLemmaCanonicalLaneLean",
    theoremName := "CellBiologyLipidDropletsLemma",
    theoremObject := "Lipid_droplet_formation_and_regulation",
    classicalBoundary := "Classical cell biology boundary",
    manifoldConstrainedStatement := "Lipid droplet closure admitted",
    certificateLane := "cell_biology_lipid_droplets",
    carriedRemainder := "None"
  }

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse