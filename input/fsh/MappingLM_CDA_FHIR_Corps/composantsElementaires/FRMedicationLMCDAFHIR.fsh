Instance: FRMedicationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMMedication → FRCDAProduitDeSante / FRLMMedication → FRMedicationDocument"
Description: "Mapping des éléments du modèle métier FRLMMedication vers le profil CDA FRCDAProduitDeSante (Groupe 1), et vers le profil FHIR FRMedicationDocument (Groupe 2)."
* title = "Mapping Métier/CDA/FHIR : \"Produit de santé\""
* status = #draft

// Groupe 1 : modèle métier (FRLMMedication) → CDA (FRCDAProduitDeSante)

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-produit-de-sante"
// Élément racine
* group[=].element[+].code = #FRLMMedication
* group[=].element[=].target.code = #FRCDAProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Code du produit de santé
* group[=].element[+].code = #FRLMMedication.identifyingCode[x]
* group[=].element[=].target.code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.code
* group[=].element[=].target.equivalence = #equivalent
// Classification ATC
* group[=].element[+].code = #FRLMMedication.classification
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:asSpecializedKind
* group[=].element[=].target.equivalence = #equivalent
// Nom du produit
* group[=].element[+].code = #FRLMMedication.productName
* group[=].element[=].target.code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.name
* group[=].element[=].target.equivalence = #equivalent
// Titulaire de l'autorisation de mise sur le marché
* group[=].element[+].code = #FRLMMedication.marketingAuthorisationHolder
* group[=].element[=].target.equivalence = #unmatched
// Forme galénique
* group[=].element[+].code = #FRLMMedication.item.doseForm
* group[=].element[=].target.code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.pharm:formCode
* group[=].element[=].target.equivalence = #equivalent
// Ingrédient actif
* group[=].element[+].code = #FRLMMedication.item.ingredient.isActive
* group[=].element[=].target.equivalence = #unmatched
// Substance active
* group[=].element[+].code = #FRLMMedication.item.ingredient.substance
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:ingredient.pharm:ingredient.pharm:code
* group[=].element[=].target.equivalence = #equivalent
// Concentration de l'ingrédient (dosage)
* group[=].element[+].code = #FRLMMedication.item.ingredient.strengthInfo.strength
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:ingredient.pharm:quantity
* group[=].element[=].target.equivalence = #equivalent
// Substance de référence pour le dosage
* group[=].element[+].code = #FRLMMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance
* group[=].element[=].target.equivalence = #unmatched
// Unité de présentation (regroupe, avec containedQuantity/amount/packageType)
* group[=].element[+].code = #FRLMMedication.item.unitOfPresentation
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:asContent
* group[=].element[=].target.equivalence = #relatedto
// Quantité de produit par unité
* group[=].element[+].code = #FRLMMedication.item.containedQuantity
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:asContent
* group[=].element[=].target.equivalence = #relatedto
// Nombre d'unités dans le package
* group[=].element[+].code = #FRLMMedication.item.amount
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:asContent
* group[=].element[=].target.equivalence = #equivalent
// Type de conditionnement primaire
* group[=].element[+].code = #FRLMMedication.item.packageType
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:asContent.pharm:containerPackagedMedicine
* group[=].element[=].target.equivalence = #equivalent
// Dispositif d'administration
* group[=].element[+].code = #FRLMMedication.device
* group[=].element[=].target.equivalence = #unmatched
// Caractéristique supplémentaire
* group[=].element[+].code = #FRLMMedication.characteristic
* group[=].element[=].target.equivalence = #unmatched
// Numéro de lot
* group[=].element[+].code = #FRLMMedication.batch.lotNumber
* group[=].element[=].target.code = #FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.lotNumberText
* group[=].element[=].target.equivalence = #equivalent
// Date d'expiration du produit
* group[=].element[+].code = #FRLMMedication.batch.expirationDate
* group[=].element[=].target.code = #FRCDAProduitDeSante.pharm:expirationTime
* group[=].element[=].target.equivalence = #equivalent

// Groupe 2 : modèle métier (FRLMMedication) → FHIR (FRMedicationDocument)

* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-document"
// Élément racine
* group[=].element[+].code = #FRLMMedication
* group[=].element[=].target.code = #FRMedicationDocument
* group[=].element[=].target.equivalence = #equivalent
// Code du produit de santé
* group[=].element[+].code = #FRLMMedication.identifyingCode[x]
* group[=].element[=].target.code = #FRMedicationDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Classification ATC
* group[=].element[+].code = #FRLMMedication.classification
* group[=].element[=].target.code = #FRMedicationDocument.extension:ihe-ext-medication-classification
* group[=].element[=].target.equivalence = #equivalent
// Nom du produit
* group[=].element[+].code = #FRLMMedication.productName
* group[=].element[=].target.code = #FRMedicationDocument.extension:ihe-ext-medication-productname
* group[=].element[=].target.equivalence = #equivalent
// Titulaire de l'autorisation de mise sur le marché
* group[=].element[+].code = #FRLMMedication.marketingAuthorisationHolder
* group[=].element[=].target.code = #FRMedicationDocument.manufacturer
* group[=].element[=].target.equivalence = #equivalent
// Item
* group[=].element[+].code = #FRLMMedication.item
* group[=].element[=].target.code = #FRMedicationDocument.ingredient.itemReference
* group[=].element[=].target.equivalence = #equivalent
// Forme galénique
* group[=].element[+].code = #FRLMMedication.item.doseForm
* group[=].element[=].target.code = #FRMedicationDocument.form
* group[=].element[=].target.equivalence = #equivalent
// Ingrédient
* group[=].element[+].code = #FRLMMedication.item.ingredient
* group[=].element[=].target.code = #FRMedicationDocument.ingredient
* group[=].element[=].target.equivalence = #equivalent
// Ingrédient actif
* group[=].element[+].code = #FRLMMedication.item.ingredient.isActive
* group[=].element[=].target.code = #FRMedicationDocument.ingredient.isActive
* group[=].element[=].target.equivalence = #equivalent
// Substance active
* group[=].element[+].code = #FRLMMedication.item.ingredient.substance
* group[=].element[=].target.code = #FRMedicationDocument.ingredient.itemCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
// Concentration de l'ingrédient (dosage)
* group[=].element[+].code = #FRLMMedication.item.ingredient.strengthInfo.strength
* group[=].element[=].target.code = #FRMedicationDocument.ingredient:substanceActive.strength
* group[=].element[=].target.equivalence = #equivalent
// Substance de référence pour le dosage 
// extension:basisOfStrengthSubstance --> à ajouter
* group[=].element[+].code = #FRLMMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance
* group[=].element[=].target.equivalence = #unmatched
// Unité de présentation
// extension:unitOfPresentation --> à ajouter 
* group[=].element[+].code = #FRLMMedication.item.unitOfPresentation
* group[=].element[=].target.equivalence = #unmatched
// Quantité de produit par unité
// extension:sizeOfItem --> à ajouter 
* group[=].element[+].code = #FRLMMedication.item.containedQuantity
* group[=].element[=].target.equivalence = #unmatched
// Nombre d'unités dans le package
* group[=].element[+].code = #FRLMMedication.item.amount
* group[=].element[=].target.code = #FRMedicationDocument.amount
* group[=].element[=].target.equivalence = #equivalent
// Type de conditionnement primaire
// packageType --> à ajouter
* group[=].element[+].code = #FRLMMedication.item.packageType
* group[=].element[=].target.equivalence = #equivalent
// Dispositif d'administration
// extension:device --> à ajouter 
* group[=].element[+].code = #FRLMMedication.device
* group[=].element[=].target.equivalence = #unmatched
// Caractéristique supplémentaire
// mettre à jour le nom de l'extension 
* group[=].element[+].code = #FRLMMedication.characteristic
* group[=].element[=].target.code = #FRMedicationDocument.extension:conditionnement
* group[=].element[=].target.equivalence = #unmatched
// Numéro de lot
* group[=].element[+].code = #FRLMMedication.batch.lotNumber
* group[=].element[=].target.code = #FRMedicationDocument.batch.lotNumber
* group[=].element[=].target.equivalence = #equivalent
// Date d'expiration du produit
* group[=].element[+].code = #FRLMMedication.batch.expirationDate
* group[=].element[=].target.code = #FRMedicationDocument.batch.expirationDate
* group[=].element[=].target.equivalence = #equivalent