import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundation

structure IntervalAdmittedObject where
  interval : Type
  topology : TopologicalSpace interval
  mapContinuous : Prop
  invariantClosedSubsets : Prop
  topologicalEntropyFinite : Prop
  conclusion : topologicalEntropyFinite

structure AdmissibleClass where
  object : IntervalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  IntervalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingMapsIntervalFoundation
end HautevilleHouse
