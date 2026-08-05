// Instance ConceptMap: correspondances entre codes CDA (type média) et FHIR Media.type
Instance: FRMediaLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationMedia → FRCDAImageIllustrative / FRLMObservationMedia → FRMediaDocument"
Description: "Mapping des éléments du modèle métier FRLMObservationMedia vers le profil CDA FRCDAImageIllustrative, puis vers le profil FHIR FRMediaDocument."
* title = "Mapping Métier/CDA/FHIR : \"Image illustrative\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-media"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-image-illustrative"
// Élément racine  
* group[=].element[+].code = #FRLMObservationMedia
* group[=].element[=].target.code = #FRCDAImageIllustrative
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMObservationMedia.identifiant
* group[=].element[=].target.code = #FRCDAImageIllustrative.id
* group[=].element[=].target.equivalence = #equivalent

// data
* group[=].element[+].code = #FRLMObservationMedia.content.data
* group[=].element[=].target.code = #FRCDAImageIllustrative.value
* group[=].element[=].target.equivalence = #equivalent

// Type MIME
* group[=].element[+].code = #FRLMObservationMedia.content.contentType
* group[=].element[=].target.code = #FRCDAImageIllustrative.value.mediaType
* group[=].element[=].target.equivalence = #equivalent

// Sujet
* group[=].element[+].code = #FRLMObservationMedia.subject:FRLMPatient
* group[=].element[=].target.code = #FRCDAImageIllustrative.subject
* group[=].element[=].target.equivalence = #equivalent

// Specimen
* group[=].element[+].code = #FRLMObservationMedia.subject:FRLMSpecimen
* group[=].element[=].target.code = #FRCDAImageIllustrative.specimen
* group[=].element[=].target.equivalence = #equivalent

// Note
* group[=].element[+].code = #FRLMObservationMedia.note
* group[=].element[=].target.code = #FRCDAImageIllustrative
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Le profil CDA ne comporte pas d'élément dédié pour représenter une note."

// Performer
* group[=].element[+].code = #FRLMObservationMedia.header.performer[x]
* group[=].element[=].target.code = #FRCDAImageIllustrative.performer
* group[=].element[=].target.equivalence = #equivalent

// participant
* group[=].element[+].code = #FRLMObservationMedia.header.participant[x]
* group[=].element[=].target.code = #FRCDAImageIllustrative.participant
* group[=].element[=].target.equivalence = #equivalent

// author
* group[=].element[+].code = #FRLMObservationMedia.header.author[x]
* group[=].element[=].target.code = #FRCDAImageIllustrative.author
* group[=].element[=].target.equivalence = #equivalent

// informant
* group[=].element[+].code = #FRLMObservationMedia.header.informant[x]
* group[=].element[=].target.code = #FRCDAImageIllustrative.informant
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : Métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-media"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-media-document"
// Élément racine
* group[=].element[+].code = #FRLMObservationMedia
* group[=].element[=].target.code = #FRMediaDocument
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMObservationMedia.identifiant
* group[=].element[=].target.code = #FRMediaDocument.identifier
* group[=].element[=].target.equivalence = #equivalent

// Données
* group[=].element[+].code = #FRLMObservationMedia.content.data
* group[=].element[=].target.code = #FRMediaDocument.content.data
* group[=].element[=].target.equivalence = #equivalent

// Type MIME
* group[=].element[+].code = #FRLMObservationMedia.content.contentType
* group[=].element[=].target.code = #FRMediaDocument.content.contentType
* group[=].element[=].target.equivalence = #equivalent

// Sujet
* group[=].element[+].code = #FRLMObservationMedia.subject:FRLMPatient
* group[=].element[=].target.code = #FRMediaDocument.subject
* group[=].element[=].target.equivalence = #equivalent

// Specimen
* group[=].element[+].code = #FRLMObservationMedia.subject:FRLMSpecimen
* group[=].element[=].target.code = #FRMediaDocument.specimen
* group[=].element[=].target.equivalence = #equivalent

// Note
* group[=].element[+].code = #FRLMObservationMedia.note
* group[=].element[=].target.code = #FRMediaDocument.note
* group[=].element[=].target.equivalence = #equivalent

// Performer
* group[=].element[+].code = #FRLMObservationMedia.header.performer[x]
* group[=].element[=].target.code = #FRMediaDocument.operator
* group[=].element[=].target.equivalence = #equivalent

// participant
* group[=].element[+].code = #FRLMObservationMedia.header.participant[x]
* group[=].element[=].target.equivalence = #unmatched

// author
* group[=].element[+].code = #FRLMObservationMedia.header.author[x]
* group[=].element[=].target.equivalence = #unmatched

// informant
* group[=].element[+].code = #FRLMObservationMedia.header.informant[x]
* group[=].element[=].target.equivalence = #unmatched