import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean.IntervalMapFoundation

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure UnimodalFamily where
  map : ℝ → ℝ
  criticalPoint : ℝ
  criticalOrder : ℕ
  topologicalEntropyContinuous : Prop
  kneadingTheoryApplicable : Prop

def UnimodalFamilyClosed (U : UnimodalFamily) : Prop :=
  U.topologicalEntropyContinuous ∧ U.kneadingTheoryApplicable

structure LorenzLikeMap where
  map : ℝ → ℝ
  discontinuitySet : Finset ℝ
  expandingCondition : Prop
  markovPartitionExists : Prop

def LorenzLikeClosed (L : LorenzLikeMap) : Prop :=
  L.expandingCondition ∧ L.markovPartitionExists

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse