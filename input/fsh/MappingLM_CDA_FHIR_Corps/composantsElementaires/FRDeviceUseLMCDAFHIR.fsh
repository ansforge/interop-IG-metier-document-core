Instance: FRDeviceUseLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDeviceUse → FRCDADispositifMedical / FRLMDeviceUse → FRDeviceUseStatementDocument"
Description: "Mapping des éléments du modèle métier FRLMDeviceUse vers le profil CDA FRCDADispositifMedical, puis vers le profil FHIR FRDeviceUseStatementDocument."

* name = "FRDeviceUseLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Utilisation de dispositif médical\""
* status = #draft
* experimental = false

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
* group[=].element[=].target.code = #Supply.effectiveTime
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Le CDA ne décompose pas l'intervalle en low/high distincts ; le début est porté par l'ensemble de effectiveTime."

// Date de fin d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse.endDate
* group[=].element[=].target.code = #Supply.effectiveTime
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Le CDA ne décompose pas l'intervalle en low/high distincts ; la fin est portée par l'ensemble de effectiveTime."

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
* group[=].element[+].code = #FRLMDeviceUse.reason[x]
* group[=].element[=].target.code = #Supply.entryRelationship:frEnRapportAvecALD
* group[=].element[=].target.equivalence = #relatedto

// Motif de l'utilisation (lié à un accident du travail)
* group[=].element[+].code = #FRLMDeviceUse.reason[x]
* group[=].element[=].target.code = #Supply.entryRelationship:frEnRapportAvecAccidentTravail
* group[=].element[=].target.equivalence = #relatedto

// Motif de l'utilisation (lié à la prévention)
* group[=].element[+].code = #FRLMDeviceUse.reason[x]
* group[=].element[=].target.code = #Supply.entryRelationship:frEnRapportAvecLaPrevention
* group[=].element[=].target.equivalence = #relatedto

// Motif de l'utilisation (acte)
* group[=].element[+].code = #FRLMDeviceUse.reason[x]
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
* group[=].element[=].target.code = #DeviceUseStatement.timing[x]
* group[=].element[=].target.equivalence = #equivalent

// Date de début d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse.onsetDate
* group[=].element[=].target.code = #DeviceUseStatement.timing[x]
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing[x] n'est pas décomposé en start/end distincts sur ce profil ; le début est porté par l'ensemble du choix de type."

// Date de fin d'utilisation
* group[=].element[+].code = #FRLMDeviceUse.periodOfUse.endDate
* group[=].element[=].target.code = #DeviceUseStatement.timing[x]
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "timing[x] n'est pas décomposé en start/end distincts sur ce profil ; la fin est portée par l'ensemble du choix de type."

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
* group[=].element[+].code = #FRLMDeviceUse.reason[x]
* group[=].element[=].target.code = #DeviceUseStatement.reasonCode
* group[=].element[=].target.equivalence = #equivalent
// ALD, accident du travail ou prévention
* group[=].element[+].code = #FRLMDeviceUse.reason[x]
* group[=].element[=].target.code = #DeviceUseStatement.reasonReference
* group[=].element[=].target.display = "FRObservationALDDocument / FRObservationWorkRelatedAccidentDocument / FRObservationPreventionDocument"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cible non slicée ; le motif référence l'une de ces observations selon le contexte métier."
// Commentaire
* group[=].element[+].code = #FRLMDeviceUse.note
* group[=].element[=].target.code = #DeviceUseStatement.note
* group[=].element[=].target.equivalence = #equivalent
