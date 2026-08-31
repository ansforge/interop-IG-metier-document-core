Instance: FRSectionMedicalDevicePrescriptionsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicalDevicePrescriptions → FRCDAPrescriptionDispositifsMedicaux / FRLMMedicalDevicePrescriptions → FRCompositionDocument.section:sectionMedicalDevicePrescription"
Description: "Mapping des éléments du modèle métier FRLMMedicalDevicePrescriptions vers la section CDA FRCDAPrescriptionDispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalDevicePrescription."
* name = "FRSectionMedicalDevicePrescriptionsLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Prescription de dispositifs médicaux\""
* experimental = false
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicePrescriptions"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-prescription-dispositifs-medicaux"
// élément racine
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDAPrescriptionDispositifsMedicaux"
* group[=].element[=].target[=].equivalence = #equivalent
// auteur de la prescription
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.author[x]
* group[=].element[=].target[+].code = #Section.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Dispositif medical prescrit
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.entry.deviceUse
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].display = "FRCDADispositifMedical"
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicePrescriptions"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionMedicalDevicePrescription"
* group[=].element[=].target[=].equivalence = #equivalent
// auteur de la prescription
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.author[x]
* group[=].element[=].target[+].code = #Composition.section.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Dispositif medical prescrit
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.entry.deviceUse
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].display = "FRDeviceUseStatementDocument"
* group[=].element[=].target[=].equivalence = #equivalent