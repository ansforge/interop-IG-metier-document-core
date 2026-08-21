Instance: FRCarePlanLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCarePlan → FRCDAReferenceItemPlanTraitement / FRLMCarePlan → FRCarePlanDocument"
Description: "Mapping des éléments du modèle métier FRLMCarePlan vers le profil CDA FRCDAReferenceItemPlanTraitement (équivalent CDA le plus proche), puis vers le profil FHIR FRCarePlanDocument."

* title = "Mapping Métier/CDA/FHIR : \"Plan de soins\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlan"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-reference-item-plan-traitement"

// Élément racine
// l'équivalence narrow est utilisée car le profil CDA cible est un équivalent fonctionnel du modèle métier source, mais pas un équivalent exact (certains éléments du modèle métier n'ont pas de correspondance explicite dans le profil CDA cible).
* group[=].element[+].code = #FRLMCarePlan
* group[=].element[=].target.code = #SubstanceAdministration
* group[=].element[=].target.display = "FRCDAReferenceItemPlanTraitement"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Le profil CDA cible est un équivalent fonctionnel du modèle métier source, mais pas un équivalent exact : certains éléments du modèle métier n'ont pas de correspondance explicite dans le profil CDA cible."

// Identifiant
* group[=].element[+].code = #FRLMCarePlan.header.identifier
* group[=].element[=].target.code = #SubstanceAdministration.id
* group[=].element[=].target.equivalence = #equivalent

// Statut du plan de soins
* group[=].element[+].code = #FRLMCarePlan.header.status
* group[=].element[=].target.code = #SubstanceAdministration.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Problèmes de santé traités
* group[=].element[+].code = #FRLMCarePlan.addresses
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun élément CDA explicite de FRCDAReferenceItemPlanTraitement ne porte les problèmes adressés par le plan."

// Objectifs du plan
* group[=].element[+].code = #FRLMCarePlan.goal
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun élément CDA explicite de FRCDAReferenceItemPlanTraitement ne porte les objectifs du plan."

// Actions incluses dans le plan
// l'équivalence relatedto est utilisée car le profil CDA cible ne porte pas explicitement les actions incluses dans le plan, mais il est possible de relier les deux via l'élément entryRelationship.
* group[=].element[+].code = #FRLMCarePlan.activity
* group[=].element[=].target.code = #SubstanceAdministration.entryRelationship:frItemPlanTraitement
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Correspondance approximative: FRLMCarePlan.activity est générique, alors que la cible CDA représente une ligne de traitement prescrite."


// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlan"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-care-plan-document"

// Élément racine
* group[=].element[+].code = #FRLMCarePlan
* group[=].element[=].target.code = #CarePlan
* group[=].element[=].target.display = "FRCarePlanDocument"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Le profil FHIR cible est un équivalent fonctionnel du modèle métier source, mais pas un équivalent exact : certains éléments du modèle métier n'ont pas de correspondance explicite dans le profil FHIR cible."

// Identifiant
* group[=].element[+].code = #FRLMCarePlan.header.identifier
* group[=].element[=].target.code = #CarePlan.identifier
* group[=].element[=].target.equivalence = #equivalent

// Statut du plan de soins
* group[=].element[+].code = #FRLMCarePlan.header.status
* group[=].element[=].target.code = #CarePlan.status
* group[=].element[=].target.equivalence = #equivalent

// Problèmes de santé traités
* group[=].element[+].code = #FRLMCarePlan.addresses
* group[=].element[=].target.code = #CarePlan.addresses
* group[=].element[=].target.equivalence = #equivalent

// Objectifs du plan
* group[=].element[+].code = #FRLMCarePlan.goal
* group[=].element[=].target.code = #CarePlan.goal
* group[=].element[=].target.equivalence = #equivalent

// Actions incluses dans le plan
* group[=].element[+].code = #FRLMCarePlan.activity
* group[=].element[=].target.code = #CarePlan.activity.reference:FRMedicationRequestDocument
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Le modèle métier porte des références d'actions génériques; la cible FHIR contraint activity.reference à FRMedicationRequestDocument."