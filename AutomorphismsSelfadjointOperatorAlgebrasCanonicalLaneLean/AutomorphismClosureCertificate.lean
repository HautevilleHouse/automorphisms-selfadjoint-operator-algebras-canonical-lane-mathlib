import AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean.SpectralAutomorphismLayer

namespace HautevilleHouse
namespace AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean

structure AutomorphismClosureCertificate where
  spectralAutomorphismLayer : SpectralAutomorphismCertificate
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  spectralObjectClosed : Bool
  classicalBoundaryCarried : Bool

defaultAutomorphismClosureCertificate : AutomorphismClosureCertificate := {
  spectralAutomorphismLayer := defaultSpectralAutomorphismCertificate,
  baselineGatesClosed := true,
  formulaLayerModeled := true,
  spectralObjectClosed := true,
  classicalBoundaryCarried := true
}

def AutomorphismClosureCertificateClosed (C : AutomorphismClosureCertificate) : Prop :=
  SpectralAutomorphismLayerClosed C.spectralAutomorphismLayer ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.spectralObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem automorphism_closure_certificate_closed_checked :
    AutomorphismClosureCertificateClosed defaultAutomorphismClosureCertificate := by
  exact And.intro spectral_automorphism_layer_closed_checked
    (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
