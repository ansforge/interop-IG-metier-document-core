Instance: FRSectionQRCodeLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMQRCode → FRCDAQRCode / FRLMQRCode → FRCompositionDocument.section:sectionQrCode"
Description: "Mapping des éléments du modèle métier FRLMQRCode vers la section CDA FRCDAQRCode, puis vers la section FHIR FRCompositionDocument.section:sectionQrCode."
* title = "Mapping Métier/CDA/FHIR : \"Code à barres\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQRCode"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-code-a-barres"
// Élément racine
* group[=].element[+].code = #FRLMQRCode
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDACodeABarres"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMQRCode.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMQRCode.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMQRCode.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// Code à barres
* group[=].element[+].code = #FRLMQRCode.entry.observationMedia:FRLMObservationMedia
* group[=].element[=].target.code = #Section.entry.FRCDACodeABarres
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQRCode"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMQRCode
* group[=].element[=].target.code = #Composition.section:sectionQrCode
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionQrCode"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMQRCode.codeSection
* group[=].element[=].target.code = #Composition.section:sectionQrCode.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMQRCode.titleSection
* group[=].element[=].target.code = #Composition.section:sectionQrCode.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMQRCode.description
* group[=].element[=].target.code = #Composition.section:sectionQrCode.text
* group[=].element[=].target.equivalence = #equivalent
// Code à barres
* group[=].element[+].code = #FRLMQRCode.entry.observationMedia:FRLMObservationMedia
* group[=].element[=].target.code = #Composition.section:sectionQrCode.entry:FRCDAMediaDocument
* group[=].element[=].target.equivalence = #equivalent