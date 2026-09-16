Logical: FRLMResultData
Id: FRLMResultData
Parent: FRLMSection
Title: "Logical model - FR LM Result Data"
Description: """Section Compte rendu de biologie de 1er niveau"""
Characteristics: #can-be-target

* subSection 0..0
* entry
  * laboratoryTestResults 0..* FRLMLaboratoryObservation "Résultats d'examens de biologie médicale"

// ou bien ajouter sur FRLMResultData un élément dédié commentaireInterpretationRecommandations 0..* ?
//* commentaireInterpretationRecommandations 0..* Narrative "Commentaires, interprétation et recommandations du compte rendu"