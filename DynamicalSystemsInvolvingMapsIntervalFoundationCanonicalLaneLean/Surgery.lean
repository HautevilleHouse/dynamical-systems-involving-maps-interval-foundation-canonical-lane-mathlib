import DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Surgery Package for Interval Dynamical Systems
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure SurgeryPackage where
  surgeryTimeFreelyEnd : Nat
  preSurgeryEntropyEstimate : Prop
  postSurgeryOrbitControl : Prop
  renormalizationGroup : Prop
  periodicPointPersistent : Prop
  topologicalConjugacyPreserved : Prop
  entropyProductionBound : Prop
  kneadingDeterminantRenormalized : Prop
  renormalizationFixedPoint : Prop
  combinatorialDataFinite : Prop

structure SurgeryEvidence (S : SurgeryPackage) where
  preSurgeryEntropyEstimateClosed : S.preSurgeryEntropyEstimate
  postSurgeryOrbitControlClosed : S.postSurgeryOrbitControl
  renormalizationGroupClosed : S.renormalizationGroup
  periodicPointPersistentClosed : S.periodicPointPersistent
  topologicalConjugacyPreservedClosed : S.topologicalConjugacyPreserved
  entropyProductionBoundClosed : S.entropyProductionBound
  kneadingDeterminantRenormalizedClosed : S.kneadingDeterminantRenormalized
  renormalizationFixedPointClosed : S.renormalizationFixedPoint
  combinatorialDataFiniteClosed : S.combinatorialDataFinite

def SurgeryClosed (S : SurgeryPackage) : Prop :=
  S.preSurgeryEntropyEstimate ∧ S.postSurgeryOrbitControl ∧
  S.renormalizationGroup ∧ S.periodicPointPersistent ∧
  S.topologicalConjugacyPreserved ∧ S.entropyProductionBound ∧
  S.kneadingDeterminantRenormalized ∧ S.renormalizationFixedPoint ∧
  S.combinatorialDataFinite

theorem surgery_closed_from_evidence (S : SurgeryPackage) (E : SurgeryEvidence S) :
    SurgeryClosed S := by
  exact And.intro E.preSurgeryEntropyEstimateClosed
    (And.intro E.postSurgeryOrbitControlClosed
      (And.intro E.renormalizationGroupClosed
        (And.intro E.periodicPointPersistentClosed
          (And.intro E.topologicalConjugacyPreservedClosed
            (And.intro E.entropyProductionBoundClosed
              (And.intro E.kneadingDeterminantRenormalizedClosed
                (And.intro E.renormalizationFixedPointClosed
                  E.combinatorialDataFiniteClosed)))))))

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse
