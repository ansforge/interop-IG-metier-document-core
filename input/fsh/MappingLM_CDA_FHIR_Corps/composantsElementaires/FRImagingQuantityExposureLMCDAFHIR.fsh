Instance: FRImagingQuantityExposureLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMQuantityExposure → FRCDADICOMQuantite / FRLMQuantityExposure → FRObservationRadiationExposureDocument.component"
Description: "Mapping des éléments du modèle métier FRLMQuantityExposure vers l'entrée CDA FRCDADICOMQuantite, puis vers le profil FHIR FRObservationRadiationExposureDocument."
* title = "Mapping Métier/CDA/FHIR : Quantité d'exposition aux radiations"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-quantite-exposition"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-quantite"
// Élément racine
* group[=].element[+].code = #FRLMQuantityExposure
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDADICOMQuantite"
* group[=].element[=].target.equivalence = #equivalent
// Professionnel autorisant l'exposition
* group[=].element[+].code = #FRLMQuantityExposure.header.participant[x].participantProfessional
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite identifiée pour participantProfessional dans FRCDADICOMQuantite."
// Type de la mesure
* group[=].element[+].code = #FRLMQuantityExposure.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Valeur de la mesure
* group[=].element[+].code = #FRLMQuantityExposure.quantity
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique irradiée
* group[=].element[+].code = #FRLMQuantityExposure.bodySite
* group[=].element[=].target.code = #Observation.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Précision topographique
* group[=].element[+].code = #FRLMQuantityExposure.bodySite:FRLMBodyStructure.locationQualifier
* group[=].element[=].target.code = #Observation.targetSiteCode.qualifier
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-quantite-exposition"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-radiation-exposure-document"
// Élément racine
* group[=].element[+].code = #FRLMQuantityExposure
* group[=].element[=].target.code = #Observation.component
* group[=].element[=].target.display = "FRObservationRadiationExposureDocument.component"
* group[=].element[=].target.equivalence = #equivalent
// Professionnel autorisant l'exposition
* group[=].element[+].code = #FRLMQuantityExposure.header.participant[x].participantProfessional
* group[=].element[=].target.code = #Observation.performer:professionnelAutorisantExposition
* group[=].element[=].target.equivalence = #equivalent
// Type de la mesure de la quantité d'exposition
* group[=].element[+].code = #FRLMQuantityExposure.type
* group[=].element[=].target.code = #Observation.component.code
* group[=].element[=].target.equivalence = #equivalent
// Valeur de la mesure de la quantité d'exposition
* group[=].element[+].code = #FRLMQuantityExposure.quantity
* group[=].element[=].target.code = #Observation.component.valueQuantity
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique irradiée
* group[=].element[+].code = #FRLMQuantityExposure.bodySite
* group[=].element[=].target.code = #Observation.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Précision topographique de la localisation anatomique
* group[=].element[+].code = #FRLMQuantityExposure.bodySite:FRLMBodyStructure.locationQualifier
* group[=].element[=].target.code = #Observation.bodySite.extension:precisionTopographique
* group[=].element[=].target.equivalence = #equivalent