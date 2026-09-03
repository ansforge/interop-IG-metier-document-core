Instance: FRHeaderDocumentLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHeaderDocument → FRCDAClinicalDocument → FrBundleDocument / FrCompositionDocument"
Description: """Ce ConceptMap présente trois groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMHeaderDocument\" et l'élément CDA \"clinicalDocument\"
 - Mapping 2 : entre le modèle métier \"FRLMHeaderDocument\" et le profil FHIR \"FrBundleDocument\"
 - Mapping 3 : entre le modèle métier \"FRLMHeaderDocument\" et le profil FHIR \"FrCompositionDocument\" """

* name = "Mapping Métier/CDA/FHIR  : Entête d'un document"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-clinical-document"

// Élément racine
* group[=].element[+].code = #FRLMHeaderDocument
* group[=].element[=].target.code = #ClinicalDocument
* group[=].element[=].target.equivalence = #equivalent

// Identifiant unique du document
* group[=].element[+].code = #FRLMHeaderDocument.identifier
* group[=].element[=].target.code = #ClinicalDocument.id
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où identifier référence l'identifiant unique du document."
// Identifiant du lot de versions
* group[=].element[+].code = #FRLMHeaderDocument.identifier
* group[=].element[=].target.code = #ClinicalDocument.setId
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où identifier référence l'identifiant du lot de versions du document."

// Type de document
* group[=].element[+].code = #FRLMHeaderDocument.documentType
* group[=].element[=].target.code = #ClinicalDocument.code
* group[=].element[=].target.equivalence = #equivalent

// Titre du document
* group[=].element[+].code = #FRLMHeaderDocument.documentTitle
* group[=].element[=].target.code = #ClinicalDocument.title
* group[=].element[=].target.equivalence = #equivalent

// Date de création du document
* group[=].element[+].code = #FRLMHeaderDocument.date
* group[=].element[=].target.code = #ClinicalDocument.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Niveau de confidentialité
* group[=].element[+].code = #FRLMHeaderDocument.confidentiality
* group[=].element[=].target.code = #ClinicalDocument.confidentialityCode
* group[=].element[=].target.equivalence = #equivalent

// Langue principale
* group[=].element[+].code = #FRLMHeaderDocument.language
* group[=].element[=].target.code = #ClinicalDocument.languageCode
* group[=].element[=].target.equivalence = #equivalent

// Version du document
* group[=].element[+].code = #FRLMHeaderDocument.version
* group[=].element[=].target.code = #ClinicalDocument.versionNumber
* group[=].element[=].target.equivalence = #equivalent

// Statut du document
* group[=].element[+].code = #FRLMHeaderDocument.status
* group[=].element[=].target.code = #ClinicalDocument.documentationOf.serviceEvent.lab:statusCode
* group[=].element[=].target.equivalence = #equivalent

// Evènement documenté
* group[=].element[+].code = #FRLMHeaderDocument.eventType
* group[=].element[=].target.code = #ClinicalDocument.documentationOf
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "eventType ne porte plus que le(s) code(s) d'évènement ; les autres informations (dates, exécutant) sont désormais portées par l'élément encounter (FRLMEncounter), cf. FREncounterLMCDAFHIR."

// Patient / usager
* group[=].element[+].code = #FRLMHeaderDocument.subject
* group[=].element[=].target.code = #ClinicalDocument.recordTarget
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRPatientLMCDAFHIR."

// Auteur
* group[=].element[+].code = #FRLMHeaderDocument.author[x]
* group[=].element[=].target.code = #ClinicalDocument.author
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRAuthorLMCDAFHIR."

// Opérateur de saisie
* group[=].element[+].code = #FRLMHeaderDocument.dataEnterer
* group[=].element[=].target.code = #ClinicalDocument.dataEnterer
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRDataEntererLMCDAFHIR."

// Informateur
* group[=].element[+].code = #FRLMHeaderDocument.informant
* group[=].element[=].target.code = #ClinicalDocument.informant
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRInformantLMCDAFHIR."

// Structure de conservation
* group[=].element[+].code = #FRLMHeaderDocument.custodian
* group[=].element[=].target.code = #ClinicalDocument.custodian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRCustodianLMCDAFHIR."

// Destinataire
* group[=].element[+].code = #FRLMHeaderDocument.intendedRecipient
* group[=].element[=].target.code = #ClinicalDocument.informationRecipient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRIntendedRecipientLMCDAFHIR."

// Responsable du document
* group[=].element[+].code = #FRLMHeaderDocument.legalAuthentication
* group[=].element[=].target.code = #ClinicalDocument.legalAuthenticator
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRLegalAuthenticationLMCDAFHIR."

// Validateur
* group[=].element[+].code = #FRLMHeaderDocument.attester
* group[=].element[=].target.code = #ClinicalDocument.authenticator
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRAttesterLMCDAFHIR."

// Participant
* group[=].element[+].code = #FRLMHeaderDocument.participant
* group[=].element[=].target.code = #ClinicalDocument.participant
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRParticipantHeaderLMCDAFHIR."

// Prescription
* group[=].element[+].code = #FRLMHeaderDocument.order
* group[=].element[=].target.code = #ClinicalDocument.inFulfillmentOf
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FROrderLMCDAFHIR."

// Consentement associé
* group[=].element[+].code = #FRLMHeaderDocument.consent
* group[=].element[=].target.code = #ClinicalDocument.authorization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRConsentLMCDAFHIR."

// Prise en charge / rencontre associée
* group[=].element[+].code = #FRLMHeaderDocument.encounter
* group[=].element[=].target.code = #ClinicalDocument.componentOf
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "L'élément encounter est de type FRLMEncounter, cf. FREncounterLMCDAFHIR."

// Représentation PDF du document
* group[=].element[+].code = #FRLMHeaderDocument.presentedForm
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun équivalent direct au niveau entête CDA ; les pièces jointes sont portées par les sections de corps dédiées, cf. FRSectionAttachmentsLMCDAFHIR / FRSectionPresentedFormLMCDAFHIR."

// Document de référence
* group[=].element[+].code = #FRLMHeaderDocument.documentReference
* group[=].element[=].target.code = #ClinicalDocument.relatedDocument
* group[=].element[=].target.equivalence = #equivalent
// Nature de la relation
* group[=].element[+].code = #FRLMHeaderDocument.documentReference.relationType
* group[=].element[=].target.code = #RelatedDocument.typeCode
* group[=].element[=].target.equivalence = #equivalent
// Document cible
* group[=].element[+].code = #FRLMHeaderDocument.documentReference.targetDocument[x]
* group[=].element[=].target.code = #RelatedDocument.parentDocument
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR (identifiant du document)
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-bundle-document"

* group[=].element[+].code = #FRLMHeaderDocument.identifier
* group[=].element[=].target.code = #Bundle.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où identifier référence l'identifiant unique du document."

// Groupe Mapping 3 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"

// Type de document
* group[=].element[+].code = #FRLMHeaderDocument.documentType
* group[=].element[=].target.code = #Composition.type
* group[=].element[=].target.equivalence = #equivalent

// Titre du document
* group[=].element[+].code = #FRLMHeaderDocument.documentTitle
* group[=].element[=].target.code = #Composition.title
* group[=].element[=].target.equivalence = #equivalent

// Date de création du document
* group[=].element[+].code = #FRLMHeaderDocument.date
* group[=].element[=].target.code = #Composition.date
* group[=].element[=].target.equivalence = #equivalent

// Niveau de confidentialité
* group[=].element[+].code = #FRLMHeaderDocument.confidentiality
* group[=].element[=].target.code = #Composition.confidentiality
* group[=].element[=].target.equivalence = #equivalent

// Langue principale
* group[=].element[+].code = #FRLMHeaderDocument.language
* group[=].element[=].target.code = #Composition.language
* group[=].element[=].target.equivalence = #equivalent

// Identifiant du lot de versions
* group[=].element[+].code = #FRLMHeaderDocument.identifier
* group[=].element[=].target.code = #Composition.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où identifier référence l'identifiant du lot de versions du document."

// Version du document
* group[=].element[+].code = #FRLMHeaderDocument.version
* group[=].element[=].target.code = #Composition.extension:R5-Composition-version
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/5.0/StructureDefinition/extension-Composition.version"

// Statut du document
* group[=].element[+].code = #FRLMHeaderDocument.status
* group[=].element[=].target.code = #Composition.status
* group[=].element[=].target.equivalence = #equivalent

// Patient / usager
* group[=].element[+].code = #FRLMHeaderDocument.subject
* group[=].element[=].target.code = #Composition.subject
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRPatientLMCDAFHIR."

// Auteur
* group[=].element[+].code = #FRLMHeaderDocument.author[x]
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRAuthorLMCDAFHIR."

// Opérateur de saisie
* group[=].element[+].code = #FRLMHeaderDocument.dataEnterer
* group[=].element[=].target.code = #Composition.extension:data-enterer
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension — cf. FRDataEntererLMCDAFHIR."

// Informateur
* group[=].element[+].code = #FRLMHeaderDocument.informant
* group[=].element[=].target.code = #Composition.extension:informant
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension — cf. FRInformantLMCDAFHIR."

// Structure de conservation
* group[=].element[+].code = #FRLMHeaderDocument.custodian
* group[=].element[=].target.code = #Composition.custodian
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRCustodianLMCDAFHIR."

// Destinataire
* group[=].element[+].code = #FRLMHeaderDocument.intendedRecipient
* group[=].element[=].target.code = #Composition.extension:information-recipient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/information-recipient-extension — cf. FRIntendedRecipientLMCDAFHIR."

// Responsable du document
* group[=].element[+].code = #FRLMHeaderDocument.legalAuthentication
* group[=].element[=].target.code = #Composition.attester:legal_attester
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRLegalAuthenticationLMCDAFHIR."

// Validateur
* group[=].element[+].code = #FRLMHeaderDocument.attester
* group[=].element[=].target.code = #Composition.attester:professional_attester
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FRAttesterLMCDAFHIR."

// Participant
* group[=].element[+].code = #FRLMHeaderDocument.participant
* group[=].element[=].target.code = #Composition.extension:participant
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension — cf. FRParticipantHeaderLMCDAFHIR."

// Prescription
* group[=].element[+].code = #FRLMHeaderDocument.order
* group[=].element[=].target.code = #Composition.extension:basedOn
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/StructureDefinition/event-basedOn — cf. FROrderLMCDAFHIR."

// Evènement documenté
* group[=].element[+].code = #FRLMHeaderDocument.eventType
* group[=].element[=].target.code = #Composition.event
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "eventType ne porte plus que le(s) code(s) d'évènement ; les autres informations (dates, exécutant) sont désormais portées par Composition.encounter, cf. FREncounterLMCDAFHIR."

// Consentement associé
* group[=].element[+].code = #FRLMHeaderDocument.consent
* group[=].element[=].target.code = #Composition.extension:consent
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/consent-extension — cf. FRConsentLMCDAFHIR."

// Prise en charge / rencontre associée
* group[=].element[+].code = #FRLMHeaderDocument.encounter
* group[=].element[=].target.code = #Composition.encounter
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Composition.encounter.resolve().ofType(Encounter) — https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-encounter-document, cf. FREncounterLMCDAFHIR."

// Représentation PDF du document
* group[=].element[+].code = #FRLMHeaderDocument.presentedForm
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionAttachments ou FRCompositionDocument.section:sectionPresentedForm"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #Composition.extension
* group[=].element[=].target[=].display = "FRCompositionDocument.extension:diagnosticReport.presentedForm"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[=].comment = "Composition.extension:diagnosticReport.resolve().ofType(DiagnosticReport).presentedForm."

// Document de référence
* group[=].element[+].code = #FRLMHeaderDocument.documentReference
* group[=].element[=].target.code = #Composition.relatesTo
* group[=].element[=].target.equivalence = #equivalent
// Nature de la relation
* group[=].element[+].code = #FRLMHeaderDocument.documentReference.relationType
* group[=].element[=].target.code = #Composition.relatesTo.code
* group[=].element[=].target.equivalence = #equivalent
// Document cible
* group[=].element[+].code = #FRLMHeaderDocument.documentReference.targetDocument[x]
* group[=].element[=].target.code = #Composition.relatesTo.target[x]
* group[=].element[=].target.equivalence = #equivalent
