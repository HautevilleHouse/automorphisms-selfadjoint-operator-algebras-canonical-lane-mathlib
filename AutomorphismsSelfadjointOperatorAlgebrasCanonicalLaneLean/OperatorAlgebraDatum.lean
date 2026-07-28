import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsSelfadjointOperatorAlgebras

structure OperatorAlgebraDatum where
  operatorLabel : String
  selfadjointRoute : String
  automorphismRoute : String
  spectralInvariantRoute : String

def primitiveOperatorAlgebraDatum : OperatorAlgebraDatum := {
  operatorLabel := "selfadjoint operator algebra automorphism route",
  selfadjointRoute := "selfadjoint operator algebra substrate",
  automorphismRoute := "automorphism group action on selfadjoint elements",
  spectralInvariantRoute := "spectral invariants under automorphisms"
}

end AutomorphismsSelfadjointOperatorAlgebras
end HautevilleHouse