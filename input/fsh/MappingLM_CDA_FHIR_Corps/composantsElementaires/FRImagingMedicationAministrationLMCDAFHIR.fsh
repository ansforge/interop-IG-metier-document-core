Instance: FRImagingMedicationAministrationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedicationAdministration -> FRCDADICOMAdministrationProduitDeSante / FRLMMedicationAdministration -> FRMedicationAdministrationDocument"
Description: "Mapping des elements du modele metier FRLMMedicationAdministration vers le profil CDA FRCDADICOMAdministrationProduitDeSante, puis vers le profil FHIR FRMedicationAdministrationDocument."
* name = "FRImagingMedicationAministrationLMCDAFHIR"
* title = "Mapping Metier/CDA/FHIR : \"Medication Administration en imagerie\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modele metier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-administration-produit-de-sante"
// Element racine
* group[=].element[+].code = #FRLMMedicationAdministration
* group[=].element[=].target.code = #SubstanceAdministration
* group[=].element[=].target.display = "FRCDADICOMAdministrationProduitDeSante"
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entree
* group[=].element[+].code = #FRLMMedicationAdministration.header.status
* group[=].element[=].target.code = #SubstanceAdministration.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date/duree du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.occurrence[x]
* group[=].element[=].target.code = #SubstanceAdministration.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Medicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication
* group[=].element[=].target.code = #SubstanceAdministration.consumable
* group[=].element[=].target.equivalence = #equivalent
// Posologie
* group[=].element[+].code = #FRLMMedicationAdministration.dosage
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #relatedto
// Motif du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.reason[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance CDA explicite unique pour reason[x] dans ce profil DICOM d'administration."
// Note
* group[=].element[+].code = #FRLMMedicationAdministration.note
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : medicament (FRLMMedication) -> CDA
// FRLMMedicationAdministration.medication reference le type FRLMMedication ; ses sous-champs
// sont donc mappes dans un groupe dedie dont le source system est FRLMMedication.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-administration-produit-de-sante"
// Code du medicament
* group[=].element[+].code = #FRLMMedication.identifyingCode[x]
* group[=].element[=].target.code = #SubstanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code
* group[=].element[=].target.equivalence = #equivalent
// Nom du medicament
* group[=].element[+].code = #FRLMMedication.productName
* group[=].element[=].target.code = #SubstanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name
* group[=].element[=].target.equivalence = #equivalent
// Numero de lot
* group[=].element[+].code = #FRLMMedication.batch.lotNumber
* group[=].element[=].target.code = #SubstanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : posologie (FRLMDosageInstructions) -> CDA
// FRLMMedicationAdministration.dosage reference le type FRLMDosageInstructions ; ses sous-champs
// sont donc mappes dans un groupe dedie dont le source system est FRLMDosageInstructions.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-administration-produit-de-sante"
// Posologie textuelle
* group[=].element[+].code = #FRLMDosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #SubstanceAdministration.text
* group[=].element[=].target.equivalence = #relatedto
// Voie d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #SubstanceAdministration.routeCode
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #SubstanceAdministration.doseQuantity
* group[=].element[=].target.equivalence = #relatedto
// Rythme d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #SubstanceAdministration.rateQuantity
* group[=].element[=].target.equivalence = #relatedto

// Groupe Mapping 2 : modele metier -> FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document"
// Element racine
* group[=].element[+].code = #FRLMMedicationAdministration
* group[=].element[=].target.code = #MedicationAdministration
* group[=].element[=].target.display = "FRMedicationAdministrationDocument"
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entree
* group[=].element[+].code = #FRLMMedicationAdministration.header.status
* group[=].element[=].target.code = #MedicationAdministration.status
* group[=].element[=].target.equivalence = #equivalent
// Date/duree du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.occurrence[x]
* group[=].element[=].target.code = #MedicationAdministration.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Medicament
* group[=].element[+].code = #FRLMMedicationAdministration.medication
* group[=].element[=].target.code = #MedicationAdministration.medication[x]
* group[=].element[=].target.equivalence = #equivalent
// Posologie
* group[=].element[+].code = #FRLMMedicationAdministration.dosage
* group[=].element[=].target.code = #MedicationAdministration.dosage
* group[=].element[=].target.equivalence = #equivalent
// Motif du traitement
* group[=].element[+].code = #FRLMMedicationAdministration.reason[x]
* group[=].element[=].target.code = #MedicationAdministration.reasonReference
* group[=].element[=].target.equivalence = #equivalent
// Note
* group[=].element[+].code = #FRLMMedicationAdministration.note
* group[=].element[=].target.code = #MedicationAdministration.note
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : medicament (FRLMMedication) -> FHIR
// medication[x] n'est pas type/decompose dans ce profil ; seul le code peut etre rapproche
// de la valeur portee par le choix de type (CodeableConcept).
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document"
// Code du medicament
* group[=].element[+].code = #FRLMMedication.identifyingCode[x]
* group[=].element[=].target.code = #MedicationAdministration.medication[x]
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "medication[x] n'est pas décomposé plus finement dans ce profil ; le code est porté par l'ensemble du choix de type."
// Nom du medicament
* group[=].element[+].code = #FRLMMedication.productName
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite pour le nom du produit sur medication[x] dans ce profil."
// Numero de lot
* group[=].element[+].code = #FRLMMedication.batch.lotNumber
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite pour le numéro de lot sur medication[x] dans ce profil."

// Sous-groupe de mapping : posologie (FRLMDosageInstructions) -> FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document"
// Posologie textuelle
* group[=].element[+].code = #FRLMDosageInstructions.renderedDosageInstruction
* group[=].element[=].target.code = #MedicationAdministration.dosage.text
* group[=].element[=].target.equivalence = #equivalent
// Voie d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.routeOfAdministration
* group[=].element[=].target.code = #MedicationAdministration.dosage.route
* group[=].element[=].target.equivalence = #equivalent
// Dose
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]
* group[=].element[=].target.code = #MedicationAdministration.dosage.dose
* group[=].element[=].target.equivalence = #equivalent
// Rythme d'administration
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]
* group[=].element[=].target.code = #MedicationAdministration.dosage.rate[x]
* group[=].element[=].target.equivalence = #equivalent
// Sequence de dosage
* group[=].element[+].code = #FRLMDosageInstructions.dosageDetails.sequence
* group[=].element[=].target.code = #MedicationAdministration.dosage.extension:sequence
* group[=].element[=].target.equivalence = #equivalent
