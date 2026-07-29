import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure IntervalMapFoundation where
  interval : Type u
  topology : TopologicalSpace interval
  map : interval → interval
  continuity : Prop
  piecewiseMonotone : Prop
  markovPartition : Prop
  topologicalEntropy : Prop

def IntervalMapFoundationClosed (F : IntervalMapFoundation) : Prop :=
  F.continuity ∧ F.piecewiseMonotone ∧ F.markovPartition ∧ F.topologicalEntropy

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse