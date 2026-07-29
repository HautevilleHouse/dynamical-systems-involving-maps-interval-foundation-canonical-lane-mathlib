import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure IntervalDynamicalObject where
  interval : Type
  intervalTopology : TopologicalSpace interval
  outerMeasure : interval -> Set interval
  iterateStructure : Nat -> (interval -> interval)
  topologicalEntropyDefined : Prop

structure AdmissibleClass where
  object : IntervalDynamicalObject
  entropyBound : Prop
  criticalPointStructure : Prop
  gateWitness : entropyBound ∨ criticalPointStructure

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse
