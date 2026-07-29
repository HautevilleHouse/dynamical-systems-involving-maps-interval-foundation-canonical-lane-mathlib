import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure SharkovskyOrderingPackage (I : IntervalMapPackage) where
  periodThreeExists : Prop
  impliesAllPeriods : Prop
  orderingResult : Prop

structure SharkovskyOrderingEvidence (I : IntervalMapPackage) (S : SharkovskyOrderingPackage I) where
  periodThreeExistsClosed : S.periodThreeExists
  impliesAllPeriodsClosed : S.impliesAllPeriods
  orderingResultClosed : S.orderingResult

def SharkovskyOrderingClosed (I : IntervalMapPackage) (S : SharkovskyOrderingPackage I) : Prop :=
  S.periodThreeExists ∧ S.impliesAllPeriods ∧ S.orderingResult

theorem sharkovsky_ordering_closed_from_evidence (I : IntervalMapPackage)
    (S : SharkovskyOrderingPackage I) (E : SharkovskyOrderingEvidence I S) :
    SharkovskyOrderingClosed I S := by
  exact And.intro E.periodThreeExistsClosed
    (And.intro E.impliesAllPeriodsClosed E.orderingResultClosed)

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse