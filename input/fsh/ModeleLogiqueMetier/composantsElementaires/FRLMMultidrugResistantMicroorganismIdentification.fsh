// Entrée utilisée dans le volet LDL-SES, LM à supprimé ?
Logical: FRLMMultidrugResistantMicroorganismIdentification
Id: FRLMMultidrugResistantMicroorganismIdentification
Parent : FRLMEntry
Title: "Logical model - FR LM Multidrug Resistant Microorganism Identification"
Description: """Identification de micro-organismes multirésistants"""
Characteristics: #can-be-target

* code 1..1 CodeableConcept "Code de l’observation"
* value 1..1 string "Description sous forme textuelle des micro-organismes identifiés"