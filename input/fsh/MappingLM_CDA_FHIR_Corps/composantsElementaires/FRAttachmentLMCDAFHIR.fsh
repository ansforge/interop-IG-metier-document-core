Instance: FRAttachmentLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAttachment → FRCDADocumentAttache → FRDocumentReferenceDocument"
Description: "Mapping des éléments du modèle métier FRLMAttachment vers le profil CDA FRCDADocumentAttache, puis vers le profil FHIR FRDocumentReferenceDocument."
* title = "Mapping Métier/CDA/FHIR : \"Document Referencé\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-document-attache"
// Élément racine
* group[=].element[+].code = #FRLMAttachment
* group[=].element[=].target.code = #Organizer.component:frObservationMedia.observationMedia
* group[=].element[=].target.display = "FRCDADocumentAttache.component:frObservationMedia.observationMedia"
* group[=].element[=].target.equivalence = #equivalent
// Type MIME
* group[=].element[+].code = #FRLMAttachment.contentType
* group[=].element[=].target.code = #Organizer.component:frObservationMedia.observationMedia.value.mediaType
* group[=].element[=].target.equivalence = #equivalent
// Langue du document attaché
* group[=].element[+].code = #FRLMAttachment.language
* group[=].element[=].target.code = #Organizer.component:frObservationMedia.observationMedia.languageCode
* group[=].element[=].target.equivalence = #equivalent
// Document attaché encodé en Base64
* group[=].element[+].code = #FRLMAttachment.data
* group[=].element[=].target.code = #Organizer.component:frObservationMedia.observationMedia.value
* group[=].element[=].target.equivalence = #equivalent
// URL de la ressource
* group[=].element[+].code = #FRLMAttachment.url
* group[=].element[=].target.code = #Organizer.component:frObservationMedia.observationMedia.value.reference
* group[=].element[=].target.equivalence = #equivalent
// Taille du document attaché
* group[=].element[+].code = #FRLMAttachment.size
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut CDA direct identifié pour la taille de la pièce jointe."
// Titre du document attaché
* group[=].element[+].code = #FRLMAttachment.title
* group[=].element[=].target.equivalence = #Organizer.component:frTypeDocumentAttache.observation.text.reference
* group[=].element[=].target.comment = "Le titre du document attaché est mappé vers le texte de l'observation du type de document attaché."
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-document-reference-document"
// Élément racine
* group[=].element[+].code = #FRLMAttachment
* group[=].element[=].target.code = #DocumentReference.content.attachment
* group[=].element[=].target.display = "FRDocumentReferenceDocument.content.attachment"
* group[=].element[=].target.equivalence = #equivalent
// Type MIME
* group[=].element[+].code = #FRLMAttachment.contentType
* group[=].element[=].target.code = #DocumentReference.content.attachment.contentType
* group[=].element[=].target.equivalence = #equivalent
// Langue du document attaché
* group[=].element[+].code = #FRLMAttachment.language
* group[=].element[=].target.code = #DocumentReference.content.attachment.language
* group[=].element[=].target.equivalence = #equivalent
// Document attaché encodé en Base64
* group[=].element[+].code = #FRLMAttachment.data
* group[=].element[=].target.code = #DocumentReference.content.attachment.data
* group[=].element[=].target.equivalence = #equivalent
// Référence externe
* group[=].element[+].code = #FRLMAttachment.url
* group[=].element[=].target.code = #DocumentReference.content.attachment.url
* group[=].element[=].target.equivalence = #equivalent
// Taille du document attaché
* group[=].element[+].code = #FRLMAttachment.size
* group[=].element[=].target.code = #DocumentReference.content.attachment.size
* group[=].element[=].target.equivalence = #equivalent
// Titre du document attaché
* group[=].element[+].code = #FRLMAttachment.title
* group[=].element[=].target.code = #DocumentReference.content.attachment.title
* group[=].element[=].target.equivalence = #equivalent
