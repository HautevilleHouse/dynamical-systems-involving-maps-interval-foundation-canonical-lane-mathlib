import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure PeriodicPointPackage (I : IntervalMapPackage) where
  periodK : ℕ
  point : ℝ
  belongsToInterval : I.domainStart ≤ point ∧ point ≤ I.domainEnd
  isPeriodic : Nat.iterate I.mapFunction periodK point = point

structure PeriodicPointEvidence (I : IntervalMapPackage) (P : PeriodicPointPackage I) where
  belongsToIntervalClosed : P.belongsToInterval
  isPeriodicClosed : P.isPeriodic

def PeriodicPointClosed (I : IntervalMapPackage) (P : PeriodicPointPackage I) : Prop :=
  P.belongsToInterval ∧ P.isPeriodic

theorem periodic_point_closed_from_evidence (I : IntervalMapPackage)
    (P : PeriodicPointPackage I) (E : PeriodicPointEvidence I P) :
    PeriodicPointClosed I P := by
  exact And.intro E.belongsToIntervalClosed E.isPeriodicClosed

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse