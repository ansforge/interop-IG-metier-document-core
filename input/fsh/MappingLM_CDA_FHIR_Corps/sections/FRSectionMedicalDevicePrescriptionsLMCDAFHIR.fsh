Instance: FRSectionMedicalDevicePrescriptionsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicalDevicePrescriptions → FRCDAPrescriptionDispositifsMedicaux / FRLMMedicalDevicePrescriptions → FRCompositionDocument.section:sectionMedicalDevicePrescription"
Description: "Mapping des éléments du modèle métier FRLMMedicalDevicePrescriptions vers la section CDA FRCDAPrescriptionDispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalDevicePrescription."
* title = "Mapping Métier/CDA/FHIR : \"Prescription de dispositifs médicaux\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medical-device-prescriptions"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-dispositifs-medicaux"
// élément racine
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux
* group[=].element[=].target[=].equivalence = #equivalent
// auteur de la prescription
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.author[x]
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.codeSection
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.titleSection
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.description
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Dispositif medical prescrit
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.entry.deviceUse:FRLMDeviceUse
* group[=].element[=].target[+].code = #FRCDAPrescriptionDispositifsMedicaux.entry:FRCDADispositifMedical
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medical-device-prescriptions"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicalDevicePrescription
* group[=].element[=].target[=].equivalence = #equivalent
// auteur de la prescription
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.author[x]
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicalDevicePrescription.author
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicalDevicePrescription.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicalDevicePrescription.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicalDevicePrescription.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Dispositif medical prescrit
* group[=].element[+].code = #FRLMMedicalDevicePrescriptions.entry.deviceUse:FRLMDeviceUse
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionMedicalDevicePrescription.entry:FRDeviceRequestDocument
* group[=].element[=].target[=].equivalence = #equivalent