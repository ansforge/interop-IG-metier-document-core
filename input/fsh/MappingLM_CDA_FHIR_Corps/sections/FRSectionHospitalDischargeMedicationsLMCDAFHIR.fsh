Instance: FRSectionHospitalDischargeMedicationsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHospitalDischargeMedications → FRCDATraitementsALaSortie / FRLMHospitalDischargeMedications → FRCompositionDocument.section:sectionDischargeMedications"
Description: "Mapping des éléments du modèle métier FRLMHospitalDischargeMedications vers la section CDA FRCDATraitementsALaSortie, puis vers la section FHIR FRCompositionDocument.section:sectionDischargeMedications."
* title = "Mapping Métier/CDA/FHIR : \"Traitements à la sortie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-hospital-discharge-medications"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements-a-la-sortie"
// Élément racine
* group[=].element[+].code = #FRLMHospitalDischargeMedications
* group[=].element[=].target.code = #FRCDATraitementsALaSortie
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.codeSection
* group[=].element[=].target.code = #FRCDATraitementsALaSortie.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.titleSection
* group[=].element[=].target.code = #FRCDATraitementsALaSortie.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.description
* group[=].element[=].target.code = #FRCDATraitementsALaSortie.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications:FRLMMedicationAdministration
* group[=].element[=].target.code = #FRCDATraitementsALaSortie.entry.FRCDATraitement
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-hospital-discharge-medications"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMHospitalDischargeMedications
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionDischargeMedications
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.codeSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionDischargeMedications.code
* group[=].element[=].target.equivalence = #equivalent  
// Titre de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.titleSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionDischargeMedications.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.description
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionDischargeMedications.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionDischargeMedications.entry:FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent