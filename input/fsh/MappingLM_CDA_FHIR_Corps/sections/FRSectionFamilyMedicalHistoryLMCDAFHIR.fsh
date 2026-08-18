Instance: FRSectionFamilyMedicalHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMFamilyMedicalHistory → FRCDAAntecedentsFamiliaux / FRLMFamilyMedicalHistory → FRCompositionDocument.section:sectionFamilyMedicalHistory"
Description: "Mapping des éléments du modèle métier FRLMFamilyMedicalHistory vers la section CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRCompositionDocument.section:sectionFamilyMedicalHistory."
* title = "Mapping Métier/CDA/FHIR : \"Antécédents familiaux\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMedicalHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-antecedents-familiaux"
// Élément racine
* group[=].element[+].code = #FRLMFamilyMedicalHistory
* group[=].element[=].target.code = #Organizer
* group[=].element[=].target.display = "FRCDAAntecedentsFamiliaux"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.codeSection
* group[=].element[=].target.code = #Organizer.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.titleSection
* group[=].element[=].target.code = #Organizer.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.description
* group[=].element[=].target.code = #Organizer.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Antécédent familial
* group[=].element[+].code = #FRLMFamilyMedicalHistory.entry.familyMemberHistory
* group[=].element[=].target.code = #Organizer.entry:FRCDAAntecedentsFamiliaux
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMedicalHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMFamilyMedicalHistory
* group[=].element[=].target.code = #Composition.section:sectionFamilyMedicalHistory
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionFamilyMedicalHistory"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.codeSection
* group[=].element[=].target.code = #Composition.section:sectionFamilyMedicalHistory.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.titleSection
* group[=].element[=].target.code = #Composition.section:sectionFamilyMedicalHistory.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.description
* group[=].element[=].target.code = #Composition.section:sectionFamilyMedicalHistory.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Antécédent familial
* group[=].element[+].code = #FRLMFamilyMedicalHistory.entry.familyMemberHistory
* group[=].element[=].target.code = #Composition.section:sectionFamilyMedicalHistory.entry:FRFamilyMemberHistoryDocument
* group[=].element[=].target.equivalence = #equivalent