Instance: FRSectionMedicationRequestLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationPrescription → FRCDAPrescriptionMedicaments / FRLMMedicationPrescription → FRCompositionDocument.section:sectionMedicationRequest"
Description: "Mapping des éléments du modèle métier FRLMMedicationPrescription vers la section CDA FRCDAPrescriptionMedicaments, puis vers la section FHIR FRCompositionDocument.section:sectionMedicationRequest."
* title = "Mapping Métier/CDA/FHIR : \"Prescription de médicaments\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-prescription"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-prescription-medicaments"
// élément racine
* group[=].element[+].code = #FRLMMedicationPrescription
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments
* group[=].element[=].target[=].equivalence = #equivalent
// auteur de la prescription
* group[=].element[+].code = #FRLMMedicationPrescription.author[x]
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicationPrescription.codeSection
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicationPrescription.titleSection
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicationPrescription.description
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement prescrit
* group[=].element[+].code = #FRLMMedicationPrescription.entry.prescriptionItem:FRLMPrescriptionItem
* group[=].element[=].target[+].code = #FRCDAPrescriptionMedicaments.entry:FRCDATraitementPrescrit
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-prescription"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMMedicationPrescription
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicationRequest
* group[=].element[=].target[=].equivalence = #equivalent   
// auteur de la prescription
* group[=].element[+].code = #FRLMMedicationPrescription.author[x]
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicationRequest.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicationPrescription.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicationRequest.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicationPrescription.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicationRequest.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicationPrescription.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicationRequest.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Traitement prescrit
* group[=].element[+].code = #FRLMMedicationPrescription.entry.prescriptionItem:FRLMPrescriptionItem
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicationRequest.entry:FRMedicationRequestDocument
* group[=].element[=].target[=].equivalence = #equivalent
