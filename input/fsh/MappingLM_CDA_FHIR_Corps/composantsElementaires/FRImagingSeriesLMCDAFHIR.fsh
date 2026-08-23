Instance: FRImagingSeriesLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSeries → FRCDADICOMSerieImagerie / FRLMSeries → FRImagingStudyDocument"
Description: "Mapping des éléments du modèle métier FRLMSeries vers le profil CDA FRCDADICOMSerieImagerie, puis vers le profil FHIR FRImagingStudyDocument."
* name = "FRImagingSeriesLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Série d'imagerie\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSeries"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-serie-imagerie"
// Élément racine
* group[=].element[+].code = #FRLMSeries
* group[=].element[=].target.code = #Act
* group[=].element[=].target.display = "FRCDADICOMSerieImagerie"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de la série
* group[=].element[+].code = #FRLMSeries.seriesUid
* group[=].element[=].target.code = #Act.id
* group[=].element[=].target.equivalence = #equivalent
// Numéro de la série
* group[=].element[+].code = #FRLMSeries.number
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour number."
// Modalité de la série
* group[=].element[+].code = #FRLMSeries.seriesModality
* group[=].element[=].target.code = #Act.code.qualifier
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMSeries.bodySite
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour bodySite."
// Spécimen associé
* group[=].element[+].code = #FRLMSeries.specimen
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite identifiée dans FRCDADICOMSerieImagerie pour specimen."
// Nombre d'instances
* group[=].element[+].code = #FRLMSeries.numberOfInstances
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour numberOfInstances."
// Endpoint de la série
* group[=].element[+].code = #FRLMSeries.seriesEndpoint
* group[=].element[=].target.code = #Act.entryRelationship.observation.text
* group[=].element[=].target.equivalence = #relatedto
// Date de début de la série
* group[=].element[+].code = #FRLMSeries.started
* group[=].element[=].target.code = #Act.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// SOP instance
* group[=].element[+].code = #FRLMSeries.instanceSOP
* group[=].element[=].target.code = #Act.entryRelationship.observation
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Act.entryRelationship.observation référence le profil CDA FRCDADICOMSOPInstanceObservation ; ses sous-champs sont mappés dans le groupe dédié ci-dessous."

// Sous-groupe de mapping : SOP instance (FRLMSOPInstance) → CDA FRCDADICOMSOPInstanceObservation
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSOPInstance"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-sop-instance-observation"
// SOP instance - Identifiant
* group[=].element[+].code = #FRLMSOPInstance.header.identifier
* group[=].element[=].target.code = #Observation.id
* group[=].element[=].target.equivalence = #equivalent
// SOP instance - Classe SOP
* group[=].element[+].code = #FRLMSOPInstance.sopClass
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// SOP instance - Numéro d'instance
* group[=].element[+].code = #FRLMSOPInstance.instanceNumber
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMSOPInstanceObservation pour instanceNumber."
// SOP instance - Nombre de frames
* group[=].element[+].code = #FRLMSOPInstance.numberOfFrames
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun attribut explicite identifié dans FRCDADICOMSOPInstanceObservation pour numberOfFrames."

// Sous-groupe de mapping : Endpoint (FRLMEndpoint) → CDA FRCDADICOMSOPInstanceObservation
// FRLMSeries.seriesEndpoint référence FRLMEndpoint ; l'information WADO est portée par le
// même Observation.text que la SOP instance dans FRCDADICOMSOPInstanceObservation.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEndpoint"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-sop-instance-observation"
// Endpoint - Connection type
* group[=].element[+].code = #FRLMEndpoint.connectionType
* group[=].element[=].target.code = #Observation.text.reference
* group[=].element[=].target.equivalence = #relatedto
// Endpoint - Payload type
* group[=].element[+].code = #FRLMEndpoint.payloadType
* group[=].element[=].target.code = #Observation.text.mediaType
* group[=].element[=].target.equivalence = #relatedto
// Endpoint - Adresse
* group[=].element[+].code = #FRLMEndpoint.address
* group[=].element[=].target.code = #Observation.text.reference
* group[=].element[=].target.equivalence = #relatedto

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSeries"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document"
// Élément racine
* group[=].element[+].code = #FRLMSeries
* group[=].element[=].target.code = #ImagingStudy
* group[=].element[=].target.display = "FRImagingStudyDocument"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Le modèle FRLMSeries alimente principalement ImagingStudy.series."
// identifiant de la série
* group[=].element[+].code = #FRLMSeries.seriesUid
* group[=].element[=].target.code = #ImagingStudy.series.uid
* group[=].element[=].target.equivalence = #relatedto
// Numéro de la série
* group[=].element[+].code = #FRLMSeries.number
* group[=].element[=].target.code = #ImagingStudy.series.number
* group[=].element[=].target.equivalence = #equivalent
// Modalité de la série
* group[=].element[+].code = #FRLMSeries.seriesModality
* group[=].element[=].target.code = #ImagingStudy.series.modality
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMSeries.bodySite
* group[=].element[=].target.code = #ImagingStudy.series.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Spécimen associé
* group[=].element[+].code = #FRLMSeries.specimen
* group[=].element[=].target.code = #ImagingStudy.series.specimen
* group[=].element[=].target.equivalence = #equivalent
// Nombre d'instances
* group[=].element[+].code = #FRLMSeries.numberOfInstances
* group[=].element[=].target.code = #ImagingStudy.series.numberOfInstances
* group[=].element[=].target.equivalence = #equivalent
// Endpoint de la série
* group[=].element[+].code = #FRLMSeries.seriesEndpoint
* group[=].element[=].target.code = #ImagingStudy.series.endpoint
* group[=].element[=].target.equivalence = #equivalent
// Date de la série d'actes
* group[=].element[+].code = #FRLMSeries.started
* group[=].element[=].target.code = #ImagingStudy.series.started
* group[=].element[=].target.equivalence = #equivalent
// SOP instance
* group[=].element[+].code = #FRLMSeries.instanceSOP
* group[=].element[=].target.code = #ImagingStudy.series.instance
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : SOP instance (FRLMSOPInstance) → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSOPInstance"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document"
// SOP instance - Identifiant
* group[=].element[+].code = #FRLMSOPInstance.header.identifier
* group[=].element[=].target.code = #ImagingStudy.series.instance.uid
* group[=].element[=].target.equivalence = #relatedto
// SOP instance - Classe SOP
* group[=].element[+].code = #FRLMSOPInstance.sopClass
* group[=].element[=].target.code = #ImagingStudy.series.instance.sopClass
* group[=].element[=].target.equivalence = #equivalent
// SOP instance - Numéro d'instance
* group[=].element[+].code = #FRLMSOPInstance.instanceNumber
* group[=].element[=].target.code = #ImagingStudy.series.instance.number
* group[=].element[=].target.equivalence = #equivalent
// SOP instance - Nombre de frames
* group[=].element[+].code = #FRLMSOPInstance.numberOfFrames
* group[=].element[=].target.code = #ImagingStudy.series.instance.extension:number-of-frames
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : Endpoint (FRLMEndpoint) → FHIR
// ImagingStudy.series.endpoint est une simple Reference(Endpoint) non décomposée dans ce
// profil ; ses attributs ne sont pas accessibles via un ElementDefinition dédié.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEndpoint"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document"
// Endpoint - Connection type
* group[=].element[+].code = #FRLMEndpoint.connectionType
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "ImagingStudy.series.endpoint est une simple Reference(Endpoint) ; connectionType n'est pas accessible sans résoudre la référence."
// Endpoint - Payload type
* group[=].element[+].code = #FRLMEndpoint.payloadType
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "ImagingStudy.series.endpoint est une simple Reference(Endpoint) ; payloadType n'est pas accessible sans résoudre la référence."
// Endpoint - Adresse
* group[=].element[+].code = #FRLMEndpoint.address
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "ImagingStudy.series.endpoint est une simple Reference(Endpoint) ; address n'est pas accessible sans résoudre la référence."
