import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean.IntervalMapFoundation
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean.KneadingTheory

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure TopologicalEntropyEstimate (F : IntervalMapFoundation) where
  growthRate : ℕ → ℝ
  variationalPrinciple : Prop
  kneadingDeterminantEntropy : Prop
  lyapunovExponentBound : Prop

def EntropyEstimateClosed {F : IntervalMapFoundation} (E : TopologicalEntropyEstimate F) : Prop :=
  E.variationalPrinciple ∧ E.kneadingDeterminantEntropy ∧ E.lyapunovExponentBound

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse