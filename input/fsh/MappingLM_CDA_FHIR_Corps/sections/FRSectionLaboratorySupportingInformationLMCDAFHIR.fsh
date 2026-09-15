Instance: FRSectionLaboratorySupportingInformationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSupportingInformation → FRCDASectionInformationsCliniques / FRLMSupportingInformation → FRServiceRequestDocument.supportingInformation"
Description: "Mapping des éléments du modèle métier FRLMSupportingInformation (partagé avec le mapping imagerie) vers la section CDA FRCDASectionInformationsCliniques, puis vers FRServiceRequestDocument.supportingInformation (référencé depuis Composition.basedOn), pour le contexte biologie."
* name = "FRSectionLaboratorySupportingInformationLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : Informations cliniques (biologie)"
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-informations-cliniques"
// élément racine
* group[=].element[+].code = #FRLMSupportingInformation
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDASectionInformationsCliniques"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMSupportingInformation.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMSupportingInformation.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif
* group[=].element[+].code = #FRLMSupportingInformation.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// résultats cliniques et autres observations
* group[=].element[+].code = #FRLMSupportingInformation.entry.observation
* group[=].element[=].target.code = #Section.entry.observation
* group[=].element[=].target.display = "FRCDASimpleObservation"
* group[=].element[=].target.equivalence = #equivalent
// problèmes
* group[=].element[+].code = #FRLMSupportingInformation.entry.condition
* group[=].element[=].target.code = #Section.entry.observation
* group[=].element[=].target.display = "FRCDAProbleme"
* group[=].element[=].target.equivalence = #equivalent
// produits de santé administrés avant l'examen
* group[=].element[+].code = #FRLMSupportingInformation.entry.medicationAdministration
* group[=].element[=].display = "FRLMMedicationAdministration"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune entrée SubstanceAdministration prévue dans FRCDASectionInformationsCliniques pour FRLMSupportingInformation.entry.medicationAdministration."
// sexe clinique
* group[=].element[+].code = #FRLMSupportingInformation.entry.sexForClinicalUse
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifiée dans FRCDASectionInformationsCliniques pour FRLMSupportingInformation.entry.sexForClinicalUse ; cette donnée relève du contexte patient."
// historique vaccinal
* group[=].element[+].code = #FRLMSupportingInformation.entry.vaccination
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune entrée SubstanceAdministration prévue dans FRCDASectionInformationsCliniques pour FRLMSupportingInformation.entry.vaccination."
// autres informations cliniques pertinentes
* group[=].element[+].code = #FRLMSupportingInformation.entry.otherSupportingInformation
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifiée dans FRCDASectionInformationsCliniques pour FRLMSupportingInformation.entry.otherSupportingInformation ; la ressource référencée n'est pas typée."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document"
// élément racine
* group[=].element[+].code = #FRLMSupportingInformation
* group[=].element[=].target.code = #Composition.basedOn.serviceRequest.supportingInformation
* group[=].element[=].target.display = "FRServiceRequestDocument.supportingInformation"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "ServiceRequest est référencé depuis Composition.extension:basedOn (cf. FROrderLMCDAFHIR / FRServiceRequestLMCDAFHIR) ; son supportingInformation porte le contenu de la section."
// résultats cliniques et autres observations
* group[=].element[+].code = #FRLMSupportingInformation.entry.observation
* group[=].element[=].target.code = #ServiceRequest.supportingInformation
* group[=].element[=].target.display = "Observation"
* group[=].element[=].target.equivalence = #equivalent
// problèmes
* group[=].element[+].code = #FRLMSupportingInformation.entry.condition
* group[=].element[=].target.code = #ServiceRequest.supportingInformation
* group[=].element[=].target.display = "FRConditionDocument"
* group[=].element[=].target.equivalence = #equivalent
// produits de santé administrés avant l'examen
* group[=].element[+].code = #FRLMSupportingInformation.entry.medicationAdministration
* group[=].element[=].display = "FRLMMedicationAdministration"
* group[=].element[=].target.code = #ServiceRequest.supportingInformation
* group[=].element[=].target.display = "FRMedicationAdministrationDocument"
* group[=].element[=].target.equivalence = #equivalent
// sexe clinique
* group[=].element[+].code = #FRLMSupportingInformation.entry.sexForClinicalUse
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible FHIR explicite identifiée pour FRLMSupportingInformation.entry.sexForClinicalUse ; cette donnée existe dans le patient."
// historique vaccinal
* group[=].element[+].code = #FRLMSupportingInformation.entry.vaccination
* group[=].element[=].target.code = #ServiceRequest.supportingInformation
* group[=].element[=].target.display = "FRImmunizationDocument"
* group[=].element[=].target.equivalence = #equivalent
// autres informations cliniques pertinentes
* group[=].element[+].code = #FRLMSupportingInformation.entry.otherSupportingInformation
* group[=].element[=].target.code = #ServiceRequest.supportingInformation
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "supportingInformation est une Reference générique dans ce profil, cohérente avec le type Reference(Resource) non typé de otherSupportingInformation."
