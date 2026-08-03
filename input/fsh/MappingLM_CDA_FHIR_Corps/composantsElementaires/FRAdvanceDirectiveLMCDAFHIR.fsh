Instance: FRAdvanceDirectiveLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAdvanceDirective → FRCDADirectiveAnticipee / FRLMAdvanceDirective → FRAdvanceDirectiveDocument"
Description: "Mapping des éléments du modèle métier FRLMAdvanceDirective vers le profil CDA FRCDADirectiveAnticipee, puis vers le profil FHIR FRAdvanceDirectiveDocument."

* title = "Mapping Métier/CDA/FHIR : \"Directive Anticipee\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-advance-directive"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directive-anticipee"

// Élément racine
* group[=].element[+].code = #FRLMAdvanceDirective
* group[=].element[=].target.code = #FRCDADirectiveAnticipee
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMAdvanceDirective.header.identifier
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.id
* group[=].element[=].target.equivalence = #equivalent

// Code
* group[=].element[+].code = #FRLMAdvanceDirective.category
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.code
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMAdvanceDirective.header.status
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Date
* group[=].element[+].code = #FRLMAdvanceDirective.header.date
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Valeur booléenne
* group[=].element[+].code = #FRLMAdvanceDirective.value
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.value
* group[=].element[=].target.equivalence = #equivalent

// note 
* group[=].element[+].code = #FRLMAdvanceDirective.note
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.text
* group[=].element[=].target.equivalence = #equivalent

// Référence à un document externe
* group[=].element[+].code = #FRLMAdvanceDirective.attachment.url
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.reference.externalDocument.text.reference
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Référence externe portée par externalDocument.text.reference en CDA."

// Document encapsulé
* group[=].element[+].code = #FRLMAdvanceDirective.attachment
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.entryRelationship.observationMedia
* group[=].element[=].target.equivalence = #equivalent

// Identifiant observation média
* group[=].element[+].code = #FRLMAdvanceDirective.attachment.header.identifier
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.entryRelationship.observationMedia.id
* group[=].element[=].target.equivalence = #equivalent

// Document encapsulé encodé en Base64
* group[=].element[+].code = #FRLMAdvanceDirective.attachment.data
* group[=].element[=].target.code = #FRCDADirectiveAnticipee.entryRelationship.observationMedia.value
* group[=].element[=].target.equivalence = #equivalent



// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-advance-directive"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-advance-directive-document"

/* Élément racine */
* group[=].element[+].code = #FRLMAdvanceDirective
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument
* group[=].element[=].target.equivalence = #equivalent

/* Identifiant */
* group[=].element[+].code = #FRLMAdvanceDirective.header.identifier
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.identifier
* group[=].element[=].target.equivalence = #equivalent

/* Type de directive */
* group[=].element[+].code = #FRLMAdvanceDirective.category
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.provision.code
* group[=].element[=].target.equivalence = #equivalent

/* Texte libre */
* group[=].element[+].code = #FRLMAdvanceDirective.note
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.provision.code.text
* group[=].element[=].target.equivalence = #equivalent

/* Statut */
* group[=].element[+].code = #FRLMAdvanceDirective.header.status
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.status
* group[=].element[=].target.equivalence = #equivalent

/* Date */
* group[=].element[+].code = #FRLMAdvanceDirective.date
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.dateTime
* group[=].element[=].target.equivalence = #equivalent

/* Valeur booléenne */
* group[=].element[+].code = #FRLMAdvanceDirective.value
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.provision.type
* group[=].element[=].target.equivalence = #equivalent

/* Référence à un document externe */
* group[=].element[+].code = #FRLMAdvanceDirective.attachment.url
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.sourceReference
* group[=].element[=].target.equivalence = #equivalent

/* Document encapsulé */
* group[=].element[+].code = #FRLMAdvanceDirective.attachment
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.sourceAttachment
* group[=].element[=].target.equivalence = #equivalent

/* Identifiant document encapsulé */
* group[=].element[+].code = #FRLMAdvanceDirective.attachment.header.identifier
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.sourceAttachment.id
* group[=].element[=].target.equivalence = #equivalent

/* Document encapsulé encodé en Base64 */
* group[=].element[+].code = #FRLMAdvanceDirective.attachment.data
* group[=].element[=].target.code = #FRAdvanceDirectiveDocument.sourceAttachment.data
* group[=].element[=].target.equivalence = #equivalent