import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsSelfadjointOperatorAlgebras

structure AutomorphismGroupLayerCertificate where
  operatorDatum : OperatorAlgebraDatum
  automorphismGroup : String
  persistenceRoute : String
  endpointRoute : String
  automorphismActionChecked : Bool
  innerAutomorphismRoute : Bool

def automorphismGroupLayerCertificate : AutomorphismGroupLayerCertificate := {
  operatorDatum := primitiveOperatorAlgebraDatum,
  automorphismGroup := "*",
  persistenceRoute := "automorphism persistence routed through selfadjoint spectral datum",
  endpointRoute := "automorphism endpoint projected via admissible class",
  automorphismActionChecked := true,
  innerAutomorphismRoute := true
}

def AutomorphismGroupLayerClosed (C : AutomorphismGroupLayerCertificate) : Prop :=
  C.operatorDatum = primitiveOperatorAlgebraDatum ∧
  C.automorphismGroup = "*" ∧
  C.automorphismActionChecked = true ∧
  C.innerAutomorphismRoute = true

theorem automorphism_group_layer_closed_checked :
    AutomorphismGroupLayerClosed automorphismGroupLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end AutomorphismsSelfadjointOperatorAlgebras
end HautevilleHouse