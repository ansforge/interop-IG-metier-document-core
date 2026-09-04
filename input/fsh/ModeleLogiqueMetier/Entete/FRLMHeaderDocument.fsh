Logical: FRLMHeaderDocument	
Id: FRLMHeaderDocument						
Title: "Logical model - FR LM Header Document"				
Description: "Eléments de l'entête d'un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc...)."										

* identifier 1..* Identifier "Identifiant unique du document et/ou du lot de version du meme document."
* documentType 1..1 CodeableConcept "Type de document."	
* documentTitle 1..1 string "Titre du document."			
* date 1..1 dateTime "Date de création du document."				
* confidentiality 1..1 code  "Niveau de confidentialité du document."				
* language 1..1 code "Langue principale du document."
* version 1..1 string "Numéro de version du document."
* status 1..1 CodeableConcept "Statut du document."
* eventType 1..* CodeableConcept "Evènement documenté et notamment le cadre d'exercice."				
* subject 1..1 FRLMPatient "Patient / Usager."
* author[x] 1..* FRLMHealthProfessional or FRLMOrganisation or FRLMDevice "Auteur du document."
  * ^comment = """Voici les cas d'usage des documents et leurs auteurs :

| Cas d'usage | Auteur(s) du document | Structure de l'auteur |
|-------------|----------------------|-----------------------|
| Création d'un document par un professionnel sur son logiciel professionnel | Professionnel | Structure |
| Création d'un document patient par un professionnel sur son logiciel professionnel pour le compte du patient | Professionnel | Structure |
| Création d'un document patient par le patient | Patient | non utilisé |
| Création d'un document par un système (dispositif, automate, …) de structure (ES, …) | Système de structure | Structure |
| Création d'un document par un Service numérique référencé (SNR) | SNR | Editeur |
| Création d'un document par le DP | CNOP/DP | CNOP |
"""
* dataEnterer 0..1 FRLMDataEnterer "Opérateur de saisie."	
* informant 0..* FRLMInformant "Informateur ayant fourni des informations utiles à la production du document."	
* custodian 1..1 FRLMOrganisation "Structure chargée de la conservation du document."	
* intendedRecipient 0..* FRLMIntendedRecipient "Destinataire prévu du document."	
* legalAuthentication 1..1 FRLMLegalAuthentication "Responsable du document."	
* attester 0..* FRLMAttester "Professionnel attestant la validité du contenu du document."							
* participant 0..* FRLMParticipant "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire."							
* order  0..* FRLMOrder "Association du document à une prescription."				
* consent 0..* FRLMConsent "Consentement associé au document."
* encounter 1..1 FRLMEncounter "Association du document à une prise en charge."
* presentedForm 0..* FRLMAttachment "Pièces jointes (par exemple une version PDF du document)."
* documentReference 1..* Base "Document de référence (à remplacer, transformé, …)."
  * relationType 1..1 code "Nature de la relation avec le document cible (replaces | transforms | signs | appends)."
    * ^binding.strength = #required
    * ^binding.description = "(required): DocumentRelationshipType"
    * ^binding.valueSet = "http://hl7.org/fhir/ValueSet/document-relationship-type"
  * targetDocument[x] 1..1 Identifier or Reference "Document cible de la relation, référencé par son identifiant ou par référence directe."