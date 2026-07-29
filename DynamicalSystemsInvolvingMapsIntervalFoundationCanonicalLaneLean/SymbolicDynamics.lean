import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean.IntervalMapFoundation

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure ShiftSpace (F : IntervalMapFoundation) where
  alphabet : Type u
  shiftMap : (ℕ → alphabet) → (ℕ → alphabet)
  forbiddenWords : Set (List alphabet)
  subshiftOfFiniteType : Prop
  soficShift : Prop

def SubshiftClosed {F : IntervalMapFoundation} (S : ShiftSpace F) : Prop :=
  S.subshiftOfFiniteType ∧ S.soficShift

structure MarkovPartition (F : IntervalMapFoundation) where
  partition : Set (Set F.interval)
  atomsFinite : Finset (Set F.interval)
  MarkovProperty : Prop
  codingMap : F.interval → (ℕ → Finset.ι (atomsFinite))

def MarkovPartitionClosed {F : IntervalMapFoundation} (M : MarkovPartition F) : Prop :=
  M.MarkovProperty ∧ (Finset.card M.atomsFinite) > 0

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse