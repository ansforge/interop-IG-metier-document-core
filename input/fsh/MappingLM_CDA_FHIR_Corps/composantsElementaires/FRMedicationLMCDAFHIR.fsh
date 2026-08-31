Instance: FRMedicationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedication → FRCDAProduitDeSante / FRLMMedication → FRMedicationDocument"
Description: "Mapping des éléments du modèle métier FRLMMedication vers le profil CDA FRCDAProduitDeSante (Groupe 1), et vers le profil FHIR FRMedicationDocument (Groupe 2)."
* name = "FRMedicationLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Produit de santé\""
* status = #draft
* experimental = false

// Groupe 1 : modèle métier (FRLMMedication) → CDA (FRCDAProduitDeSante)

* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-produit-de-sante"
// Élément racine
* group[=].element[+].code = #FRLMMedication
* group[=].element[=].target.code = #ManufacturedProduct
* group[=].element[=].target.display = "FRCDAProduitDeSante"
* group[=].element[=].target.equivalence = #equivalent
// Code du produit de santé
* group[=].element[+].code = #FRLMMedication.identifyingCode[x]
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.code
* group[=].element[=].target.equivalence = #equivalent
// Classification ATC
* group[=].element[+].code = #FRLMMedication.classification
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.asSpecializedKind
* group[=].element[=].target.equivalence = #equivalent
// Nom du produit
* group[=].element[+].code = #FRLMMedication.productName
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.name
* group[=].element[=].target.equivalence = #equivalent
// Titulaire de l'autorisation de mise sur le marché
* group[=].element[+].code = #FRLMMedication.marketingAuthorisationHolder
* group[=].element[=].target.equivalence = #unmatched
// Forme galénique
* group[=].element[+].code = #FRLMMedication.item.doseForm
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.formCode
* group[=].element[=].target.equivalence = #equivalent
// Ingrédient actif
* group[=].element[+].code = #FRLMMedication.item.ingredient.isActive
* group[=].element[=].target.equivalence = #unmatched
// Substance active
* group[=].element[+].code = #FRLMMedication.item.ingredient.substance
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.ingredient.ingredient.code
* group[=].element[=].target.equivalence = #equivalent
// Concentration de l'ingrédient (dosage)
* group[=].element[+].code = #FRLMMedication.item.ingredient.strengthInfo.strength
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.ingredient.quantity
* group[=].element[=].target.equivalence = #equivalent
// Substance de référence pour le dosage
* group[=].element[+].code = #FRLMMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance
* group[=].element[=].target.equivalence = #unmatched
// Unité de présentation
* group[=].element[+].code = #FRLMMedication.item.unitOfPresentation
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.asContent.containerPackagedMedicine.formCode
* group[=].element[=].target.equivalence = #equivalent
// Quantité de produit par unité - pas de champ dédié dans FRCDAProduitDeSante
* group[=].element[+].code = #FRLMMedication.item.containedQuantity
* group[=].element[=].target.equivalence = #unmatched
// Nombre d'unités dans le package
* group[=].element[+].code = #FRLMMedication.item.amount
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.asContent.containerPackagedMedicine.capacityQuantity
* group[=].element[=].target.equivalence = #equivalent
// Type de conditionnement primaire
* group[=].element[+].code = #FRLMMedication.item.packageType
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.asContent.containerPackagedMedicine
* group[=].element[=].target.equivalence = #equivalent
// Dispositif d'administration
* group[=].element[+].code = #FRLMMedication.device
* group[=].element[=].target.equivalence = #unmatched
// Caractéristique supplémentaire
* group[=].element[+].code = #FRLMMedication.characteristic
* group[=].element[=].target.equivalence = #unmatched
// Numéro de lot
* group[=].element[+].code = #FRLMMedication.batch.lotNumber
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.lotNumberText
* group[=].element[=].target.equivalence = #equivalent
// Date d'expiration du produit
* group[=].element[+].code = #FRLMMedication.batch.expirationDate
* group[=].element[=].target.code = #ManufacturedProduct.manufacturedMaterial.expirationTime
* group[=].element[=].target.equivalence = #equivalent

// Groupe 2 : modèle métier (FRLMMedication) → FHIR (FRMedicationDocument)

* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document"
// Élément racine
* group[=].element[+].code = #FRLMMedication
* group[=].element[=].target.code = #Medication
* group[=].element[=].target.display = "FRMedicationDocument"
* group[=].element[=].target.equivalence = #equivalent
// Code du produit de santé
* group[=].element[+].code = #FRLMMedication.identifyingCode[x]
* group[=].element[=].target.code = #Medication.code
* group[=].element[=].target.equivalence = #equivalent
// Classification ATC
* group[=].element[+].code = #FRLMMedication.classification
* group[=].element[=].target.code = #Medication.extension:classification
* group[=].element[=].target.equivalence = #equivalent
// Nom du produit
* group[=].element[+].code = #FRLMMedication.productName
* group[=].element[=].target.code = #Medication.extension:productName
* group[=].element[=].target.equivalence = #equivalent
// Titulaire de l'autorisation de mise sur le marché
* group[=].element[+].code = #FRLMMedication.marketingAuthorisationHolder
* group[=].element[=].target.code = #Medication.manufacturer
* group[=].element[=].target.equivalence = #equivalent
// Item
* group[=].element[+].code = #FRLMMedication.item
* group[=].element[=].target.code = #Medication.ingredient.item[x]:itemReference
* group[=].element[=].target.equivalence = #equivalent
// Forme galénique
* group[=].element[+].code = #FRLMMedication.item.doseForm
* group[=].element[=].target.code = #Medication.form
* group[=].element[=].target.equivalence = #equivalent
// Ingrédient
* group[=].element[+].code = #FRLMMedication.item.ingredient
* group[=].element[=].target.code = #Medication.ingredient
* group[=].element[=].target.equivalence = #equivalent
// Ingrédient actif
* group[=].element[+].code = #FRLMMedication.item.ingredient.isActive
* group[=].element[=].target.code = #Medication.ingredient.isActive
* group[=].element[=].target.equivalence = #equivalent
// Substance active
* group[=].element[+].code = #FRLMMedication.item.ingredient.substance
* group[=].element[=].target.code = #Medication.ingredient.item[x]:itemCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
// Concentration de l'ingrédient (dosage)
* group[=].element[+].code = #FRLMMedication.item.ingredient.strengthInfo.strength
* group[=].element[=].target.code = #Medication.ingredient.strength
* group[=].element[=].target.equivalence = #equivalent
// Substance de référence pour le dosage
* group[=].element[+].code = #FRLMMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance
* group[=].element[=].target.code = #Medication.ingredient.strength.extension:basisOfStrengthSubstance
* group[=].element[=].target.equivalence = #equivalent
// Unité de présentation
* group[=].element[+].code = #FRLMMedication.item.unitOfPresentation
* group[=].element[=].target.code = #Medication.extension:unitOfPresentation
* group[=].element[=].target.equivalence = #equivalent
// Quantité de produit par unité
* group[=].element[+].code = #FRLMMedication.item.containedQuantity
* group[=].element[=].target.code = #Medication.extension:sizeOfItem
* group[=].element[=].target.equivalence = #equivalent
// Nombre d'unités dans le package
* group[=].element[+].code = #FRLMMedication.item.amount
* group[=].element[=].target.code = #Medication.amount
* group[=].element[=].target.equivalence = #equivalent
// Type de conditionnement primaire - extension:packageType à créer côté IG FHIR
* group[=].element[+].code = #FRLMMedication.item.packageType
* group[=].element[=].target.equivalence = #unmatched
// Dispositif d'administration - extension:device à créer côté IG FHIR
* group[=].element[+].code = #FRLMMedication.device
* group[=].element[=].target.equivalence = #unmatched
// Caractéristique supplémentaire
* group[=].element[+].code = #FRLMMedication.characteristic
* group[=].element[=].target.code = #Medication.extension:conditionnement
* group[=].element[=].target.equivalence = #equivalent
// Numéro de lot
* group[=].element[+].code = #FRLMMedication.batch.lotNumber
* group[=].element[=].target.code = #Medication.batch.lotNumber
* group[=].element[=].target.equivalence = #equivalent
// Date d'expiration du produit
* group[=].element[+].code = #FRLMMedication.batch.expirationDate
* group[=].element[=].target.code = #Medication.batch.expirationDate
* group[=].element[=].target.equivalence = #equivalent