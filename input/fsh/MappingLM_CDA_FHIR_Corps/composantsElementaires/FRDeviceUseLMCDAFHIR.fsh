Instance: FRDeviceUseLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDeviceUse → FRCDADispositifMedical / FRLMDeviceUse → FRDeviceUseStatementDocument"
Description: "Mapping des éléments du modèle métier FRLMDeviceUse vers le profil CDA FRCDADispositifMedical, puis vers le profil FHIR FRDeviceUseStatementDocument."

* title = "Mapping Métier/CDA/FHIR : \"Utilisation de dispositif médical\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dispositif-medical"

// Élément racine
* group[=].element[+].code = #FRLMDeviceUse
* group[=].element[=].target.code = #Supply
* group[=].element[=].target.display = "FRCDADispositifMedical"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMDeviceUse.header.identifier
* group[=].element[=].target.code = #Supply.id
* group[=].element[=].target.equivalence = #equivalent

// Statut de l'utilisation du dispositif
* group[=].element[+].code = #FRLMDeviceUse.header.status
* group[=].element[=].target.code = #Supply.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Période d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse
* group[=].element[=].target.code = #Supply.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Date de début d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse.onsetDate
* group[=].element[=].target.code = #Supply.effectiveTime.low
* group[=].element[=].target.equivalence = #equivalent

// Date de fin d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse.endDate
* group[=].element[=].target.code = #Supply.effectiveTime.high
* group[=].element[=].target.equivalence = #equivalent

// Durée d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse.duration
* group[=].element[=].target.code = #Supply.expectedUseTime
* group[=].element[=].target.equivalence = #equivalent

// Dispensateur
* group[=].element[+].code = #FRLMDeviceUse.header.performer[x]
* group[=].element[=].target.code = #Supply.performer
* group[=].element[=].target.equivalence = #relatedto

// Dispositif médical
* group[=].element[+].code = #FRLMDeviceUse.device
* group[=].element[=].target.code = #Supply.participant
* group[=].element[=].target.equivalence = #equivalent

// Localisation anatomique
* group[=].element[+].code = #FRLMDeviceUse.bodySite
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite de bodySite dans FRCDADispositifMedical."

// Motif de l'utilisation (lié à l'ALD)
* group[=].element[+].code = #FRLMDeviceUse.reason[x]:FRLMCondition
* group[=].element[=].target.code = #Supply.entryRelationship:frEnRapportAvecALD
* group[=].element[=].target.equivalence = #relatedto

// Motif de l'utilisation (lié à un accident du travail)
* group[=].element[+].code = #FRLMDeviceUse.reason[x]:FRLMObservation
* group[=].element[=].target.code = #Supply.entryRelationship:frEnRapportAvecAccidentTravail
* group[=].element[=].target.equivalence = #relatedto

// Motif de l'utilisation (lié à la prévention)
* group[=].element[+].code = #FRLMDeviceUse.reason[x]:FRLMObservation
* group[=].element[=].target.code = #Supply.entryRelationship:frEnRapportAvecPrevention
* group[=].element[=].target.equivalence = #relatedto

// Motif de l'utilisation (acte)
* group[=].element[+].code = #FRLMDeviceUse.reason[x]:FRLMProcedure
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun entryRelationship explicite FRCDADispositifMedical pour le motif de type acte."

// Commentaire
* group[=].element[+].code = #FRLMDeviceUse.note
* group[=].element[=].target.code = #Supply.text
* group[=].element[=].target.equivalence = #relatedto

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-device-use-statement-document"

// Élément racine
* group[=].element[+].code = #FRLMDeviceUse
* group[=].element[=].target.code = #DeviceUseStatement
* group[=].element[=].target.display = "FRDeviceUseStatementDocument"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMDeviceUse.header.identifier
* group[=].element[=].target.code = #DeviceUseStatement.identifier
* group[=].element[=].target.equivalence = #equivalent

// Statut de l'utilisation du dispositif
* group[=].element[+].code = #FRLMDeviceUse.header.status
* group[=].element[=].target.code = #DeviceUseStatement.status
* group[=].element[=].target.equivalence = #equivalent

// Période d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse
* group[=].element[=].target.code = #DeviceUseStatement.timingPeriod
* group[=].element[=].target.equivalence = #equivalent

// Date de début d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse.onsetDate
* group[=].element[=].target.code = #DeviceUseStatement.timingPeriod.start
* group[=].element[=].target.equivalence = #equivalent

// Date de fin d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse.endDate
* group[=].element[=].target.code = #DeviceUseStatement.timingPeriod.end
* group[=].element[=].target.equivalence = #equivalent

// Durée d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse.duration
* group[=].element[=].target.code = #DeviceUseStatement.timing[x]
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Le modèle métier porte une durée dédiée, alors que la cible FHIR ne fournit pas un champ direct équivalent sur DeviceUseStatement."

// Dispensateur
* group[=].element[+].code = #FRLMDeviceUse.header.performer[x]
* group[=].element[=].target.code = #DeviceUseStatement.extension:performer
* group[=].element[=].target.equivalence = #equivalent

// Dispositif médical
* group[=].element[+].code = #FRLMDeviceUse.device
* group[=].element[=].target.code = #DeviceUseStatement.device
* group[=].element[=].target.equivalence = #equivalent

// Localisation anatomique
* group[=].element[+].code = #FRLMDeviceUse.bodySite
* group[=].element[=].target.code = #DeviceUseStatement.bodySite
* group[=].element[=].target.equivalence = #relatedto

// Motif codé
* group[=].element[+].code = #FRLMDeviceUse.reason[x]:CodeableConcept
* group[=].element[=].target.code = #DeviceUseStatement.reasonCode
* group[=].element[=].target.equivalence = #equivalent
// ALD
* group[=].element[+].code = #FRLMDeviceUse.reason[x]:FRLMObservation
* group[=].element[=].target.code = #DeviceUseStatement.reasonReference:FRObservationALDDocument
* group[=].element[=].target.equivalence = #equivalent
// Accident du travail
* group[=].element[+].code = #FRLMDeviceUse.reason[x]:FRLMObservation
* group[=].element[=].target.code = #DeviceUseStatement.reasonReference:FRObservationWorkRelatedAccidentDocument
* group[=].element[=].target.equivalence = #equivalent
// Prévention
* group[=].element[+].code = #FRLMDeviceUse.reason[x]:FRLMObservation
* group[=].element[=].target.code = #DeviceUseStatement.reasonReference:FRObservationPreventionDocument
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMDeviceUse.note
* group[=].element[=].target.code = #DeviceUseStatement.note
* group[=].element[=].target.equivalence = #equivalent
