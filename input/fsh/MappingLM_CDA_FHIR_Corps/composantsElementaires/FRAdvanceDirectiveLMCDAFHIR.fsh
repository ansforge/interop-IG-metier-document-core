Instance: FRAdvanceDirectiveLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAdvanceDirective → FRCDADirectiveAnticipee / FRLMAdvanceDirective → FRAdvanceDirectiveDocument"
Description: "Mapping des éléments du modèle métier FRLMAdvanceDirective vers le profil CDA FRCDADirectiveAnticipee, puis vers le profil FHIR FRAdvanceDirectiveDocument."

* title = "Mapping Métier/CDA/FHIR : \"Directive Anticipee\""
* name = "FRAdvanceDirectiveLMCDAFHIR"
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirective"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-directive-anticipee"

// Élément racine
* group[=].element[+].code = #FRLMAdvanceDirective
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDADirectiveAnticipee"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMAdvanceDirective.header.identifier
* group[=].element[=].target.code = #Observation.id
* group[=].element[=].target.equivalence = #equivalent

// Code
* group[=].element[+].code = #FRLMAdvanceDirective.category
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMAdvanceDirective.header.status
* group[=].element[=].target.code = #Observation.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Date
* group[=].element[+].code = #FRLMAdvanceDirective.header.date
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Valeur booléenne
* group[=].element[+].code = #FRLMAdvanceDirective.value
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent

// note
* group[=].element[+].code = #FRLMAdvanceDirective.note
* group[=].element[=].target.code = #Observation.text
* group[=].element[=].target.equivalence = #equivalent

// Document encapsulé
* group[=].element[+].code = #FRLMAdvanceDirective.attachment
* group[=].element[=].target.code = #Observation.entryRelationship.observationMedia
* group[=].element[=].target.equivalence = #equivalent



// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirective"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-advance-directive-document"

/* Élément racine */
* group[=].element[+].code = #FRLMAdvanceDirective
* group[=].element[=].target.code = #Consent
* group[=].element[=].target.display = "FRAdvanceDirectiveDocument"
* group[=].element[=].target.equivalence = #equivalent

/* Identifiant */
* group[=].element[+].code = #FRLMAdvanceDirective.header.identifier
* group[=].element[=].target.code = #Consent.identifier
* group[=].element[=].target.equivalence = #equivalent

/* Type de directive */
* group[=].element[+].code = #FRLMAdvanceDirective.category
* group[=].element[=].target.code = #Consent.provision.code
* group[=].element[=].target.equivalence = #equivalent

/* Texte libre */
* group[=].element[+].code = #FRLMAdvanceDirective.note
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Consent (FHIR R4) n'a pas de champ de texte libre équivalent à un commentaire ; l'information reste portée par provision.code."

/* Statut */
* group[=].element[+].code = #FRLMAdvanceDirective.header.status
* group[=].element[=].target.code = #Consent.status
* group[=].element[=].target.equivalence = #equivalent

/* Date */
* group[=].element[+].code = #FRLMAdvanceDirective.date
* group[=].element[=].target.code = #Consent.dateTime
* group[=].element[=].target.equivalence = #equivalent

/* Valeur booléenne */
* group[=].element[+].code = #FRLMAdvanceDirective.value
* group[=].element[=].target.code = #Consent.provision.type
* group[=].element[=].target.equivalence = #equivalent

/* Document encapsulé */
* group[=].element[+].code = #FRLMAdvanceDirective.attachment
* group[=].element[=].target.code = #Consent.source[x]
* group[=].element[=].target.equivalence = #equivalent



// Groupe Mapping 3 : pièce jointe (FRLMAttachment) → CDA
// Ces éléments ne sont pas des chemins de FRLMAdvanceDirective : "attachment" pointe vers le
// type FRLMAttachment, donc ses sous-éléments doivent être mappés dans un groupe dont le
// source system est FRLMAttachment lui-même (même principe que FRAttachmentLMCDAFHIR.fsh).
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-directive-anticipee"

// Référence à un document externe
* group[=].element[+].code = #FRLMAttachment.url
* group[=].element[=].target.code = #Observation.reference.externalDocument.text.reference
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Référence externe portée par externalDocument.text.reference en CDA."

// Identifiant observation média
* group[=].element[+].code = #FRLMAttachment.header.identifier
* group[=].element[=].target.code = #Observation.entryRelationship.observationMedia.id
* group[=].element[=].target.equivalence = #equivalent

// Document encapsulé encodé en Base64
* group[=].element[+].code = #FRLMAttachment.data
* group[=].element[=].target.code = #Observation.entryRelationship.observationMedia.value
* group[=].element[=].target.equivalence = #equivalent



// Groupe Mapping 4 : pièce jointe (FRLMAttachment) → FHIR
// Consent.source[x] est slicé (sourceReference / sourceAttachment) ; les sous-éléments
// s'expriment donc via Consent.source[x]:sourceAttachment.xxx.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-advance-directive-document"

/* Référence à un document externe */
* group[=].element[+].code = #FRLMAttachment.url
* group[=].element[=].target.code = #Consent.source[x]:sourceAttachment.url
* group[=].element[=].target.equivalence = #equivalent

/* Identifiant document encapsulé */
* group[=].element[+].code = #FRLMAttachment.header.identifier
* group[=].element[=].target.code = #Consent.source[x]:sourceAttachment.id
* group[=].element[=].target.equivalence = #equivalent

/* Document encapsulé encodé en Base64 */
* group[=].element[+].code = #FRLMAttachment.data
* group[=].element[=].target.code = #Consent.source[x]:sourceAttachment.data
* group[=].element[=].target.equivalence = #equivalent
