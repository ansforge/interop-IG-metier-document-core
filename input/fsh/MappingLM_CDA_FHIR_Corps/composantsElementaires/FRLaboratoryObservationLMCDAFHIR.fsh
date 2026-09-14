Instance: FRLaboratoryObservationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMLaboratoryObservation → FRCDAResultatsExamensDeBiologieMedicale / FRCDABatterieExamensDeBiologieMedicale / FRCDAIsolatMicrobiologique / FRCDAResultatExamensDeBiologieElementCliniquePertinent / FRLMLaboratoryObservation → FRObservationLaboratoryReportResultsDocument"
Description: "Mapping des éléments du modèle métier FRLMLaboratoryObservation vers ses quatre représentations CDA possibles selon le niveau de la hiérarchie du compte rendu de biologie (Examen de biologie médicale, Batterie, Isolat microbiologique, Résultat/élément clinique pertinent), puis vers l'unique profil FHIR FRObservationLaboratoryReportResultsDocument (qui porte lui-même ces quatre rôles, la hiérarchie étant représentée par Observation.hasMember)."
* name = "FRLaboratoryObservationLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Résultat d'examen de biologie médicale\""
* status = #draft
* experimental = false

// =====================================================================================
// Groupe Mapping 1a : modèle métier → CDA (niveau Examen de biologie médicale - Act)
// =====================================================================================
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultats-examens-de-biologie-medicale"
// Élément racine
* group[=].element[+].code = #FRLMLaboratoryObservation
* group[=].element[=].target.code = #Act
* group[=].element[=].target.display = "FRCDAResultatsExamensDeBiologieMedicale"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Niveau racine de la hiérarchie d'un compte rendu de biologie."
// Statut
* group[=].element[+].code = #FRLMLaboratoryObservation.header.status
* group[=].element[=].target.code = #Act.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Type
* group[=].element[+].code = #FRLMLaboratoryObservation.type
* group[=].element[=].target.code = #Act.code
* group[=].element[=].target.equivalence = #equivalent
// Nom original
* group[=].element[+].code = #FRLMLaboratoryObservation.originalName
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Act.code ne porte pas de originalText dans ce profil."
// Date/heure
* group[=].element[+].code = #FRLMLaboratoryObservation.observationDate[x]
* group[=].element[=].target.code = #Act.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMLaboratoryObservation.specimen
* group[=].element[=].target.code = #Act.entryRelationship:frPrelevement
* group[=].element[=].target.display = "FRCDAPrelevement"
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen correspondante
* group[=].element[+].code = #FRLMLaboratoryObservation.order
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "La demande d'examen est portée globalement au niveau du document (inFulfillmentOf), pas à ce niveau d'entrée."
// Localisation anatomique
* group[=].element[+].code = #FRLMLaboratoryObservation.bodySite
* group[=].element[=].target.equivalence = #unmatched
// Résultat
* group[=].element[+].code = #FRLMLaboratoryObservation.result
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Ce niveau regroupe des résultats, il n'en porte pas directement."
// Intervalle de référence
* group[=].element[+].code = #FRLMLaboratoryObservation.referenceRange
* group[=].element[=].target.equivalence = #unmatched
// Interprétation
* group[=].element[+].code = #FRLMLaboratoryObservation.interpretation
* group[=].element[=].target.equivalence = #unmatched
// Méthode
* group[=].element[+].code = #FRLMLaboratoryObservation.method
* group[=].element[=].target.equivalence = #unmatched
// Commentaire
* group[=].element[+].code = #FRLMLaboratoryObservation.note
* group[=].element[=].target.code = #Act.entryRelationship:frCommentaireER
* group[=].element[=].target.display = "FRCDACommentaireER"
* group[=].element[=].target.equivalence = #equivalent
// Composant(s)
* group[=].element[+].code = #FRLMLaboratoryObservation.component
* group[=].element[=].target.equivalence = #unmatched
// Référence de l'observation (image illustrative)
* group[=].element[+].code = #FRLMLaboratoryObservation.derivedFrom[x]
* group[=].element[=].target.code = #Act.entryRelationship:frImageIllustrative
* group[=].element[=].target.display = "FRCDAImageIllustrative"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Seul le cas d'une image illustrative est representable à ce niveau ; les autres références d'observations sont portées au niveau Résultat/élément clinique pertinent."
// Groupe d'observations - exemple d'un même élément avec plusieurs cibles CDA (une par sous-entrée possible)
* group[=].element[+].code = #FRLMLaboratoryObservation.hasMember[x]
* group[=].element[=].target[+].code = #Act.entryRelationship:frBatterieExamensDeBiologieMedicale
* group[=].element[=].target[=].display = "FRCDABatterieExamensDeBiologieMedicale"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #Act.entryRelationship:frIsolatMicrobiologique
* group[=].element[=].target[=].display = "FRCDAIsolatMicrobiologique"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #Act.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[=].target[=].display = "FRCDAResultatExamensDeBiologieElementCliniquePertinent"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Une Observation peut regrouper des Batteries, des Isolats et/ou des Résultats/éléments cliniques pertinents ; ces trois types d'entrées sont représentés par des entryRelationship distincts dans le CDA, mais par un seul hasMember dans le FHIR (la hiérarchie étant représentée par hasMember)."
// Résultats précédents
* group[=].element[+].code = #FRLMLaboratoryObservation.previousResults
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Ce niveau ne porte pas cette relation ; voir le niveau Résultat/élément clinique pertinent."
// Test Kit
* group[=].element[+].code = #FRLMLaboratoryObservation.testKit
* group[=].element[=].target.code = #Act.participant:frParticipantDispositifAutomatique
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "participant[frParticipantDispositifAutomatique] (typeCode DEV) désigne plus largement un dispositif automatique impliqué dans la production du résultat, sans distinguer spécifiquement un test kit."
// Calibrateur
* group[=].element[+].code = #FRLMLaboratoryObservation.calibrator
* group[=].element[=].target.equivalence = #unmatched
// Statut d'accréditation
* group[=].element[+].code = #FRLMLaboratoryObservation.accreditationStatus
* group[=].element[=].target.equivalence = #unmatched
// Test de point de soins
* group[=].element[+].code = #FRLMLaboratoryObservation.pointOfCareTest
* group[=].element[=].target.equivalence = #unmatched
// Observation déclenchante
* group[=].element[+].code = #FRLMLaboratoryObservation.triggeredBy[x]
* group[=].element[=].target.equivalence = #unmatched

// =====================================================================================
// Groupe Mapping 1b : modèle métier → CDA (niveau Batterie - Organizer)
// =====================================================================================
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-batterie-examens-de-biologie-medicale"
// Élément racine
* group[=].element[+].code = #FRLMLaboratoryObservation
* group[=].element[=].target.code = #Organizer
* group[=].element[=].target.display = "FRCDABatterieExamensDeBiologieMedicale"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Niveau intermédiaire de regroupement d'un ensemble d'examens biologiques (Batterie) ; ne porte pas de valeur de résultat en propre."
// Statut
* group[=].element[+].code = #FRLMLaboratoryObservation.header.status
* group[=].element[=].target.code = #Organizer.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Type
* group[=].element[+].code = #FRLMLaboratoryObservation.type
* group[=].element[=].target.code = #Organizer.code
* group[=].element[=].target.equivalence = #equivalent
// Nom original
* group[=].element[+].code = #FRLMLaboratoryObservation.originalName
* group[=].element[=].target.code = #Organizer.code.originalText.reference
* group[=].element[=].target.equivalence = #equivalent
// Date/heure
* group[=].element[+].code = #FRLMLaboratoryObservation.observationDate[x]
* group[=].element[=].target.code = #Organizer.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMLaboratoryObservation.specimen
* group[=].element[=].target.code = #Organizer.component:frPrelevement
* group[=].element[=].target.display = "FRCDAPrelevement"
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen correspondante
* group[=].element[+].code = #FRLMLaboratoryObservation.order
* group[=].element[=].target.equivalence = #unmatched
// Localisation anatomique
* group[=].element[+].code = #FRLMLaboratoryObservation.bodySite
* group[=].element[=].target.equivalence = #unmatched
// Résultat
* group[=].element[+].code = #FRLMLaboratoryObservation.result
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Ce niveau regroupe des résultats, il n'en porte pas directement."
// Intervalle de référence
* group[=].element[+].code = #FRLMLaboratoryObservation.referenceRange
* group[=].element[=].target.equivalence = #unmatched
// Interprétation
* group[=].element[+].code = #FRLMLaboratoryObservation.interpretation
* group[=].element[=].target.equivalence = #unmatched
// Méthode
* group[=].element[+].code = #FRLMLaboratoryObservation.method
* group[=].element[=].target.equivalence = #unmatched
// Commentaire
* group[=].element[+].code = #FRLMLaboratoryObservation.note
* group[=].element[=].target.code = #Organizer.component:frCommentaireER
* group[=].element[=].target.display = "FRCDACommentaireER"
* group[=].element[=].target.equivalence = #equivalent
// Composant(s)
* group[=].element[+].code = #FRLMLaboratoryObservation.component
* group[=].element[=].target.equivalence = #unmatched
// Référence de l'observation (image illustrative)
* group[=].element[+].code = #FRLMLaboratoryObservation.derivedFrom[x]
* group[=].element[=].target.code = #Organizer.component:frImageIllustrative
* group[=].element[=].target.display = "FRCDAImageIllustrative"
* group[=].element[=].target.equivalence = #wider
// Groupe d'observations
* group[=].element[+].code = #FRLMLaboratoryObservation.hasMember[x]
* group[=].element[=].target.code = #Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[=].target.display = "FRCDAResultatExamensDeBiologieElementCliniquePertinent"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Une Batterie ne peut regrouper que des Résultats/éléments cliniques pertinents ; ces deux types d'entrées sont représentés par des entryRelationship distincts dans le CDA, mais par un seul hasMember dans le FHIR (la hiérarchie étant représentée par hasMember)."
// Résultats précédents
* group[=].element[+].code = #FRLMLaboratoryObservation.previousResults
* group[=].element[=].target.equivalence = #unmatched
// Test Kit
* group[=].element[+].code = #FRLMLaboratoryObservation.testKit
* group[=].element[=].target.code = #Organizer.participant
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "participant (typeCode DEV, non slicé dans ce profil) désigne plus largement un dispositif automatique, sans distinguer spécifiquement un test kit."
// Calibrateur
* group[=].element[+].code = #FRLMLaboratoryObservation.calibrator
* group[=].element[=].target.equivalence = #unmatched
// Statut d'accréditation
* group[=].element[+].code = #FRLMLaboratoryObservation.accreditationStatus
* group[=].element[=].target.equivalence = #unmatched
// Test de point de soins
* group[=].element[+].code = #FRLMLaboratoryObservation.pointOfCareTest
* group[=].element[=].target.equivalence = #unmatched
// Observation déclenchante
* group[=].element[+].code = #FRLMLaboratoryObservation.triggeredBy[x]
* group[=].element[=].target.equivalence = #unmatched

// =====================================================================================
// Groupe Mapping 1c : modèle métier → CDA (niveau Isolat microbiologique - Organizer)
// =====================================================================================
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-isolat-microbiologique"
// Élément racine
* group[=].element[+].code = #FRLMLaboratoryObservation
* group[=].element[=].target.code = #Organizer
* group[=].element[=].target.display = "FRCDAIsolatMicrobiologique"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Niveau de regroupement des résultats obtenus sur un isolat microbiologique ; ne porte pas de valeur de résultat en propre."
// Statut
* group[=].element[+].code = #FRLMLaboratoryObservation.header.status
* group[=].element[=].target.code = #Organizer.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Type
* group[=].element[+].code = #FRLMLaboratoryObservation.type
* group[=].element[=].target.code = #Organizer.code
* group[=].element[=].target.equivalence = #equivalent
// Nom original
* group[=].element[+].code = #FRLMLaboratoryObservation.originalName
* group[=].element[=].target.equivalence = #unmatched
// Date/heure
* group[=].element[+].code = #FRLMLaboratoryObservation.observationDate[x]
* group[=].element[=].target.code = #Organizer.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMLaboratoryObservation.specimen
* group[=].element[=].target.code = #Organizer.specimen
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "specimen porte ici l'isolat microbiologique lui-même (1..1), pas un prélèvement générique : il n'y a pas de sous-entrée Prélèvement à ce niveau."
// Demande d'examen correspondante
* group[=].element[+].code = #FRLMLaboratoryObservation.order
* group[=].element[=].target.equivalence = #unmatched
// Localisation anatomique
* group[=].element[+].code = #FRLMLaboratoryObservation.bodySite
* group[=].element[=].target.equivalence = #unmatched
// Résultat
* group[=].element[+].code = #FRLMLaboratoryObservation.result
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Ce niveau regroupe des résultats, il n'en porte pas directement."
// Intervalle de référence
* group[=].element[+].code = #FRLMLaboratoryObservation.referenceRange
* group[=].element[=].target.equivalence = #unmatched
// Interprétation
* group[=].element[+].code = #FRLMLaboratoryObservation.interpretation
* group[=].element[=].target.equivalence = #unmatched
// Méthode
* group[=].element[+].code = #FRLMLaboratoryObservation.method
* group[=].element[=].target.equivalence = #unmatched
// Commentaire
* group[=].element[+].code = #FRLMLaboratoryObservation.note
* group[=].element[=].target.code = #Organizer.component:frCommentaireER
* group[=].element[=].target.display = "FRCDACommentaireER"
* group[=].element[=].target.equivalence = #equivalent
// Composant(s)
* group[=].element[+].code = #FRLMLaboratoryObservation.component
* group[=].element[=].target.equivalence = #unmatched
// Référence de l'observation (image illustrative)
* group[=].element[+].code = #FRLMLaboratoryObservation.derivedFrom[x]
* group[=].element[=].target.code = #Organizer.component:frImageIllustrative
* group[=].element[=].target.display = "FRCDAImageIllustrative"
* group[=].element[=].target.equivalence = #wider
// Groupe d'observations - deux cibles possibles à ce niveau
* group[=].element[+].code = #FRLMLaboratoryObservation.hasMember[x]
* group[=].element[=].target[+].code = #Organizer.component:frBatterieExamensDeBiologieMedicale
* group[=].element[=].target[=].display = "FRCDABatterieExamensDeBiologieMedicale"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[=].target[=].display = "FRCDAResultatExamensDeBiologieElementCliniquePertinent"
* group[=].element[=].target[=].equivalence = #equivalent
// Résultats précédents
* group[=].element[+].code = #FRLMLaboratoryObservation.previousResults
* group[=].element[=].target.equivalence = #unmatched
// Test Kit
* group[=].element[+].code = #FRLMLaboratoryObservation.testKit
* group[=].element[=].target.code = #Organizer.participant:frParticipantDispositif
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "participant[frParticipantDispositif] (typeCode DEV) désigne plus largement un dispositif automatique, sans distinguer spécifiquement un test kit."
// Calibrateur
* group[=].element[+].code = #FRLMLaboratoryObservation.calibrator
* group[=].element[=].target.equivalence = #unmatched
// Statut d'accréditation
* group[=].element[+].code = #FRLMLaboratoryObservation.accreditationStatus
* group[=].element[=].target.equivalence = #unmatched
// Test de point de soins
* group[=].element[+].code = #FRLMLaboratoryObservation.pointOfCareTest
* group[=].element[=].target.equivalence = #unmatched
// Observation déclenchante
* group[=].element[+].code = #FRLMLaboratoryObservation.triggeredBy[x]
* group[=].element[=].target.equivalence = #unmatched

// =====================================================================================
// Groupe Mapping 1d : modèle métier → CDA (niveau Résultat / élément clinique pertinent - Observation)
// =====================================================================================
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultat-examens-de-biologie-element-clinique-pertinent"
// Élément racine
* group[=].element[+].code = #FRLMLaboratoryObservation
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDAResultatExamensDeBiologieElementCliniquePertinent"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Observation qui porte directement une valeur de résultat."
// Statut
* group[=].element[+].code = #FRLMLaboratoryObservation.header.status
* group[=].element[=].target.code = #Observation.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Type
* group[=].element[+].code = #FRLMLaboratoryObservation.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Nom original
* group[=].element[+].code = #FRLMLaboratoryObservation.originalName
* group[=].element[=].target.code = #Observation.code.originalText.reference
* group[=].element[=].target.equivalence = #equivalent
// Date/heure
* group[=].element[+].code = #FRLMLaboratoryObservation.observationDate[x]
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMLaboratoryObservation.specimen
* group[=].element[=].target.code = #Observation.entryRelationship:frPrelevement
* group[=].element[=].target.display = "FRCDAPrelevement"
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen correspondante
* group[=].element[+].code = #FRLMLaboratoryObservation.order
* group[=].element[=].target.equivalence = #unmatched
// Localisation anatomique
* group[=].element[+].code = #FRLMLaboratoryObservation.bodySite
* group[=].element[=].target.equivalence = #unmatched
// Résultat
* group[=].element[+].code = #FRLMLaboratoryObservation.result
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent
// Intervalle de référence
* group[=].element[+].code = #FRLMLaboratoryObservation.referenceRange
* group[=].element[=].target.code = #Observation.referenceRange
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMLaboratoryObservation.interpretation
* group[=].element[=].target.code = #Observation.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Méthode
* group[=].element[+].code = #FRLMLaboratoryObservation.method
* group[=].element[=].target.code = #Observation.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMLaboratoryObservation.note
* group[=].element[=].target.code = #Observation.entryRelationship:frCommentaireER
* group[=].element[=].target.display = "FRCDACommentaireER"
* group[=].element[=].target.equivalence = #equivalent
// Composant(s)
* group[=].element[+].code = #FRLMLaboratoryObservation.component
* group[=].element[=].target.equivalence = #unmatched
// Référence de l'observation (image illustrative)
* group[=].element[+].code = #FRLMLaboratoryObservation.derivedFrom[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas de sous-entrée Image illustrative à ce niveau (uniquement aux niveaux Batterie, Isolat et Examen de biologie médicale)."
// Groupe d'observations
* group[=].element[+].code = #FRLMLaboratoryObservation.hasMember[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas de sous-entrée hasMember à ce niveau (uniquement aux niveaux Batterie, Isolat et Examen de biologie médicale)."
// Résultats précédents
* group[=].element[+].code = #FRLMLaboratoryObservation.previousResults
* group[=].element[=].target.code = #Observation.entryRelationship:frResultatsAnterieurs
* group[=].element[=].target.equivalence = #equivalent
// Test Kit
* group[=].element[+].code = #FRLMLaboratoryObservation.testKit
* group[=].element[=].target.code = #Observation.participant
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "participant (typeCode DEV, non slicé dans ce profil) désigne plus largement un dispositif automatique, sans distinguer spécifiquement un test kit."
// Calibrateur
* group[=].element[+].code = #FRLMLaboratoryObservation.calibrator
* group[=].element[=].target.equivalence = #unmatched
// Statut d'accréditation
* group[=].element[+].code = #FRLMLaboratoryObservation.accreditationStatus
* group[=].element[=].target.equivalence = #unmatched
// Test de point de soins
* group[=].element[+].code = #FRLMLaboratoryObservation.pointOfCareTest
* group[=].element[=].target.equivalence = #unmatched
// Observation déclenchante
* group[=].element[+].code = #FRLMLaboratoryObservation.triggeredBy[x]
* group[=].element[=].target.equivalence = #unmatched

// =====================================================================================
// Groupe Mapping 2 : modèle métier → FHIR (les quatre niveaux CDA convergent vers ce seul profil)
// =====================================================================================
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-laboratory-report-results-document"
// Élément racine
* group[=].element[+].code = #FRLMLaboratoryObservation
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRObservationLaboratoryReportResultsDocument"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Un seul profil FHIR porte les quatre rôles CDA (Examen de biologie médicale, Batterie, Isolat, Résultat clinique) ; la hiérarchie entre occurrences est portée par Observation.hasMember."
// Identifiant
* group[=].element[+].code = #FRLMLaboratoryObservation.header.identifier
* group[=].element[=].target.code = #Observation.identifier
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMLaboratoryObservation.header.status
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.equivalence = #equivalent
// Sujet direct de l'observation
* group[=].element[+].code = #FRLMLaboratoryObservation.header.directSubject[x]
* group[=].element[=].target.code = #Observation.focus
* group[=].element[=].target.equivalence = #equivalent
// Date/heure de l'observation
* group[=].element[+].code = #FRLMLaboratoryObservation.observationDate[x]
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Type
* group[=].element[+].code = #FRLMLaboratoryObservation.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Nom original
* group[=].element[+].code = #FRLMLaboratoryObservation.originalName
* group[=].element[=].target.code = #Observation.code.text
* group[=].element[=].target.equivalence = #equivalent
// Méthode
* group[=].element[+].code = #FRLMLaboratoryObservation.method
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMLaboratoryObservation.specimen
* group[=].element[=].target.code = #Observation.specimen
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen correspondante
* group[=].element[+].code = #FRLMLaboratoryObservation.order
* group[=].element[=].target.code = #Observation.basedOn
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMLaboratoryObservation.bodySite
* group[=].element[=].target.code = #Observation.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Résultat
* group[=].element[+].code = #FRLMLaboratoryObservation.result
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Intervalle de référence
* group[=].element[+].code = #FRLMLaboratoryObservation.referenceRange
* group[=].element[=].target.code = #Observation.referenceRange
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Ce profil définit par ailleurs value[x]:valueRange, utilisé quand l'observation est elle-même une déclaration d'intervalle de référence plutôt qu'un résultat mesuré."
// Interprétation
* group[=].element[+].code = #FRLMLaboratoryObservation.interpretation
* group[=].element[=].target.code = #Observation.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMLaboratoryObservation.note
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent
// Composant(s)
* group[=].element[+].code = #FRLMLaboratoryObservation.component
* group[=].element[=].target.code = #Observation.component
* group[=].element[=].target.equivalence = #equivalent
// Référence de l'observation (image illustrative)
* group[=].element[+].code = #FRLMLaboratoryObservation.derivedFrom[x]
* group[=].element[=].target.code = #Observation.derivedFrom
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Observation.derivedFrom est restreint à Reference(FRMediaDocument) (image illustrative) dans ce profil."
// Groupe d'observations
* group[=].element[+].code = #FRLMLaboratoryObservation.hasMember[x]
* group[=].element[=].target.code = #Observation.hasMember
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Observation.hasMember est restreint à Reference(FRObservationLaboratoryReportResultsDocument)."
// Résultats précédents
* group[=].element[+].code = #FRLMLaboratoryObservation.previousResults
* group[=].element[=].target.code = #Observation.extension:supportingInfo
* group[=].element[=].target.equivalence = #equivalent
// Test Kit
* group[=].element[+].code = #FRLMLaboratoryObservation.testKit
* group[=].element[=].target.code = #Observation.extension:testKit
* group[=].element[=].target.equivalence = #equivalent
// Calibrateur
* group[=].element[+].code = #FRLMLaboratoryObservation.calibrator
* group[=].element[=].target.code = #Observation.extension:calibrator
* group[=].element[=].target.equivalence = #equivalent
// Statut d'accréditation
* group[=].element[+].code = #FRLMLaboratoryObservation.accreditationStatus
* group[=].element[=].target.code = #Observation.extension:accreditationStatus
* group[=].element[=].target.equivalence = #equivalent
// Test de point de soins
* group[=].element[+].code = #FRLMLaboratoryObservation.pointOfCareTest
* group[=].element[=].target.code = #Observation.category
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Observation.category porte déjà le code du chapitre dans ce profil ; l'indicateur de test de point de soins y serait porté comme un codage additionnel distinct au sein du même élément (0..*)."
// Observation déclenchante
* group[=].element[+].code = #FRLMLaboratoryObservation.triggeredBy[x]
* group[=].element[=].target.code = #Observation.extension:triggeredBy
* group[=].element[=].target.equivalence = #equivalent
