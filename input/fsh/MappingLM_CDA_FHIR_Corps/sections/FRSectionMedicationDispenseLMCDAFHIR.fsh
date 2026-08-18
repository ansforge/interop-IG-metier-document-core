Instance: FRSectionMedicationDispenseLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationDispensations → FRCDADispensationMedicaments / FRLMMedicationDispensations → FRCompositionDocument.section:sectionMedicationDispense"
Description: "Mapping des éléments du modèle métier FRLMMedicationDispensations vers la section CDA FRCDADispensationMedicaments, puis vers la section FHIR FRCompositionDocument.section:sectionMedicationDispense."
* title = "Mapping Métier/CDA/FHIR : \"Dispensation de médicaments\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-dispensations"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dispensation-medicaments"
// Élément racine
* group[=].element[+].code = #FRLMMedicationDispensations
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDADispensationMedicaments"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicationDispensations.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMMedicationDispensations.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMMedicationDispensations.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// entrées de la section
* group[=].element[+].code = #FRLMMedicationDispensations.entry.medicationDispense:FRLMMedicationDispense
* group[=].element[=].target.code = #Section.entry.FRCDATraitementDispense
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-dispensations"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMMedicationDispensations
* group[=].element[=].target.code = #Composition.section:sectionMedicationDispense
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionMedicationDispense"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicationDispensations.codeSection
* group[=].element[=].target.code = #Composition.section:sectionMedicationDispense.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMMedicationDispensations.description
* group[=].element[=].target.code = #Composition.section:sectionMedicationDispense.text
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMMedicationDispensations.titleSection
* group[=].element[=].target.code = #Composition.section:sectionMedicationDispense.title
* group[=].element[=].target.equivalence = #equivalent
// entrées de la section
* group[=].element[+].code = #FRLMMedicationDispensations.entry.medicationDispense:FRLMMedicationDispense
* group[=].element[=].target.code = #Composition.section:sectionMedicationDispense.entry:FRMedicationDispenseDocument
* group[=].element[=].target.equivalence = #equivalent
