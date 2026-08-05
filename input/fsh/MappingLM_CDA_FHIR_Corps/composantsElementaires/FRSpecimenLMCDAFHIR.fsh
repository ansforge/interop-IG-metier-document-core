Instance: FRSpecimenLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSpecimen → FRCDAPrelevement / FRLMSpecimen → FRSpecimenDocument"
Description: "Mapping des éléments du modèle métier FRLMSpecimen vers le profil CDA FRCDAPrelevement, puis vers le profil FHIR FRSpecimenDocument."
* title = "Mapping Métier/CDA/FHIR : \"Prélèvement\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-specimen"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prelevement"
// Élément racine
* group[=].element[+].code = #FRLMSpecimen
* group[=].element[=].target.code = #FRCDAPrelevement
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMSpecimen.identifier
* group[=].element[=].target.code = #FRCDAPrelevement.id
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMSpecimen.header.status
* group[=].element[=].target.code = #FRCDAPrelevement.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Type d'échantillon
* group[=].element[+].code = #FRLMSpecimen.type
* group[=].element[=].target.code = #FRCDAPrelevement.code
* group[=].element[=].target.equivalence = #equivalent
// Origine du prélèvement
* group[=].element[+].code = #FRLMSpecimen.specimenSource[x]
* group[=].element[=].target.code = #FRCDAPrelevement.participant
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement parent
* group[=].element[+].code = #FRLMSpecimen.parentSpecimen
* group[=].element[=].target.code = #FRCDAPrelevement.participant:echantillonPreleve
* group[=].element[=].target.equivalence = #equivalent
// Demande à l'origine du prélèvement
* group[=].element[+].code = #FRLMSpecimen.request
* group[=].element[=].target.equivalence = #unmatched
// This element signifies if the specimen is part of a group or pooled
* group[=].element[+].code = #FRLMSpecimen.combined
* group[=].element[=].target.equivalence = #unmatched
// Détails de la collecte - Organisation prélevante
* group[=].element[+].code = #FRLMSpecimen.collection.performer[x]
* group[=].element[=].target.code = #FRCDAPrelevement.performer
* group[=].element[=].target.equivalence = #equivalent
// Détails de la collecte - Date du prélèvement
* group[=].element[+].code = #FRLMSpecimen.collection.collected[x]
* group[=].element[=].target.code = #FRCDAPrelevement.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Détails de la collecte - Quantité
* group[=].element[+].code = #FRLMSpecimen.collection.quantity
* group[=].element[=].target.equivalence = #unmatched
// Détails de la collecte - Acte de prélèvement
* group[=].element[+].code = #FRLMSpecimen.collection.method
* group[=].element[=].target.equivalence = #unmatched
// Détails de la collecte - Dispositif utilisé
* group[=].element[+].code = #FRLMSpecimen.collection.device
* group[=].element[=].target.code = #FRCDAPrelevement.participant:dispositifUtilise
* group[=].element[=].target.equivalence = #equivalent
// Détails de la collecte - Produit utilisé
* group[=].element[+].code = #FRLMSpecimen.collection.additive[x]
* group[=].element[=].target.code = #FRCDAPrelevement.participant:produitUtilise
* group[=].element[=].target.equivalence = #equivalent
// Détails de la collecte - Localisation du prélèvement
* group[=].element[+].code = #FRLMSpecimen.collection.bodySite
* group[=].element[=].target.code = #FRCDAPrelevement.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Date de réception
* group[=].element[+].code = #FRLMSpecimen.receivedDate
* group[=].element[=].target.code = #FRCDAPrelevement.entryRelationship.act.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Contenant - Quantité
* group[=].element[+].code = #FRLMSpecimen.container.specimenQuantity
* group[=].element[=].target.equivalence = #unmatched
// Contenant - Dispositif
* group[=].element[+].code = #FRLMSpecimen.container.containerDevice
* group[=].element[=].target.equivalence = #unmatched
// État de l'échantillon
* group[=].element[+].code = #FRLMSpecimen.condition
* group[=].element[=].target.equivalence = #unmatched
// Commentaire
* group[=].element[+].code = #FRLMSpecimen.note
* group[=].element[=].target.code = #FRCDAPrelevement.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-specimen"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-specimen-document"
// Élément racine
* group[=].element[+].code = #FRLMSpecimen
* group[=].element[=].target.code = #FRSpecimenDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMSpecimen.identifier
* group[=].element[=].target.code = #FRSpecimenDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMSpecimen.header.status
* group[=].element[=].target.code = #FRSpecimenDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Code/Type d'échantillon
* group[=].element[+].code = #FRLMSpecimen.type
* group[=].element[=].target.code = #FRSpecimenDocument.type
* group[=].element[=].target.equivalence = #equivalent
// Origine du prélèvement - Patient
* group[=].element[+].code = #FRLMSpecimen.specimenSource:Patient
* group[=].element[=].target.code = #FRSpecimenDocument.subject
* group[=].element[=].target.equivalence = #equivalent
// Origine du prélèvement - Location
* group[=].element[+].code = #FRLMSpecimen.specimenSource:Location
* group[=].element[=].target.code = #FRSpecimenDocument.subject
* group[=].element[=].target.equivalence = #equivalent
// Origine du prélèvement - Device
* group[=].element[+].code = #FRLMSpecimen.specimenSource:Device
* group[=].element[=].target.code = #FRSpecimenDocument.subject
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement parent
* group[=].element[+].code = #FRLMSpecimen.parentSpecimen
* group[=].element[=].target.code = #FRSpecimenDocument.parent
* group[=].element[=].target.equivalence = #equivalent
// Demande à l'origine du prélèvement
* group[=].element[+].code = #FRLMSpecimen.request
* group[=].element[=].target.code = #FRSpecimenDocument.request
* group[=].element[=].target.equivalence = #equivalent
// this element signifies if the specimen is part of a group or pooled
* group[=].element[+].code = #FRLMSpecimen.combined 
* group[=].element[=].target.equivalence = #unmatched
// Organisation prélevante
* group[=].element[+].code = #FRLMSpecimen.collection.performer[x]
* group[=].element[=].target.code = #FRSpecimenDocument.collection.collector
* group[=].element[=].target.equivalence = #equivalent
// Date du prélèvement
* group[=].element[+].code = #FRLMSpecimen.collection.collected[x]
* group[=].element[=].target.code = #FRSpecimenDocument.collection.collected[x]
* group[=].element[=].target.equivalence = #equivalent
// Quantité collectée
* group[=].element[+].code = #FRLMSpecimen.collection.quantity
* group[=].element[=].target.code = #FRSpecimenDocument.collection.quantity
* group[=].element[=].target.equivalence = #equivalent
// Acte de prélèvement
* group[=].element[+].code = #FRLMSpecimen.collection.method
* group[=].element[=].target.code = #FRSpecimenDocument.collection.method
* group[=].element[=].target.equivalence = #equivalent
// Dispositif utilisé
* group[=].element[+].code = #FRLMSpecimen.collection.device
* group[=].element[=].target.equivalence = #unmatched
// Localisation du prélèvement
* group[=].element[+].code = #FRLMSpecimen.collection.bodySite
* group[=].element[=].target.code = #FRSpecimenDocument.collection.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Date de réception de l'échantillon
* group[=].element[+].code = #FRLMSpecimen.receivedDate
* group[=].element[=].target.code = #FRSpecimenDocument.receivedTime
* group[=].element[=].target.equivalence = #equivalent
// Produit utilisé
* group[=].element[+].code = #FRLMSpecimen.collection.additive[x]
* group[=].element[=].target.code = #FRSpecimenDocument.processing.additive
* group[=].element[=].target.equivalence = #equivalent
// Contenant - Quantité
* group[=].element[+].code = #FRLMSpecimen.container.specimenQuantity
* group[=].element[=].target.code = #FRSpecimenDocument.container.specimenQuantity
* group[=].element[=].target.equivalence = #equivalent
// Contenant - Dispositif :  extension à ajouter dans FRSpecimenDocument pour contenir le dispositif utilisé comme contenant
* group[=].element[+].code = #FRLMSpecimen.container.containerDevice
* group[=].element[=].target.code = #FRSpecimenDocument.container.extension:device
* group[=].element[=].target.equivalence = #equivalent
// État de l'échantillon
* group[=].element[+].code = #FRLMSpecimen.condition
* group[=].element[=].target.code = #FRSpecimenDocument.condition
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMSpecimen.note
* group[=].element[=].target.code = #FRSpecimenDocument.note
* group[=].element[=].target.equivalence = #equivalent