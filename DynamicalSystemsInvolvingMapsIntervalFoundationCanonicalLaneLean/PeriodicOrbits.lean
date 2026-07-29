import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean.IntervalMapsFoundation

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure PeriodicOrbitsPackage {P : IntervalMapsFoundationPackage}
  (F : IntervalMapsFoundationPackage) where
  periodSet : Set ℕ
  existenceTheorem : Prop
  stabilityCondition : Prop
  densePeriodicity : Prop

def PeriodicityClosed {P : IntervalMapsFoundationPackage}
  (O : PeriodicOrbitsPackage P) : Prop :=
  O.existenceTheorem ∧ O.stabilityCondition ∧ O.densePeriodicity

theorem periodicity_closed_from_evidence
    {P : IntervalMapsFoundationPackage} (O : PeriodicOrbitsPackage P)
    (hex : O.existenceTheorem) (hstab : O.stabilityCondition) (hdense : O.densePeriodicity) :
    PeriodicityClosed O := by
  exact And.intro hex (And.intro hstab hdense)

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse