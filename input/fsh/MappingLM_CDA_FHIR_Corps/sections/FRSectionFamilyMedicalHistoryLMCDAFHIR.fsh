Instance: FRSectionFamilyMedicalHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMFamilyMedicalHistory → FRCDAAntecedentsFamiliaux / FRLMFamilyMedicalHistory → FRCompositionDocument.section:sectionFamilyMedicalHistory"
Description: "Mapping des éléments du modèle métier FRLMFamilyMedicalHistory vers la section CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRCompositionDocument.section:sectionFamilyMedicalHistory."
* name = "FRSectionFamilyMedicalHistoryLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Antécédents familiaux\""
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMedicalHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-antecedents-familiaux"
// Élément racine
* group[=].element[+].code = #FRLMFamilyMedicalHistory
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDASectionAntecedentsFamiliaux"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Antécédent familial
* group[=].element[+].code = #FRLMFamilyMedicalHistory.entry.familyMemberHistory
* group[=].element[=].target.code = #Section.entry
* group[=].element[=].target.display = "FRCDAAntecedentsFamiliaux"
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMedicalHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMFamilyMedicalHistory
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionFamilyMedicalHistory"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.codeSection
* group[=].element[=].target.code = #Composition.section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.titleSection
* group[=].element[=].target.code = #Composition.section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMFamilyMedicalHistory.description
* group[=].element[=].target.code = #Composition.section.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Antécédent familial
* group[=].element[+].code = #FRLMFamilyMedicalHistory.entry.familyMemberHistory
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRFamilyMemberHistoryDocument"
* group[=].element[=].target.equivalence = #equivalent