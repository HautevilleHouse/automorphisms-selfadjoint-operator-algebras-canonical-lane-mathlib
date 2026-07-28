import AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean

def ConstrainedAutomorphismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

def NativeClosureTheorem (A : AdmissibleClass) : Prop :=
  ConstrainedAutomorphismClosure A

theorem constrained_automorphism_endgame (A : AdmissibleClass) :
    ConstrainedAutomorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem native_closure_theorem_checked (A : AdmissibleClass) :
    NativeClosureTheorem A := by
  exact constrained_automorphism_endgame A

theorem classical_source_boundary_carried_checked : ClassicalSourceBoundaryCarried := by
  exact And.intro rfl rfl

end AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
