Logical: FRLMTransfusionDeProduitsSanguins
Id: FRLMTransfusionDeProduitsSanguins
Parent: FRLMEntry
Title: "Logical model - FR LM Transfusion de produits sanguins"
Description: """Transfusion de produits sanguins"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l'entrée"
* transfusionProduitSanguin 1..1 boolean "Transfusion de produit sanguin"