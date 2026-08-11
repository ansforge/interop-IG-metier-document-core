# Mapping Métier/CDA/FHIR - FR Document Core (Modèle métier) v0.1.0

## Mapping Métier/CDA/FHIR

 
There is no translation page available for the current page, so it has been rendered in the default language 

Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Mapping entre les éléments de l'entête : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMEnteteDocument** | **ClinicalDocument** |  |
| FRLMEnteteDocument.identifiantUniqueDocument | ClinicalDocument.id | Bundle.identifier |
| FRLMEnteteDocument.modeleDocument | ClinicalDocument.templateId | Composition.meta.profile |
| FRLMEnteteDocument.typeDocument | ClinicalDocument.code | Composition.type |
| FRLMEnteteDocument.titreDocument | ClinicalDocument.title | Composition.title |
| FRLMEnteteDocument.dateDeCreationDocument | ClinicalDocument.effectiveTime | Composition.date |
| FRLMEnteteDocument.niveauConfidentialiteDocument | ClinicalDocument.confidentialityCode | Composition.confidentiality |
| FRLMEnteteDocument.languePrincipaleDocument | ClinicalDocument.languageCode | Composition.language |
| FRLMEnteteDocument.identifiantLotDeVersionsDocument | ClinicalDocument.setId | Composition.identifier |
| FRLMEnteteDocument.versionDocument | ClinicalDocument.versionNumber | Composition.extension:R5-Composition-version |
| FRLMEnteteDocument.StatutDocument | ClinicalDocument.documentationOf. serviceEvent.lab:statusCode | Composition.status |
| FRLMEnteteDocument.patient | ClinicalDocument.recordTarget | Composition.subject |
| FRLMEnteteDocument.auteur | ClinicalDocument.author | Composition.author |
| FRLMEnteteDocument.operateurSaisie | ClinicalDocument.dataEnterer | Composition.extension:data-enterer |
| FRLMEnteteDocument.informateur | ClinicalDocument.informant | Composition.extension:informant |
| FRLMEnteteDocument.structureConservation | ClinicalDocument.custodian | Composition.custodian |
| FRLMEnteteDocument.destinataire | ClinicalDocument.informationRecipient | Composition.extension:informationRecipient |
| FRLMEnteteDocument.responsable | ClinicalDocument.legalAuthenticator | Composition.attester |
| FRLMEnteteDocument.validateur | ClinicalDocument.authenticator | Composition.attester |
| FRLMEnteteDocument.participant | ClinicalDocument.participant | Composition.extension:participant |
| FRLMEnteteDocument.prescription | ClinicalDocument.inFulfillmentOf | Composition.extension:order |
| FRLMEnteteDocument.evenement | ClinicalDocument.documentationOf | Composition.event |
| FRLMEnteteDocument.documentDeReference | ClinicalDocument.relatedDocument | Composition.relatesTo |
| FRLMEnteteDocument.consentementAssocie | ClinicalDocument.authorization | Composition.extension:consent |
| FRLMEnteteDocument.priseEncharge | ClinicalDocument.componentOf | Composition.encounter |
| **FRLMAuteur** | **author** | Composition.author |
| FRLMAuteur.roleFonctionnel | author.functionCode | Composition.author.PractitionerRole.code |
| FRLMAuteur.horodatageParticipation | author.time | Composition.author.extension:time |
| FRLMAuteur.FRLMPersonneStructure | author.assignedAuthor | Composition.author.Device |
| FRLMAuteur.FRLMPersonneStructure | author.assignedAuthor | Composition.author.Patient |
| FRLMAuteur.FRLMPersonneStructure | author.assignedAuthor | Composition.author.Practitioner |
| FRLMAuteur.FRLMSystemeStructureAuteur | author.assignedAuthor | Composition.author.Device |
| FRLMAuteur.FRLMSystemeStructureAuteur | author.assignedAuthor | Composition.author.Patient |
| FRLMAuteur.FRLMSystemeStructureAuteur | author.assignedAuthor | Composition.author.Practitioner |
| **FRLMConsentement** | **authorization** | extension:ConsentExtension.ValueReference.Consent |
| FRLMConsentement.identifiantConsentement | authorization.consent.id | extension:ConsentExtension.ValueReference.Consent.identifier |
| FRLMConsentement.typeConsentement | authorization.consent.code | extension:ConsentExtension.ValueReference.Consent.category |
| FRLMConsentement.statutConsentement | authorization.consent.statusCode="completed" | extension:ConsentExtension.ValueReference.Consent.status:active |
| **FRLMDestinatairePrevu** | **informationRecipient** | **extension:InformationRecipientExtension** |
| FRLMDestinatairePrevu.destinataire | informationRecipient.intendedRecipient | extension:InformationRecipientExtension.extension:party.PractitionerRole |
| **FRLMDocumentDeReference** | **relatedDocument** | Composition.relatesTo |
| FRLMDocumentDeReference.typeReference | relatedDocument@typeCode | Composition.relatesTo.code |
| FRLMDocumentDeReference.identifiantUniqueDocument | relatedDocument.parentDocument.id | Composition.relatesTo.targetIdentifier |
| **FRLMEvenement** | **documentationOf** | Composition.event |
| FRLMEvenement.identifiantEvenement | documentationOf.serviceEvent.id |  |
| FRLMEvenement.codeEvenement | documentationOf.serviceEvent.code | Composition.event.code |
| FRLMEvenement.dateHeureEvenement | documentationOf.serviceEvent.effectiveTime | Composition.event.period |
| FRLMEvenement.executantEvenement | documentationOf.serviceEvent.performer@typeCode="PRF" | Composition.event.extension:perfomer.PractitionerRole |
| FRLMEvenement.executantEvenement.roleFonctionnel | documentationOf.serviceEvent. performer.functionCode | Composition.event.extension:perfomer.PractitionerRole.code |
| FRLMEvenement.executantEvenement.dateHeureParticipation | documentationOf.serviceEvent. performer.time |  |
| FRLMEvenement.executantEvenement.executant | documentationOf.serviceEvent. performer.assignedEntity | Composition.event.extension:perfomer.PractitionerRole.Practitioner |
| **FRLMInformateur** | **informant** | **extension:InformantExtension** |
| FRLMInformateur.informateur | informant.assignedEntity | extension:InformantExtension.extension:party.ValueReference |
| FRLMInformateur.informateur | informant.relatedEntity | extension:InformantExtension.extension:party.ValueReference |
| **FRLMOperateurSaisie** | **dataEnterer** | **DataEntererExtension** |
| FRLMOperateurSaisie.dateSaisie | dataEnterer.time | DataEntererExtension.extension:time |
| FRLMOperateurSaisie.operateurSaisie | dataEnterer.assignedEntity | DataEntererExtension.extension:party.ValueReference |
| **FRLMParticipant** | **participant** | **extension:ParticipantExtension** |
| FRLMParticipant.typeParticipation | participant@typeCode | extension:ParticipantExtension.extention:type |
| FRLMParticipant.roleFonctionnel | participant.functionCode | extension:ParticipantExtension.extention:function.coding |
| FRLMParticipant.dateDebutEtOuFinParticipation | participant.time | extension:ParticipantExtension.extention:time |
| FRLMParticipant.participant | participant.associatedEntity | extension:ParticipantExtension.party |
| **FRLMPatientUsager** | **recordTarget** |  |
| FRLMPatientUsager.identifiantPatient | recordTarget.patientRole.id | Patient.identifier |
| FRLMPatientUsager.adresse | recordTarget.patientRole.addr | Patient.address |
| FRLMPatientUsager.coordonneesTelecom | recordTarget.patientRole.telecom | Patient.telecom |
| FRLMPatientUsager.personnePhysique.nomsPrenomsPatient | recordTarget.patientRole. patient.name | Patient.name |
| FRLMPatientUsager.personnePhysique. nomsPrenomsPatient.nom | recordTarget.patientRole. patient.name.family | Patient.name.family |
| FRLMPatientUsager.personnePhysique. nomsPrenomsPatient.nom.nomNaissance | recordTarget.patientRole. patient.name.family@qualifier='BR' | Patient.name:officialname.family |
| FRLMPatientUsager.personnePhysique. nomsPrenomsPatient.nom.nomUtilise | recordTarget.patientRole. patient.name.family@qualifier='CL' | Patient.name:usualname.family |
| FRLMPatientUsager.personnePhysique. nomsPrenomsPatient.prenom | recordTarget.patientRole. patient.name.given | Patient.name.given |
| FRLMPatientUsager.personnePhysique. nomsPrenomsPatient.prenom | recordTarget.patientRole. patient.name.given | Patient.name:officialname.birth-list-given-name |
| FRLMPatientUsager.personnePhysique. nomsPrenomsPatient.prenom.listePrenoms | recordTarget.patientRole. patient.name.given | Patient.name.given |
| FRLMPatientUsager.personnePhysique. nomsPrenomsPatient.prenom.listePrenoms | recordTarget.patientRole. patient.name.given | Patient.name:officialname.birth-list-given-name |
| FRLMPatientUsager.personnePhysique. nomsPrenomsPatient.prenom.premierPrenom | recordTarget.patientRole. patient.name.given@qualifier='BR' | Patient.name:officialname.given |
| FRLMPatientUsager.personnePhysique. nomsPrenomsPatient.prenom.prenomUtilise | recordTarget.patientRole. patient.name.given@qualifier='CL' | Patient.name:usualname.given |
| FRLMPatientUsager.personnePhysique.sexe | recordTarget.patientRole. patient.administrativeGenderCode | Patient.gender |
| FRLMPatientUsager.personnePhysique.dateNaissance | recordTarget.patientRole. patient.birthTime | Patient.birthDate |
| FRLMPatientUsager.personnePhysique.indicateurDeces | recordTarget.patientRole. patient.sdtc:deceasedInd | Patient.deceasedBoolean |
| FRLMPatientUsager.personnePhysique.dateDeces | recordTarget.patientRole. patient.sdtc:deceasedTime | Patient.deceasedDateTime |
| FRLMPatientUsager.personnePhysique.grossesseMultiple | recordTarget.patientRole. patient.sdtc:multipleBirthInd | Patient.multipleBirthBoolean |
| FRLMPatientUsager.personnePhysique.numeroOrdreNaissance | recordTarget.patientRole. patient.sdtc:multipleBirthOrderNumber | Patient.multipleBirthInteger |
| FRLMPatientUsager.personnePhysique.representantPatient | recordTarget.patientRole. patient.guardian | Patient.contact.relationship:Role='GUARD' |
| FRLMPatientUsager.personnePhysique. representantPatient.adresse | recordTarget.patientRole. patient.guardian.addr | Patient.contact.address |
| FRLMPatientUsager.personnePhysique. representantPatient.coordonneesTelecom | recordTarget.patientRole. patient.guardian.telecom | Patient.contact.telecom |
| FRLMPatientUsager.personnePhysique. representantPatient.personneRepresentantPatient.nomsPrenomsRepresentantPatient | recordTarget.patientRole. patient.guardian.guardianPerson.name | Patient.contact.name |
| FRLMPatientUsager.personnePhysique. representantPatient.personneRepresentantPatient.nomsPrenomsRepresentantPatient.nom | recordTarget.patientRole. patient.guardian.guardianPerson.family | Patient.contact.name.family |
| FRLMPatientUsager.personnePhysique. representantPatient.personneRepresentantPatient.nomsPrenomsRepresentantPatient.prenom | recordTarget.patientRole. patient.guardian.guardianPerson.given | Patient.contact.name.given |
| FRLMPatientUsager.personnePhysique. representantPatient.structureRepresentantPatient | recordTarget.patientRole. patient.guardian.guardianOrganization | Patient.contact.organization |
| FRLMPatientUsager.personnePhysique. representantPatient.structureRepresentantPatient.identifiant | recordTarget.patientRole. patient.guardian.guardianOrganization.id | Patient.contact.organization.identifier |
| FRLMPatientUsager.personnePhysique. representantPatient.structureRepresentantPatient.nom | recordTarget.patientRole. patient.guardian.guardianOrganization.name | Patient.contact.organization.name |
| FRLMPatientUsager.personnePhysique.lieuNaissance | recordTarget.patientRole. patient.birthPlace | Patient.extension:birthPlace |
| FRLMPatientUsager.personnePhysique. lieuNaissance.nomLieuNaissance | recordTarget.patientRole. patient.birthPlace.place.name | Patient.extension:birthPlace.value[FRCoreAddressProfile].text |
| FRLMPatientUsager.personnePhysique. lieuNaissance.adresseLieuNaissance | recordTarget.patientRole. patient.birthPlace.place.addr |  |
| FRLMPatientUsager.personnePhysique. lieuNaissance.adresseLieuNaissance.codeOfficielGeographiqueLieuNaissance | recordTarget.patientRole. patient.birthPlace.place.addr.county |  |
| **FRLMPersonneStructure** | **assignedEntity** | **PractitionerRole** |
| FRLMPersonneStructure.personne.identifiantPersonne | assignedEntity.id | PractitionerRole.practitioner.identifier |
| FRLMPersonneStructure.personne.professionRole | assignedEntity.code | PractitionerRole.Practitioner.qualification.code |
| FRLMPersonneStructure.personne.adresse | assignedEntity.addr | PractitionerRole.Practitioner.address |
| FRLMPersonneStructure.personne.coordonneesTelecom | assignedEntity.telecom | PractitionerRole.Practitioner.telecom |
| FRLMPersonneStructure.personne.IdentitePersonne | assignedEntity.assignedPerson |  |
| FRLMPersonneStructure.personne. IdentitePersonne.nomPersonne | assignedEntity.assignedPerson. name.family | PractitionerRole.Practitioner.name.family |
| FRLMPersonneStructure.personne. IdentitePersonne.prenomPersonne | assignedEntity.assignedPerson. name.given | PractitionerRole.Practitioner.name.given |
| FRLMPersonneStructure.personne. IdentitePersonne.civilite | assignedEntity.assignedPerson. name.prefix | PractitionerRole.Practitioner.name.prefix |
| FRLMPersonneStructure.personne. IdentitePersonne.titre | assignedEntity.assignedPerson. name.suffix | PractitionerRole.Practitioner.name.suffix |
| FRLMPersonneStructure.structure | assignedEntity.representedOrganization | PractitionerRole.Organization |
| FRLMPersonneStructure.structure.identifiantStructure | assignedEntity.representedOrganization.id | PractitionerRole.Organization.identifier |
| FRLMPersonneStructure.structure.nomStructure | assignedEntity.representedOrganization.name | PractitionerRole.Organization.name |
| FRLMPersonneStructure.structure.adresse | assignedEntity.representedOrganization.addr | PractitionerRole.Organization.address |
| FRLMPersonneStructure.structure.coordonneesTelecom | assignedEntity.representedOrganization.telecom | PractitionerRole.Organization.telecom |
| FRLMPersonneStructure.structure.secteurActivite | assignedEntity.representedOrganization.standardIndustryClassCode | PractitionerRole.Organization.type |
| **FRLMPersonneStructureAuteur** | **assignedAuthor** | PractitionerRole.Practitioner |
| FRLMPersonneStructureAuteur.personne.identifiantPersonne | assignedAuthor.id | PractitionerRole.Practitioner.identifier |
| FRLMPersonneStructureAuteur.personne.professionRole | assignedAuthor.code | PractitionerRole.Practitioner.qualification.code |
| FRLMPersonneStructureAuteur.personne.adresse | assignedAuthor.addr | PractitionerRole.Practitioner.address |
| FRLMPersonneStructureAuteur.personne.coordonneesTelecom | assignedAuthor.telecom | PractitionerRole.Practitioner.telecom |
| FRLMPersonneStructureAuteur.personne.IdentitePersonne | assignedAuthor.assignedPerson |  |
| FRLMPersonneStructureAuteur.personne. IdentitePersonne.nomPersonne | assignedAuthor.assignedPerson. name.family | PractitionerRole.Practitioner.name.family |
| FRLMPersonneStructureAuteur.personne. IdentitePersonne.prenomPersonne | assignedAuthor.assignedPerson. name.given | PractitionerRole.Practitioner.name.given |
| FRLMPersonneStructureAuteur.personne. IdentitePersonne.civilite | assignedAuthor.assignedPerson. name.prefix | PractitionerRole.Practitioner.name.prefix |
| FRLMPersonneStructureAuteur.personne. IdentitePersonne.titre | assignedAuthor.assignedPerson. name.suffix | PractitionerRole.Practitioner.name.suffix |
| FRLMPersonneStructureAuteur.structure | assignedAuthor.representedOrganization | PractitionerRole.Organization |
| FRLMPersonneStructureAuteur.structure.identifiantStructure | assignedAuthor.representedOrganization.id | PractitionerRole.Organization.identifier |
| FRLMPersonneStructureAuteur.structure.nomStructure | assignedAuthor.representedOrganization.name | PractitionerRole.Organization.name |
| FRLMPersonneStructureAuteur.structure.adresse | assignedAuthor.representedOrganization.addr | PractitionerRole.Organization.address |
| FRLMPersonneStructureAuteur.structure.coordonneesTelecom | assignedAuthor.representedOrganization.telecom | PractitionerRole.Organization.telecom |
| FRLMPersonneStructureAuteur.structure.secteurActivite | assignedAuthor.representedOrganization.standardIndustryClassCode | PractitionerRole.Organization.type |
| **FRLMPersonneStructure** | **relatedEntity** | Patient.contact |
| **FRLMPersonneStructure** | **relatedEntity** | **RelatedPerson** |
| FRLMPersonneStructure.personne.professionRole | relatedEntity@classCode |  |
| FRLMPersonneStructure.personne.professionRole | relatedEntity@classCode | Patient.contact.relationship:Role |
| FRLMPersonneStructure.personne.lien | relatedEntity.code | Patient.contact.relationship:RelationType.coding |
| FRLMPersonneStructure.personne.lien | relatedEntity.code | RelatedPerson.relationship.coding |
| FRLMPersonneStructure.personne.adresse | relatedEntity.addr | Patient.contact.address |
| FRLMPersonneStructure.personne.adresse | relatedEntity.addr | RelatedPerson.address |
| FRLMPersonneStructure.personne.coordonneesTelecom | relatedEntity.telecom | Patient.contact.telecom |
| FRLMPersonneStructure.personne.coordonneesTelecom | relatedEntity.telecom | RelatedPerson.telecom |
| FRLMPersonneStructure.personne.IdentitePersonne | relatedEntity.relatedPerson | RelatedPerson.name |
| FRLMPersonneStructure.personne. IdentitePersonne.nomPersonne | relatedEntity.relatedPerson. name.family | Patient.contact.name.family |
| FRLMPersonneStructure.personne. IdentitePersonne.nomPersonne | relatedEntity.relatedPerson. name.family | RelatedPerson.name.family |
| FRLMPersonneStructure.personne. IdentitePersonne.prenomPersonne | relatedEntity.relatedPerson. name.given | Patient.contact.name.given |
| FRLMPersonneStructure.personne. IdentitePersonne.prenomPersonne | relatedEntity.relatedPerson. name.given | RelatedPerson.name.given |
| FRLMPersonneStructure.personne. IdentitePersonne.civilite | relatedEntity.relatedPerson. name.prefix | Patient.contact.name.prefix |
| FRLMPersonneStructure.personne. IdentitePersonne.civilite | relatedEntity.relatedPerson. name.prefix | RelatedPerson.name.prefix |
| FRLMPersonneStructure.personne. IdentitePersonne.titre | relatedEntity.relatedPerson. name.suffix | Patient.contact.name.suffix |
| FRLMPersonneStructure.personne. IdentitePersonne.titre | relatedEntity.relatedPerson. name.suffix | RelatedPerson.name.suffix |
| **FRLMPrescription** | **inFulfillmentOf** | **extension:basedOn** |
| FRLMPrescription.identifiantPrescription | inFulfillmentOf.order.id | extension:basedOnExtension.ValueReference.ServiceRequest.identifier |
| FRLMPrescription.accessionNumber | inFulfillmentOf.order.ps3-20:accessionNumber | extension:basedOn.ValueReference.ServiceRequest.identifier |
| **FRLMPriseEncharge** | **componentOf** | Composition.encounter.Encounter |
| FRLMPriseEncharge.identifiantPriseEnCharge | componentOf.encompassingEncounter.id | Encounter.identifier |
| FRLMPriseEncharge.typePriseEnCharge | componentOf.encompassingEncounter.code | Encounter.type |
| FRLMPriseEncharge.dateDebutFinPriseEnCharge | componentOf.encompassingEncounter.effectiveTime | Encounter.period |
| FRLMPriseEncharge.typeSortie | componentOf.encompassingEncounter.dischargeDispositionCode | Encounter.hospitalization.dischargeDisposition |
| FRLMPriseEncharge.responsablePriseEnCharge | componentOf.encompassingEncounter. responsibleParty.assignedEntity | Encounter.participant.type="DIS".individual |
| FRLMPriseEncharge.personneImpliqueePriseEnCharge | componentOf.encompassingEncounter.encounterParticipant | Encounter.participant |
| FRLMPriseEncharge.personneImpliqueePriseEnCharge.typeParticipation | componentOf.encompassingEncounter.encounterParticipant@typeCode | Encounter.participant.type |
| FRLMPriseEncharge.personneImpliqueePriseEnCharge.dateDebutFinParticipation | componentOf.encompassingEncounter. encounterParticipant.time | Encounter.participant.period |
| FRLMPriseEncharge.personneImpliqueePriseEnCharge.professionnelImplique | componentOf.encompassingEncounter. encounterParticipant.assignedEntity | Encounter.participant.individual |
| FRLMPriseEncharge.lieuPriseEnCharge | componentOf.encompassingEncounter.location | Encounter.location |
| FRLMPriseEncharge.lieuPriseEnCharge.structure | componentOf.encompassingEncounter. location.healthcareFacility | Encounter.location.Location |
| FRLMPriseEncharge.lieuPriseEnCharge. structure.secteurActivite | componentOf.encompassingEncounter. location.healthcareFacility.code | Encounter.location.Location.type |
| FRLMPriseEncharge.lieuPriseEnCharge. structure.secteurActivite.categorieEtablissement | componentOf.encompassingEncounter. location.healthcareFacility.code.translation |  |
| FRLMPriseEncharge.lieuPriseEnCharge. structure.nomStructure | componentOf.encompassingEncounter. location.healthcareFacility.location.name | Encounter.location.Location.name |
| FRLMPriseEncharge.lieuPriseEnCharge. structure.adresse | componentOf.encompassingEncounter. location.healthcareFacility.location.addr | Encounter.location.Location.address |
| **FRLMResponsable** | **legalAuthenticator** | Composition.attester |
| FRLMResponsable.dateHeureAttestationPriseResponsabilite | legalAuthenticator.time | Composition.attester.time |
| FRLMResponsable.responsable | legalAuthenticator.assignedEntity | Composition.attester.party.PractitionerRole |
| **FRLMStructureConservation** | **custodian** | Composition.custodian |
| FRLMStructureConservation.structure | custodian.assignedCustodian | Composition.custodian.organization |
| FRLMStructureConservation.structure.identifiantStructure | custodian.assignedCustodian. representedCustodianOrganization.id | Composition.custodian.organization.identifier |
| FRLMStructureConservation.structure.nomStructure | custodian.assignedCustodian. representedCustodianOrganization.name | Composition.custodian.organization.name |
| FRLMStructureConservation.structure.adresse | custodian.assignedCustodian. representedCustodianOrganization.addr | Composition.custodian.organization.address |
| FRLMStructureConservation.structure.coordonneesTelecom | custodian.assignedCustodian. representedCustodianOrganization.telecom | Composition.custodian.organization.telecom |
| FRLMSysteme.identificationAuteur | **assignedAuthor** | **Device** |
| FRLMSysteme.identificationAuteur.identifiantAuteur | assignedAuthor.id | Device.identifier |
| FRLMSysteme.identificationAuteur.professionSavoirFaireRole | assignedAuthor.code | Device.type |
| FRLMSysteme.identificationAuteur.systeme | assignedAuthor.assignedAuthoringDevice |  |
| FRLMSysteme.identificationAuteur. systeme.nomModeleSysteme | assignedAuthor.assignedAuthoringDevice.manufacturerModelName | Device.deviceName.name |
| FRLMSysteme.identificationAuteur. systeme.nomSysteme | assignedAuthor.assignedAuthoringDevice.softwareName | Device.deviceName.type |
| FRLMSysteme.identificationAuteur.structure | assignedAuthor.representedOrganization | Device.owner.organization |
| FRLMSysteme.identificationAuteur. structure.identifiantStructure | assignedAuthor.representedOrganization.id | Device.owner.organization.identifier |
| FRLMSysteme.identificationAuteur. structure.nomStructure | assignedAuthor.representedOrganization.name | Device.owner.organization.name |
| FRLMSysteme.identificationAuteur. structure.adresse | assignedAuthor.representedOrganization.addr | Device.owner.organization.address |
| FRLMSysteme.identificationAuteur. structure.coordonneesTelecom | assignedAuthor.representedOrganization.telecom |  |
| **FRLMValidateur** | **authenticator** | Composition.attester |
| FRLMValidateur.dateHeureAttestationValidite | authenticator.time | Composition.attester.time |
| FRLMValidateur.validateur | authenticator.assignedEntity | Composition.attester.party.PractitionerRole |

