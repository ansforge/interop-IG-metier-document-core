Instance: FRSectionMedicalDevicesAndImplantsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicalDevicesAndImplants → FRCDADispositifsMedicaux / FRLMMedicalDevicesAndImplants → FRCompositionDocument.section:sectionMedicalDevices"
Description: "Mapping des éléments du modèle métier FRLMMedicalDevicesAndImplants vers la section CDA FRCDADispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalDevices."
* name = "FRSectionMedicalDevicesAndImplantsLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Dispositifs médicaux\""
* experimental = false
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicesAndImplants"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-dispositifs-medicaux"
// élément racine
* group[=].element[+].code = #FRLMMedicalDevicesAndImplants
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDADispositifsMedicaux"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicalDevicesAndImplants.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicalDevicesAndImplants.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicalDevicesAndImplants.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Dispositif medical
* group[=].element[+].code = #FRLMMedicalDevicesAndImplants.entry.deviceUse
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].display = "FRCDADispositifMedical"
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicesAndImplants"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMMedicalDevicesAndImplants
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionMedicalDevices"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMMedicalDevicesAndImplants.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMMedicalDevicesAndImplants.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMMedicalDevicesAndImplants.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Dispositif medical
* group[=].element[+].code = #FRLMMedicalDevicesAndImplants.entry.deviceUse
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].display = "FRDeviceUseStatementDocument"
* group[=].element[=].target[=].equivalence = #equivalent