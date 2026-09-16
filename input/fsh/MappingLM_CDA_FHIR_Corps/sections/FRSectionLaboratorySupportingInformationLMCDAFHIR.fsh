Instance: FRSectionLaboratorySupportingInformationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSupportingInformation → FRServiceRequestDocument.supportingInformation"
Description: "Mapping des éléments du modèle métier FRLMSupportingInformation (partagé avec le mapping imagerie) vers FRServiceRequestDocument.supportingInfo (référencé depuis Composition.basedOn), pour le contexte biologie."
* name = "FRSectionLaboratorySupportingInformationLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : Informations cliniques (biologie)"
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation"
// élément racine
* group[=].element[+].code = #FRLMSupportingInformation
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target[=].comment = "Aucun équivalent CDA identifié."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document"
// élément racine
* group[=].element[+].code = #FRLMSupportingInformation
* group[=].element[=].target.code = #Composition.basedOn.serviceRequest.supportingInfo
* group[=].element[=].target.display = "FRServiceRequestDocument.supportingInfo"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "ServiceRequest est référencé depuis Composition.extension:basedOn (cf. FROrderLMCDAFHIR / FRServiceRequestLMCDAFHIR) ; son supportingInformation porte le contenu de la section."
// résultats cliniques et autres observations
* group[=].element[+].code = #FRLMSupportingInformation.entry.observation
* group[=].element[=].target.code = #ServiceRequest.supportingInfo
* group[=].element[=].target.display = "Observation"
* group[=].element[=].target.equivalence = #equivalent
// problèmes
* group[=].element[+].code = #FRLMSupportingInformation.entry.condition
* group[=].element[=].target.code = #ServiceRequest.supportingInfo
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
* group[=].element[=].display = "FRLMImmunisation"
* group[=].element[=].target.code = #ServiceRequest.supportingInfo
* group[=].element[=].target.display = "FRImmunizationDocument"
* group[=].element[=].target.equivalence = #equivalent
// autres informations cliniques pertinentes
* group[=].element[+].code = #FRLMSupportingInformation.entry.otherSupportingInformation
* group[=].element[=].display = "Resource"
* group[=].element[=].target.code = #ServiceRequest.supportingInfo
* group[=].element[=].target.display = "Reference(Resource)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "supportingInformation est une Reference générique dans ce profil, cohérente avec le type Reference(Resource) non typé de otherSupportingInformation."
