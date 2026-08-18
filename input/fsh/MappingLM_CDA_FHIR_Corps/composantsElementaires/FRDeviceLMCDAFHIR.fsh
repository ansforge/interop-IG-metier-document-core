Instance: FRDeviceLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDevice → FRCDADispositifMedical / FRLMDevice → Device"
Description: "Mapping des éléments du modèle métier FRLMDevice vers le profil CDA FRCDADispositifMedical, puis vers la ressource FHIR Device."

* title = "Mapping Métier/CDA/FHIR : \"Dispositif médical\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dispositif-medical"

// Élément racine
* group[=].element[+].code = #FRLMDevice
* group[=].element[=].target.code = #FRCDADispositifMedical.participant.participantRole.playingDevice
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Le modèle métier FRLMDevice correspond à la composante playingDevice portée dans l'entrée CDA FRCDADispositifMedical."

// Identifiant du DM
* group[=].element[+].code = #FRLMDevice.identifier
* group[=].element[=].target.code = #FRCDADispositifMedical.participant.participantRole.id
* group[=].element[=].target.equivalence = #relatedto

// Identifiant unique du DM (UDI)
* group[=].element[+].code = #FRLMDevice.udi
* group[=].element[=].target.code = #FRCDADispositifMedical.participant.participantRole.id
* group[=].element[=].target.equivalence = #relatedto

// Fabricant
* group[=].element[+].code = #FRLMDevice.manufacturer
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ explicite de fabricant dans FRCDADispositifMedical.playingDevice."

// Date de fabrication
* group[=].element[+].code = #FRLMDevice.manufactureDate
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ explicite de date de fabrication dans FRCDADispositifMedical.playingDevice."

// Date d'expiration
* group[=].element[+].code = #FRLMDevice.expiryDate
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ explicite de date d'expiration dans FRCDADispositifMedical.playingDevice."

// Numéro de lot
* group[=].element[+].code = #FRLMDevice.lotNumber
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ explicite de numéro de lot dans FRCDADispositifMedical.playingDevice."

// Numéro de série
* group[=].element[+].code = #FRLMDevice.serialNumber
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ explicite de numéro de série dans FRCDADispositifMedical.playingDevice."

// Nom du DM
* group[=].element[+].code = #FRLMDevice.name
* group[=].element[=].target.code = #FRCDADispositifMedical.text
* group[=].element[=].target.equivalence = #relatedto

// Valeur du nom du DM
* group[=].element[+].code = #FRLMDevice.name.value
* group[=].element[=].target.code = #FRCDADispositifMedical.text
* group[=].element[=].target.equivalence = #relatedto

// Type du nom du DM
* group[=].element[+].code = #FRLMDevice.name.type
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ explicite pour typer le nom dans FRCDADispositifMedical.playingDevice."

// Numéro de modèle
* group[=].element[+].code = #FRLMDevice.modelNumber
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ explicite de numéro de modèle dans FRCDADispositifMedical.playingDevice."

// Version du DM
* group[=].element[+].code = #FRLMDevice.version
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ explicite de version dans FRCDADispositifMedical.playingDevice."

// Type de DM
* group[=].element[+].code = #FRLMDevice.type
* group[=].element[=].target.code = #FRCDADispositifMedical.participant.participantRole.playingDevice.code
* group[=].element[=].target.equivalence = #equivalent

// Commentaire
* group[=].element[+].code = #FRLMDevice.note
* group[=].element[=].target.code = #FRCDADispositifMedical.text
* group[=].element[=].target.equivalence = #relatedto

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Device"

// Élément racine
* group[=].element[+].code = #FRLMDevice
* group[=].element[=].target.code = #Device
* group[=].element[=].target.equivalence = #equivalent

// Identifiant du DM
* group[=].element[+].code = #FRLMDevice.identifier
* group[=].element[=].target.code = #Device.identifier
* group[=].element[=].target.equivalence = #equivalent

// Identifiant unique du DM (UDI)
* group[=].element[+].code = #FRLMDevice.udi
* group[=].element[=].target.code = #Device.udiCarrier.deviceIdentifier
* group[=].element[=].target.equivalence = #relatedto

// Fabricant
* group[=].element[+].code = #FRLMDevice.manufacturer
* group[=].element[=].target.code = #Device.manufacturer
* group[=].element[=].target.equivalence = #equivalent

// Date de fabrication
* group[=].element[+].code = #FRLMDevice.manufactureDate
* group[=].element[=].target.code = #Device.manufactureDate
* group[=].element[=].target.equivalence = #equivalent

// Date d'expiration
* group[=].element[+].code = #FRLMDevice.expiryDate
* group[=].element[=].target.code = #Device.expirationDate
* group[=].element[=].target.equivalence = #equivalent

// Numéro de lot
* group[=].element[+].code = #FRLMDevice.lotNumber
* group[=].element[=].target.code = #Device.lotNumber
* group[=].element[=].target.equivalence = #equivalent

// Numéro de série
* group[=].element[+].code = #FRLMDevice.serialNumber
* group[=].element[=].target.code = #Device.serialNumber
* group[=].element[=].target.equivalence = #equivalent

// Nom du DM
* group[=].element[+].code = #FRLMDevice.name
* group[=].element[=].target.code = #Device.deviceName
* group[=].element[=].target.equivalence = #relatedto

// Valeur du nom du DM
* group[=].element[+].code = #FRLMDevice.name.value
* group[=].element[=].target.code = #Device.deviceName.name
* group[=].element[=].target.equivalence = #equivalent

// Type du nom du DM
* group[=].element[+].code = #FRLMDevice.name.type
* group[=].element[=].target.code = #Device.deviceName.type
* group[=].element[=].target.equivalence = #relatedto

// Numéro de modèle
* group[=].element[+].code = #FRLMDevice.modelNumber
* group[=].element[=].target.code = #Device.modelNumber
* group[=].element[=].target.equivalence = #equivalent

// Version du DM
* group[=].element[+].code = #FRLMDevice.version
* group[=].element[=].target.code = #Device.version.value
* group[=].element[=].target.equivalence = #relatedto

// Type de DM
* group[=].element[+].code = #FRLMDevice.type
* group[=].element[=].target.code = #Device.type
* group[=].element[=].target.equivalence = #equivalent

// Commentaire
* group[=].element[+].code = #FRLMDevice.note
* group[=].element[=].target.code = #Device.note
* group[=].element[=].target.equivalence = #equivalent
