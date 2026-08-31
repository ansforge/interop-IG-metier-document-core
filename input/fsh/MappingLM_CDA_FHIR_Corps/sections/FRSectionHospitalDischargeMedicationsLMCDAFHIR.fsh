Instance: FRSectionHospitalDischargeMedicationsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHospitalDischargeMedications → FRCDATraitementsALaSortie / FRLMHospitalDischargeMedications → FRCompositionDocument.section:sectionDischargeMedications"
Description: "Mapping des éléments du modèle métier FRLMHospitalDischargeMedications vers la section CDA FRCDATraitementsALaSortie, puis vers la section FHIR FRCompositionDocument.section:sectionDischargeMedications."
* name = "FRSectionHospitalDischargeMedicationsLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Traitements à la sortie\""
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHospitalDischargeMedications"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitements-a-la-sortie"
// Élément racine
* group[=].element[+].code = #FRLMHospitalDischargeMedications
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDATraitementsALaSortie"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications
* group[=].element[=].target.code = #Section.entry
* group[=].element[=].target.display = "FRCDATraitement"
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHospitalDischargeMedications"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMHospitalDischargeMedications
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionDischargeMedications"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.codeSection
* group[=].element[=].target.code = #Composition.section.code
* group[=].element[=].target.equivalence = #equivalent  
// Titre de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.titleSection
* group[=].element[=].target.code = #Composition.section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.description
* group[=].element[=].target.code = #Composition.section.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRMedicationAdministrationDocument"
* group[=].element[=].target.equivalence = #equivalent