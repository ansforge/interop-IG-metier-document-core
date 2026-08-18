Instance: FRLaboratoryBatteryResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMBatterieExamensBiologieMedicale → FRCDABatterieExamensDeBiologieMedicale → FRObservationLaboratoryReportResultsDocument"
Description: "Mapping des éléments du modèle métier FRLMBatterieExamensBiologieMedicale vers le profil CDA FRCDABatterieExamensDeBiologieMedicale, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument."
* title = "Mapping Métier/CDA/FHIR : \"Batterie d'examens de biologie médicale\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-batterie-examens-biologie-medicale"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-batterie-examens-de-biologie-medicale"
// Élément racine
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale
* group[=].element[=].target.code = #Organizer
* group[=].element[=].target.display = "FRCDABatterieExamensDeBiologieMedicale"
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.identifiant
* group[=].element[=].target.code = #Organizer.id
* group[=].element[=].target.equivalence = #equivalent
// code de la batterie d'examen
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.codeBatterieExamen
* group[=].element[=].target.code = #Organizer.code
* group[=].element[=].target.equivalence = #equivalent
// statut
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.statut
* group[=].element[=].target.code = #Organizer.statusCode
* group[=].element[=].target.equivalence = #equivalent
// date de l'examen
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.dateExamen
* group[=].element[=].target.code = #Organizer.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// sujet non humain
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.choice:FRLMSujetNonHumain
* group[=].element[=].target.code = #Organizer.subject
* group[=].element[=].target.equivalence = #equivalent
// patient avec sujet non humain
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain
* group[=].element[=].target.code = #Organizer.subject
* group[=].element[=].target.equivalence = #equivalent
// laboratoire exécutant
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.laboratoireExecutant
* group[=].element[=].target.code = #Organizer.performer
* group[=].element[=].target.equivalence = #equivalent  
// auteur
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.auteur
* group[=].element[=].target.code = #Organizer.author
* group[=].element[=].target.equivalence = #equivalent
// participant
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.participant
* group[=].element[=].target.code = #Organizer.participant
* group[=].element[=].target.equivalence = #equivalent
// prélèvement
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.prelevement
* group[=].element[=].target.code = #Organizer.component:frPrelevement
* group[=].element[=].target.equivalence = #equivalent
// résultat d'examen de biologie / élément clinique pertinent
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.resultatElementCliniquePertinent
* group[=].element[=].target.code = #Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent 
* group[=].element[=].target.equivalence = #equivalent
// image illustrative
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.imageIllustrative
* group[=].element[=].target.code = #Organizer.component:frImageIllustrative
* group[=].element[=].target.equivalence = #equivalent
// commentaire
* group[=].element[+].code = #FRLMBatterieExamensBiologieMedicale.commentaire
* group[=].element[=].target.code = #Organizer.component:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : CDA → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-batterie-examens-de-biologie-medicale"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-laboratory-report-results-document"
// Élément racine
* group[=].element[+].code = #Organizer
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRObservationLaboratoryReportResultsDocument"
* group[=].element[=].target.equivalence = #equivalent
// identifiant
* group[=].element[+].code = #Organizer.id
* group[=].element[=].target.code = #Observation.identifier
* group[=].element[=].target.equivalence = #equivalent
// code
* group[=].element[+].code = #Organizer.code
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// statusCode
* group[=].element[+].code = #Organizer.statusCode
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.equivalence = #equivalent
// effectiveTime
* group[=].element[+].code = #Organizer.effectiveTime
* group[=].element[=].target.code = #Observation.effectivePeriod
* group[=].element[=].target.equivalence = #equivalent
// subject
* group[=].element[+].code = #Organizer.subject
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.equivalence = #equivalent
// laboratoire exécutant
* group[=].element[+].code = #Organizer.performer
* group[=].element[=].target.code = #Observation.performer.extension:laboratoireExecutant
* group[=].element[=].target.equivalence = #equivalent
// author
* group[=].element[+].code = #Organizer.author
* group[=].element[=].target.code = #Observation.author
* group[=].element[=].target.equivalence = #equivalent
// valideur des résultats
* group[=].element[+].code = #Organizer.participant
* group[=].element[=].target.code = #Observation.performer.extension:validateurResultat
* group[=].element[=].target.display =  "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'"
* group[=].element[=].target.equivalence = #equivalent
// responsable de l'examen
* group[=].element[+].code = #Organizer.participant
* group[=].element[=].target.code = #Observation.performer.extension:responsableExamen
* group[=].element[=].target.display =  "Responsible Party (CDA participant) : participant/@typeCode='RESP'"
* group[=].element[=].target.equivalence = #equivalent
// dispositif automatique
* group[=].element[+].code = #Organizer.participant
* group[=].element[=].target.code = #Observation.performer.extension:dispositifAuto
* group[=].element[=].target.display =  "Device (CDA participant) : participant/@typeCode='DEV'"
* group[=].element[=].target.equivalence = #equivalent
// component:frPrelevement
* group[=].element[+].code = #Organizer.component:frPrelevement
* group[=].element[=].target.code = #Observation.specimen
* group[=].element[=].target.equivalence = #equivalent
// component:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[+].code = #Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent
* group[=].element[=].target.code = #Observation.hasMember:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent
// component:frImageIllustrative
* group[=].element[+].code = #Organizer.component:frImageIllustrative
* group[=].element[=].target.code = #Observation.derivedFrom:FRMediaDocument
* group[=].element[=].target.equivalence = #equivalent
// component:frCommentaireER
* group[=].element[+].code = #Organizer.component:frCommentaireER
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent