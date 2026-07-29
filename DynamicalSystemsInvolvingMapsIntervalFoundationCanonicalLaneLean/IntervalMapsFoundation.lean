import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure IntervalMapPackage where
  domainStart : ℝ
  domainEnd : ℝ
  domainNonempty : domainStart < domainEnd
  mapFunction : ℝ → ℝ
  continuousOnDomain : Prop
  mapStaysInInterval : Prop

structure IntervalMapEvidence (I : IntervalMapPackage) where
  continuousOnDomainClosed : I.continuousOnDomain
  mapStaysInIntervalClosed : I.mapStaysInInterval

def IntervalMapClosed (I : IntervalMapPackage) : Prop :=
  I.continuousOnDomain ∧ I.mapStaysInInterval

theorem interval_map_closed_from_evidence (I : IntervalMapPackage)
    (E : IntervalMapEvidence I) : IntervalMapClosed I := by
  exact And.intro E.continuousOnDomainClosed E.mapStaysInIntervalClosed

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse