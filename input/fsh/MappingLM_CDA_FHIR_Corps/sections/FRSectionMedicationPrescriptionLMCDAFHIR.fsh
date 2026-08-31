Instance: FRSectionMedicationRequestLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationPrescription → FRCDAPrescriptionMedicaments / FRLMMedicationPrescription → FRCompositionDocument.section:sectionMedicationRequest"
Description: "Mapping des éléments du modèle métier FRLMMedicationPrescription vers la section CDA FRCDAPrescriptionMedicaments, puis vers la section FHIR FRCompositionDocument.section:sectionMedicationRequest."
* name = "FRSectionMedicationRequestLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Prescription de médicaments\""
* experimental = false
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationPrescription"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-prescription-medicaments"
// élément racine
* group[=].element[+].code = #FRLMMedicationPrescription
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDAPrescriptionMedicaments"
* group[=].element[=].target[=].equivalence = #equivalent
// auteur de la prescription
* group[=].element[+].code = #FRLMMedicationPrescription.author[x]
* group[=].element[=].target[+].code = #Section.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicationPrescription.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicationPrescription.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicationPrescription.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement prescrit
* group[=].element[+].code = #FRLMMedicationPrescription.entry.prescriptionItem
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].display = "FRCDATraitementPrescrit"
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationPrescription"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMMedicationPrescription
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionMedicationRequest"
* group[=].element[=].target[=].equivalence = #equivalent   
// auteur de la prescription
* group[=].element[+].code = #FRLMMedicationPrescription.author[x]
* group[=].element[=].target[+].code = #Composition.section.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicationPrescription.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicationPrescription.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicationPrescription.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement prescrit
* group[=].element[+].code = #FRLMMedicationPrescription.entry.prescriptionItem
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].display = "FRMedicationRequestDocument"
* group[=].element[=].target[=].equivalence = #equivalent
