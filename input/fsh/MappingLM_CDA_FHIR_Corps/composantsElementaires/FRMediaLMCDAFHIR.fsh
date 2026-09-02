// Instance ConceptMap: correspondances entre codes CDA (type média) et FHIR Media.type
Instance: FRMediaLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationMedia → FRCDAImageIllustrative / FRLMObservationMedia → FRMediaDocument"
Description: "Mapping des éléments du modèle métier FRLMObservationMedia vers le profil CDA FRCDAImageIllustrative, puis vers le profil FHIR FRMediaDocument."
* name = "FRMediaLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Image illustrative\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-image-illustrative"
// Élément racine  
* group[=].element[+].code = #FRLMObservationMedia
* group[=].element[=].target.code = #ObservationMedia
* group[=].element[=].target.display = "FRCDAImageIllustrative"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMObservationMedia.header.identifier
* group[=].element[=].target.code = #ObservationMedia.id
* group[=].element[=].target.equivalence = #equivalent

// data
* group[=].element[+].code = #FRLMObservationMedia.content.data
* group[=].element[=].target.code = #ObservationMedia.value
* group[=].element[=].target.equivalence = #equivalent

// Type MIME
* group[=].element[+].code = #FRLMObservationMedia.content.contentType
* group[=].element[=].target.code = #ObservationMedia.value
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Cet attribut n'est pas décomposé séparément dans ce profil ; il est porté par l'ensemble de value."

// Sujet
* group[=].element[+].code = #FRLMObservationMedia.subject
* group[=].element[=].target.code = #ObservationMedia.subject
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où subject[x] référence un FRLMPatient."

// Specimen
* group[=].element[+].code = #FRLMObservationMedia.subject
* group[=].element[=].target.code = #ObservationMedia.specimen
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où subject[x] référence un FRLMSpecimen."

// Note
* group[=].element[+].code = #FRLMObservationMedia.note
* group[=].element[=].target.code = #ObservationMedia
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Le profil CDA ne comporte pas d'élément dédié pour représenter une note."

// Performer
* group[=].element[+].code = #FRLMObservationMedia.header.performer[x]
* group[=].element[=].target.code = #ObservationMedia.performer
* group[=].element[=].target.equivalence = #equivalent

// participant
* group[=].element[+].code = #FRLMObservationMedia.header.participant[x]
* group[=].element[=].target.code = #ObservationMedia.participant
* group[=].element[=].target.equivalence = #equivalent

// author
* group[=].element[+].code = #FRLMObservationMedia.header.author[x]
* group[=].element[=].target.code = #ObservationMedia.author
* group[=].element[=].target.equivalence = #equivalent

// informant
* group[=].element[+].code = #FRLMObservationMedia.header.informant
* group[=].element[=].target.code = #ObservationMedia.informant
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : Métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-media-document"
// Élément racine
* group[=].element[+].code = #FRLMObservationMedia
* group[=].element[=].target.code = #Media
* group[=].element[=].target.display = "FRMediaDocument"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMObservationMedia.header.identifier
* group[=].element[=].target.code = #Media.identifier
* group[=].element[=].target.equivalence = #equivalent

// Données
* group[=].element[+].code = #FRLMObservationMedia.content.data
* group[=].element[=].target.code = #Media.content.data
* group[=].element[=].target.equivalence = #equivalent

// Type MIME
* group[=].element[+].code = #FRLMObservationMedia.content.contentType
* group[=].element[=].target.code = #Media.content.contentType
* group[=].element[=].target.equivalence = #equivalent

// Sujet ou specimen
* group[=].element[+].code = #FRLMObservationMedia.subject
* group[=].element[=].target.code = #Media.subject
* group[=].element[=].target.display = "FRPatientINSDocument / FRSpecimenDocument"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où subject[x] référence un FRLMPatient, ou un FRLMSpecimen (Media.subject n'a pas de champ specimen dédié séparé)."

// Note
* group[=].element[+].code = #FRLMObservationMedia.note
* group[=].element[=].target.code = #Media.note
* group[=].element[=].target.equivalence = #equivalent

// Performer
* group[=].element[+].code = #FRLMObservationMedia.header.performer[x]
* group[=].element[=].target.code = #Media.operator
* group[=].element[=].target.equivalence = #equivalent

// participant
* group[=].element[+].code = #FRLMObservationMedia.header.participant[x]
* group[=].element[=].target.equivalence = #unmatched

// author
* group[=].element[+].code = #FRLMObservationMedia.header.author[x]
* group[=].element[=].target.equivalence = #unmatched

// informant
* group[=].element[+].code = #FRLMObservationMedia.header.informant
* group[=].element[=].target.equivalence = #unmatched