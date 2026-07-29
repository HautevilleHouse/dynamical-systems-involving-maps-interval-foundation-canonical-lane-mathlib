import DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.entropyBound ∨ A.criticalPointStructure

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse
