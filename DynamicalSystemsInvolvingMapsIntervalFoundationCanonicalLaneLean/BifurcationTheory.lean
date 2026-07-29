import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure BifurcationPackage (I : IntervalMapPackage) where
  parameterFamily : ℝ → IntervalMapPackage
  criticalParameter : ℝ
  bifurcationEvent : Prop

structure BifurcationEvidence (I : IntervalMapPackage) (B : BifurcationPackage I) where
  parameterFamilyConsistent : Prop
  criticalParameterClosed : Prop
  bifurcationEventClosed : B.bifurcationEvent

def BifurcationClosed (I : IntervalMapPackage) (B : BifurcationPackage I) : Prop :=
  B.bifurcationEvent

theorem bifurcation_closed_from_evidence (I : IntervalMapPackage)
    (B : BifurcationPackage I) (E : BifurcationEvidence I B) :
    BifurcationClosed I B := by
  exact E.bifurcationEventClosed

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse