import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean.IntervalMapFoundation

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure KneadingData (F : IntervalMapFoundation) where
  kneadingMatrix : Type v
  kneadingDeterminant : Type w
  topologicalPressure : Prop
  kneadingSequence : F.map → List Int
  lapCounting : Prop

def KneadingTheoryClosed {F : IntervalMapFoundation} (K : KneadingData F) : Prop :=
  K.topologicalPressure ∧ K.lapCounting ∧ (K.kneadingSequence F.map).length > 0

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse