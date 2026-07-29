import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure TransitivityPackage (I : IntervalMapPackage) where
  topologicalTransitivity : Prop
  denseOrbitExists : Prop

structure TransitivityEvidence (I : IntervalMapPackage) (T : TransitivityPackage I) where
  topologicalTransitivityClosed : T.topologicalTransitivity
  denseOrbitExistsClosed : T.denseOrbitExists

def TransitivityClosed (I : IntervalMapPackage) (T : TransitivityPackage I) : Prop :=
  T.topologicalTransitivity ∧ T.denseOrbitExists

theorem transitivity_closed_from_evidence (I : IntervalMapPackage)
    (T : TransitivityPackage I) (E : TransitivityEvidence I T) :
    TransitivityClosed I T := by
  exact And.intro E.topologicalTransitivityClosed E.denseOrbitExistsClosed

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse