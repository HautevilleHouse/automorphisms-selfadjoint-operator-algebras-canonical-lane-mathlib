import AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean.AutomorphismClosureCertificate

namespace HautevilleHouse
namespace AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean

structure SelfadjointOperatorAlgebra where
  carrier : Type
  algebraStructure : String
  involution : String
  norm : String
  completeness : Bool
  faithfulRepresentation : String

defaultRepr : SelfadjointOperatorAlgebra := {
  carrier := Unit,
  algebraStructure := "C* algebra",
  involution := "standard adjoint",
  norm := "operator norm",
  completeness := true,
  faithfulRepresentation := "GNS construction"
}

structure AdmittedOperatorAlgebra where
  object : SelfadjointOperatorAlgebra
  substrate : UpstreamMathlibSubstrate
  localWitness : String
  bridgeEvidence : String
  operatorModelChecked : Prop
  operatorModelWitness : operatorModelChecked
  spectralPersistenceBridgeChecked : Prop
  spectralPersistenceBridgeWitness : spectralPersistenceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : AutomorphismClosureCertificate.formalizationCertificate.sourceConjectureClosureClaimed = false
  sourceKeyChecked : object.carrier = sourceRepository
  theoremObjectChecked : object.algebraStructure = sourceDescription

def sourceRepository : String := "automorphisms-selfadjoint-operator-algebras"
def sourceDescription : String := "Automorphisms of selfadjoint operator algebras"

structure UpstreamMathlibSubstrate where
  operatorCarrier : Type
  spectralSet : Set Unit
  invariantOrSelfAdjointGate : Prop
  spectralPersistenceBridge : Prop
  sourceBoundaryLedger : Set String

structure ClosureState where
  object : AdmittedOperatorAlgebra
  endpointSatisfied : Prop
  remainderRecorded : Prop

end AutomorphismsSelfadjointOperatorAlgebrasCanonicalLaneLean
end HautevilleHouse
