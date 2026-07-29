import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean.IntervalMapsFoundation

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean

structure LiYorkeChaosPackage {P : IntervalMapsFoundationPackage}
  (F : IntervalMapsFoundationPackage) where
  scrambledSet : Set P.interval
  proximalPair : Prop
  distalPair : Prop
  uncountableScrambled : Prop

def LiYorkeChaosClosed {P : IntervalMapsFoundationPackage}
  (C : LiYorkeChaosPackage P) : Prop :=
  C.proximalPair ∧ C.distalPair ∧ C.uncountableScrambled

theorem li_yorke_chaos_closed_from_evidence
    {P : IntervalMapsFoundationPackage} (C : LiYorkeChaosPackage P)
    (hprox : C.proximalPair) (hdist : C.distalPair) (huncount : C.uncountableScrambled) :
    LiYorkeChaosClosed C := by
  exact And.intro hprox (And.intro hdist huncount)

end DynamicalSystemsInvolvingMapsIntervalFoundationCanonicalLaneLean
end HautevilleHouse