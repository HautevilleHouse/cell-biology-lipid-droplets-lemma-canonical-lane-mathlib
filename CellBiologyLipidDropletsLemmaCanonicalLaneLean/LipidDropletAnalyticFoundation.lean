import canonicalLaneMathlib.AdmissibleClass
import CellBiologyLipidDropletsLemmaCanonicalLaneLean.LipidDropletAssembly
import CellBiologyLipidDropletsLemmaCanonicalLaneLean.LipidMetabolismPathway
import CellBiologyLipidDropletsLemmaCanonicalLaneLean.LipidDropletProteome
import CellBiologyLipidDropletsLemmaCanonicalLaneLean.LipidDropletDynamics
import CellBiologyLipidDropletsLemmaCanonicalLaneLean.LipidDropletPhysiology

namespace HautevilleHouse
namespace CellBiologyLipidDropletsLemmaCanonicalLaneLean

structure LipidDropletAnalyticFoundation where
  assembly : LipidDropletAssemblyPackage
  assemblyEvidence : LipidDropletAssemblyEvidence assembly
  metabolism : LipidMetabolismPathwayPackage
  metabolismEvidence : LipidMetabolismPathwayEvidence metabolism
  proteome : LipidDropletProteomePackage
  proteomeEvidence : LipidDropletProteomeEvidence proteome
  dynamics : LipidDropletDynamicsPackage
  dynamicsEvidence : LipidDropletDynamicsEvidence dynamics
  physiology : LipidDropletPhysiologyPackage
  physiologyEvidence : LipidDropletPhysiologyEvidence physiology

def LipidDropletAnalyticFoundationClosed (F : LipidDropletAnalyticFoundation) : Prop :=
  LipidDropletAssemblyClosed F.assembly ∧
  LipidMetabolismPathwayClosed F.metabolism ∧
  LipidDropletProteomeClosed F.proteome ∧
  LipidDropletDynamicsClosed F.dynamics ∧
  LipidDropletPhysiologyClosed F.physiology

theorem lipid_droplet_analytic_foundation_closed_from_evidence (F : LipidDropletAnalyticFoundation) :
    LipidDropletAnalyticFoundationClosed F := by
  exact And.intro (lipid_droplet_assembly_closed_from_evidence F.assembly F.assemblyEvidence)
    (And.intro (lipid_metabolism_pathway_closed_from_evidence F.metabolism F.metabolismEvidence)
      (And.intro (lipid_droplet_proteome_closed_from_evidence F.proteome F.proteomeEvidence)
        (And.intro (lipid_droplet_dynamics_closed_from_evidence F.dynamics F.dynamicsEvidence)
          (lipid_droplet_physiology_closed_from_evidence F.physiology F.physiologyEvidence))))

end CellBiologyLipidDropletsLemmaCanonicalLaneLean
end HautevilleHouse