import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure TopologicalEntropyPackage (I : IntervalMapPackage) where
  entropyValue : ℝ
  entropyPositive : Prop
  entropyComputed : Prop

structure TopologicalEntropyEvidence (I : IntervalMapPackage) (E : TopologicalEntropyPackage I) where
  entropyPositiveClosed : E.entropyPositive
  entropyComputedClosed : E.entropyComputed

def TopologicalEntropyClosed (I : IntervalMapPackage) (E : TopologicalEntropyPackage I) : Prop :=
  E.entropyPositive ∧ E.entropyComputed

theorem topological_entropy_closed_from_evidence (I : IntervalMapPackage)
    (E : TopologicalEntropyPackage I) (Ev : TopologicalEntropyEvidence I E) :
    TopologicalEntropyClosed I E := by
  exact And.intro Ev.entropyPositiveClosed Ev.entropyComputedClosed

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse