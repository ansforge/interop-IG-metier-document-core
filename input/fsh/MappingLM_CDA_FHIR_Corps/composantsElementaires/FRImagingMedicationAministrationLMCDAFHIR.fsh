Instance: FRImagingMedicationAministrationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationAdministration -> FRCDADICOMAdministrationProduitDeSante / FRLMMedicationAdministration -> FRMedicationAdministrationDocument"
Description: "Mapping des elements du modele metier FRLMMedicationAdministration vers le profil CDA FRCDADICOMAdministrationProduitDeSante, puis vers le profil FHIR FRMedicationAdministrationDocument."
* title = "Mapping Metier/CDA/FHIR : \"Medication Administration en imagerie\""
* status = #draft

// Groupe Mapping 1 : modele metier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-administration"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-administration-produit-de-sante"
// Element racine
* group[=].element[+].code = #FRLMMedicationAdministration
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entree
* group[=].element[+].code = #FRLMMedicationAdministration.header.status
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date/duree du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.occurrence[x]
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Medicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.consumable
* group[=].element[=].target.equivalence = #equivalent
// Code du medicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication.identifyingCode[x]
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.code
* group[=].element[=].target.equivalence = #equivalent
// Nom du medicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication.productName
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.name
* group[=].element[=].target.equivalence = #equivalent
// Numero de lot
* group[=].element[+].code = #FRLMMedicationAdministration.medication.batch.lotNumber
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText
* group[=].element[=].target.equivalence = #equivalent
// Posologie textuelle
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.renderedDosageInstruction
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.text
* group[=].element[=].target.equivalence = #relatedto
// Voie d'administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.doseQuantity
* group[=].element[=].target.equivalence = #relatedto
// Rythme d'administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.rateQuantity
* group[=].element[=].target.equivalence = #relatedto
// Motif du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.reason[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance CDA explicite unique pour reason[x] dans ce profil DICOM d'administration."
// Note
* group[=].element[+].code = #FRLMMedicationAdministration.note
* group[=].element[=].target.code = #FRCDADICOMAdministrationProduitDeSante.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modele metier -> FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-administration"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-administration-document"
// Element racine
* group[=].element[+].code = #FRLMMedicationAdministration
* group[=].element[=].target.code = #FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entree
* group[=].element[+].code = #FRLMMedicationAdministration.header.status
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date/duree du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.occurrence[x]
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Medicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.medication:FRMedicationDocument
* group[=].element[=].target.equivalence = #equivalent
// Code du medicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication.identifyingCode[x]
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.medication:FRMedicationDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Nom du medicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication.productName
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.medication:FRMedicationDocument.extension:productName
* group[=].element[=].target.equivalence = #equivalent
// Numero de lot
* group[=].element[+].code = #FRLMMedicationAdministration.medication.batch.lotNumber
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.medication:FRMedicationDocument.batch.lotNumber
* group[=].element[=].target.equivalence = #equivalent
// Posologie
* group[=].element[+].code = #FRLMMedicationAdministration.dosage
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage
* group[=].element[=].target.equivalence = #equivalent
// Posologie textuelle
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.renderedDosageInstruction
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.text
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.route
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.dose
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.dosage.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Sequence de dosage
* group[=].element[+].code = #FRLMMedicationAdministration.dosage.dosageDetails.sequence
* group[=].element[=].target.code = #FRLMMedicationAdministration.dosage.extension:FRMedicationAdministrationSequenceExtension
* group[=].element[=].target.equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.reason[x]
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.reasonReference
* group[=].element[=].target.equivalence = #equivalent
// Note
* group[=].element[+].code = #FRLMMedicationAdministration.note
* group[=].element[=].target.code = #FRMedicationAdministrationDocument.note
* group[=].element[=].target.equivalence = #equivalent