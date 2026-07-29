import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure InvariantMeasurePackage (I : IntervalMapPackage) where
  measureSpace : Type u
  probabilityMeasure : Type v
  invariantUnderMap : Prop
  ergodicProperty : Prop

structure InvariantMeasureEvidence (I : IntervalMapPackage) (M : InvariantMeasurePackage I) where
  invariantUnderMapClosed : M.invariantUnderMap
  ergodicPropertyClosed : M.ergodicProperty

def InvariantMeasureClosed (I : IntervalMapPackage) (M : InvariantMeasurePackage I) : Prop :=
  M.invariantUnderMap ∧ M.ergodicProperty

theorem invariant_measure_closed_from_evidence (I : IntervalMapPackage)
    (M : InvariantMeasurePackage I) (E : InvariantMeasureEvidence I M) :
    InvariantMeasureClosed I M := by
  exact And.intro E.invariantUnderMapClosed E.ergodicPropertyClosed

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse