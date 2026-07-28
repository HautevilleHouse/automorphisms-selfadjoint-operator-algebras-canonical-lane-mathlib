import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Algebra.Star.Basic

namespace HautevilleHouse
namespace AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean

structure StarAutomorphism (A : Type u) [StarRing A] where
  toFun : A → A
  map_mul' : ∀ x y : A, toFun (x * y) = toFun x * toFun y
  map_add' : ∀ x y : A, toFun (x + y) = toFun x + toFun y
  map_star' : ∀ x : A, toFun (star x) = star (toFun x)
  invFun : A → A
  left_inv : Function.LeftInverse invFun toFun
  right_inv : Function.RightInverse invFun toFun

structure AdmittedAutomorphismObject where
  algebraType : String
  automorphismDescription : String
  selfadjointPreserving : Prop
  spectralInvariant : Prop
  fixedPointSubalgebra : Prop
  innerOrOuterClass : String

defaultAdmittedAutomorphismObject : AdmittedAutomorphismObject := {
  algebraType := "C*-algebra",
  automorphismDescription := "canonical *-automorphism of a unital C*-algebra",
  selfadjointPreserving := True,
  spectralInvariant := True,
  fixedPointSubalgebra := True,
  innerOrOuterClass := "inner"
}

end AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
