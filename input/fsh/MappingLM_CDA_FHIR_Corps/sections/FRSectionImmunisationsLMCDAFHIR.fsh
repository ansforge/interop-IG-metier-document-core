Instance: FRSectionImmunisationsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMImmunisations → FRCDAVaccinations / FRLMImmunisations → FRCompositionDocument.section:sectionImmunizations"
Description: "Mapping des éléments du modèle métier FRLMImmunisations vers la section CDA FRCDAVaccinations, puis vers la section FHIR FRCompositionDocument.section:sectionImmunizations."
* name = "FRSectionImmunisationsLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Vaccinations\""
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisations"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-vaccinations"
// Élément racine
* group[=].element[+].code = #FRLMImmunisations
* group[=].element[=].target.code = #Section  
* group[=].element[=].target.display = "FRCDAVaccinations"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMImmunisations.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMImmunisations.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMImmunisations.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRLMImmunisations.entry.immunisation
* group[=].element[=].target.code = #Section.entry
* group[=].element[=].target.display = "FRCDAVaccination"
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisations"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMImmunisations
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionImmunizations"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMImmunisations.codeSection
* group[=].element[=].target.code = #Composition.section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMImmunisations.titleSection
* group[=].element[=].target.code = #Composition.section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMImmunisations.description
* group[=].element[=].target.code = #Composition.section.text
* group[=].element[=].target.equivalence = #equivalent
// entrée de la section
* group[=].element[+].code = #FRLMImmunisations.entry.immunisation
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRImmunizationDocument"
* group[=].element[=].target.equivalence = #equivalent