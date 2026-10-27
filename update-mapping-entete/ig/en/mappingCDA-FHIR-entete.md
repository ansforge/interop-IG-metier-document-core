# Mapping Métier/CDA/FHIR - FR Document Core (Modèle métier) v0.1.0

## Mapping Métier/CDA/FHIR

 
There is no translation page available for the current page, so it has been rendered in the default language 

Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Mapping entre les éléments de l'entête : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMAttester** | **authenticator** |  |
| FRLMHeaderDocument.author | **author** |  |
| **FRLMConsent** | **authorization** |  |
| FRLMHeaderDocument.custodian | custodian.assignedCustodian.representedCustodianOrganization |  |
| **FRLMDataEnterer** | **dataEnterer** |  |
| **FRLMHealthProfessional** | **assignedEntity** |  |
| **FRLMInformant** | **informant** |  |
| **FRLMIntendedRecipient** | **informationRecipient** |  |
| **FRLMLegalAuthentication** | **legalAuthenticator** |  |
| **FRLMOrder** | **inFulfillmentOf** |  |
| **FRLMOrganisation** | assignedEntity.representedOrganization |  |
| **FRLMParticipant** | **participant** |  |
| **FRLMPatient** | **recordTarget** |  |
| **FRLMRelatedPerson** | **relatedEntity** |  |
| FRLMAttester.dateTime | authenticator.time |  |
| FRLMHeaderDocument.author:healthProfessional | author.assignedAuthor |  |
| FRLMConsent.identifier | authorization.consent.id |  |
| FRLMDataEnterer.date | dataEnterer.time |  |
| FRLMHealthProfessional.identifier | assignedEntity.id |  |
| FRLMInformant.informant:professional | informant.assignedEntity |  |
| FRLMIntendedRecipient.intendedRecipient:healthProfessional | informationRecipient.intendedRecipient |  |
| FRLMLegalAuthentication.dateTime | legalAuthenticator.time |  |
| FRLMOrder.orderId | inFulfillmentOf.order.id |  |
| FRLMOrganisation.identifier | assignedEntity.representedOrganization.id |  |
| FRLMParticipant.identifier | participant.associatedEntity.id |  |
| FRLMPatient.identifier | recordTarget.patientRole.id |  |
| FRLMRelatedPerson.identifier |  |  |
| FRLMAttester.attester:healthProfessional | authenticator.assignedEntity |  |
| FRLMHeaderDocument.author:organisation | author.assignedAuthor |  |
| FRLMConsent.type | authorization.consent.code |  |
| FRLMDataEnterer.dataEnterer:healthProfessional | dataEnterer.assignedEntity |  |
| FRLMHealthProfessional.name | assignedEntity.assignedPerson.name |  |
| FRLMInformant.informant:organisation | informant.assignedEntity |  |
| FRLMIntendedRecipient.intendedRecipient:organisation | informationRecipient.intendedRecipient |  |
| FRLMLegalAuthentication.legalAuthenticator:healthProfessional | legalAuthenticator.assignedEntity |  |
| FRLMOrder.accessionNumber | inFulfillmentOf.order.ps3-20:accessionNumber |  |
| FRLMOrganisation.type |  |  |
| FRLMParticipant.name | participant.associatedEntity.name |  |
| FRLMPatient.address | recordTarget.patientRole.addr |  |
| FRLMRelatedPerson.name | relatedEntity.relatedPerson.name |  |
| FRLMAttester.attester:device | authenticator.assignedEntity |  |
| FRLMHeaderDocument.author:device | author.assignedAuthor.assignedAuthoringDevice |  |
| FRLMConsent.status | authorization.consent.statusCode="completed" |  |
| FRLMDataEnterer.dataEnterer:patient | dataEnterer.assignedEntity |  |
| FRLMHealthProfessional.name.family | assignedEntity.assignedPerson. name.family |  |
| FRLMInformant.informant:patient | informant.assignedEntity |  |
| FRLMIntendedRecipient.intendedRecipient:patient | informationRecipient.intendedRecipient |  |
| FRLMLegalAuthentication.legalAuthenticator:patient | legalAuthenticator.assignedEntity |  |
| FRLMOrder.orderDateAndTime |  |  |
| FRLMOrganisation.name | assignedEntity.representedOrganization.name |  |
| FRLMParticipant.type | participant@typeCode |  |
| FRLMPatient.telecom | recordTarget.patientRole.telecom |  |
| FRLMRelatedPerson.name.family | relatedEntity.relatedPerson. name.family |  |
| FRLMHealthProfessional.name.given | assignedEntity.assignedPerson. name.given |  |
| FRLMInformant.informant:relatedPerson | informant.relatedEntity |  |
| FRLMIntendedRecipient.intendedRecipient:relatedPerson | informationRecipient.intendedRecipient |  |
| FRLMLegalAuthentication.legalAuthenticator:device | legalAuthenticator.assignedEntity |  |
| FRLMOrder.orderPlacer |  |  |
| FRLMOrganisation.address | assignedEntity.representedOrganization.addr |  |
| FRLMParticipant.role | participant.functionCode |  |
| FRLMPatient.name | recordTarget.patientRole. patient.name |  |
| FRLMRelatedPerson.name.given | relatedEntity.relatedPerson. name.given |  |
| FRLMHealthProfessional.name.prefix | assignedEntity.assignedPerson. name.prefix |  |
| FRLMIntendedRecipient.intendedRecipient:device | informationRecipient.intendedRecipient |  |
| FRLMLegalAuthentication.legalAuthenticator:organisation | legalAuthenticator.assignedEntity |  |
| FRLMOrder.orderReason |  |  |
| FRLMOrganisation.telecom | assignedEntity.representedOrganization.telecom |  |
| FRLMParticipant.period | participant.time |  |
| FRLMPatient.name.family | recordTarget.patientRole. patient.name.family |  |
| FRLMRelatedPerson.name.prefix | relatedEntity.relatedPerson. name.prefix |  |
| FRLMHealthProfessional.name.suffix | assignedEntity.assignedPerson. name.suffix |  |
| FRLMOrganisation.partOf |  |  |
| FRLMParticipant.participant:healthProfessional | participant.associatedEntity |  |
| FRLMPatient.name.given | recordTarget.patientRole. patient.name.given |  |
| FRLMRelatedPerson.name.suffix | relatedEntity.relatedPerson. name.suffix |  |
| FRLMHealthProfessional.address | assignedEntity.addr |  |
| FRLMOrganisation.industrySector | assignedEntity.representedOrganization.standardIndustryClassCode |  |
| FRLMParticipant.participant:organisation | participant.associatedEntity |  |
| FRLMPatient.name.use | recordTarget.patientRole. patient.name.family@qualifier |  |
| FRLMRelatedPerson.subject |  |  |
| FRLMHealthProfessional.telecom | assignedEntity.telecom |  |
| FRLMParticipant.participant:device | participant.associatedEntity |  |
| FRLMPatient.administrativeGender | recordTarget.patientRole. patient.administrativeGenderCode |  |
| FRLMRelatedPerson.relationship | relatedEntity.code |  |
| FRLMHealthProfessional.professionalRole.role | assignedEntity.code |  |
| FRLMPatient.dateOfBirth | recordTarget.patientRole. patient.birthTime |  |
| FRLMRelatedPerson.address | relatedEntity.addr |  |
| FRLMHealthProfessional.professionalRole.organisation | assignedEntity.representedOrganization |  |
| FRLMPatient.deceased:boolean | recordTarget.patientRole. patient.sdtc:deceasedInd |  |
| FRLMRelatedPerson.telecom | relatedEntity.telecom |  |
| FRLMHealthProfessional.professionalRole.specialty |  |  |
| FRLMPatient.deceased:dateTime | recordTarget.patientRole. patient.sdtc:deceasedTime |  |
| FRLMRelatedPerson.gender |  |  |
| FRLMPatient.multipleBirth:boolean | recordTarget.patientRole. patient.sdtc:multipleBirthInd |  |
| FRLMRelatedPerson.birthDate |  |  |
| FRLMPatient.multipleBirth:integer | recordTarget.patientRole. patient.sdtc:multipleBirthOrderNumber |  |
| FRLMRelatedPerson.deceased |  |  |
| FRLMPatient.birthPlace | recordTarget.patientRole. patient.birthPlace |  |
| FRLMRelatedPerson.multipleBirth |  |  |
| FRLMPatient.contact | recordTarget.patientRole. patient.guardian |  |
| FRLMRelatedPerson.photo |  |  |
| FRLMPatient.contact.address | recordTarget.patientRole. patient.guardian.addr |  |
| FRLMRelatedPerson.period |  |  |
| FRLMPatient.contact.telecom | recordTarget.patientRole. patient.guardian.telecom |  |
| FRLMRelatedPerson.communication |  |  |
| FRLMPatient.contact.name | recordTarget.patientRole. patient.guardian.guardianPerson.name |  |
| FRLMPatient.contact. name.family | recordTarget.patientRole. patient.guardian.guardianPerson.family |  |
| FRLMPatient.contact. name.given | recordTarget.patientRole. patient.guardian.guardianPerson.given |  |
| FRLMPatient.contact.organization | recordTarget.patientRole. patient.guardian.guardianOrganization |  |
| **FRLMAttester** | Composition.attester |  |
| FRLMHeaderDocument.author | Composition.author |  |
| **FRLMConsent** | **Consent** |  |
| FRLMHeaderDocument.custodian | Composition.custodian |  |
| **FRLMDataEnterer** | **Extension** |  |
| **FRLMHealthProfessional** | **PractitionerRole** |  |
| **FRLMInformant** | **Extension** |  |
| **FRLMIntendedRecipient** | **Extension** |  |
| **FRLMLegalAuthentication** | Composition.attester |  |
| **FRLMOrder** | **ServiceRequest** |  |
| **FRLMOrganisation** | **Organization** |  |
| **FRLMParticipant** | **Extension** |  |
| **FRLMPatient** | **Patient** |  |
| **FRLMRelatedPerson** | **RelatedPerson** |  |
| FRLMAttester.dateTime | Composition.attester.time |  |
| FRLMHeaderDocument.author:healthProfessional | Composition.author.PractitionerRole |  |
| FRLMConsent.identifier | Consent.identifier |  |
| FRLMDataEnterer.date | Extension.extension:time.value[x] |  |
| FRLMHealthProfessional.professionalRole.role | PractitionerRole.code |  |
| FRLMInformant.informant:professional | Extension.extension:party.value[x] |  |
| FRLMIntendedRecipient.intendedRecipient:healthProfessional | Extension.extension:party.value[x] |  |
| FRLMLegalAuthentication.dateTime | Composition.attester.time |  |
| FRLMOrder.orderId | ServiceRequest.identifier |  |
| FRLMOrganisation.identifier | Organization.identifier |  |
| FRLMParticipant.identifier | Extension.extension:party.value[x] |  |
| FRLMPatient.identifier | Patient.identifier |  |
| FRLMRelatedPerson.identifier | RelatedPerson.identifier |  |
| FRLMAttester.attester:healthProfessional | Composition.attester. party.PractitionerRole |  |
| FRLMHeaderDocument.author:organisation | Composition.author.Organization |  |
| FRLMConsent.type | Consent.category |  |
| FRLMDataEnterer.dataEnterer:healthProfessional | Extension.extension:party.value[x] |  |
| FRLMHealthProfessional.professionalRole.organisation | PractitionerRole.organization |  |
| FRLMInformant.informant:organisation | Extension.extension:party.value[x] |  |
| FRLMIntendedRecipient.intendedRecipient:organisation | Extension.extension:party.value[x] |  |
| FRLMLegalAuthentication.legalAuthenticator:healthProfessional | Composition.attester. party.PractitionerRole |  |
| FRLMOrder.accessionNumber | ServiceRequest.identifier |  |
| FRLMOrganisation.type | Organization.type |  |
| FRLMParticipant.name | Extension.extension:party.value[x] |  |
| FRLMPatient.address | Patient.address |  |
| FRLMRelatedPerson.name | RelatedPerson.name |  |
| FRLMAttester.attester:device | Composition.attester. party.Device |  |
| FRLMHeaderDocument.author:device | Composition.author.Device |  |
| FRLMConsent.status | Consent.status |  |
| FRLMDataEnterer.dataEnterer:patient | Extension.extension:party.value[x] |  |
| FRLMHealthProfessional.professionalRole.specialty | PractitionerRole.specialty |  |
| FRLMInformant.informant:patient | Extension.extension:party.value[x] |  |
| FRLMIntendedRecipient.intendedRecipient:patient | Extension.extension:party.value[x] |  |
| FRLMLegalAuthentication.legalAuthenticator:patient | Composition.attester. party.Patient |  |
| FRLMOrder.orderDateAndTime | ServiceRequest.authoredOn |  |
| FRLMOrganisation.name | Organization.name |  |
| FRLMParticipant.type | Extension.extension:type.value[x] |  |
| FRLMPatient.telecom | Patient.telecom |  |
| FRLMRelatedPerson.name.family | RelatedPerson.name.family |  |
| FRLMInformant.informant:relatedPerson | Extension.extension:party.value[x] |  |
| FRLMIntendedRecipient.intendedRecipient:relatedPerson | Extension.extension:party.value[x] |  |
| FRLMLegalAuthentication.legalAuthenticator:device | Composition.attester. party.Device |  |
| FRLMOrder.orderPlacer | ServiceRequest.requester |  |
| FRLMOrganisation.address | Organization.address |  |
| FRLMParticipant.role | Extension.extension:function.value[x] |  |
| FRLMPatient.name | Patient.name:officialName |  |
| FRLMRelatedPerson.name.given | RelatedPerson.name.given |  |
| FRLMIntendedRecipient.intendedRecipient:device | Extension.extension:party.value[x] |  |
| FRLMLegalAuthentication.legalAuthenticator:organisation | Composition.attester. party.Organization |  |
| FRLMOrder.orderReason | ServiceRequest.reasonCode |  |
| FRLMOrganisation.telecom | Organization.telecom |  |
| FRLMParticipant.period | Extension.extension:time.value[x] |  |
| FRLMPatient.name | Patient.name:usualName |  |
| FRLMRelatedPerson.name.prefix | RelatedPerson.name.prefix |  |
| FRLMOrganisation.partOf | Organization.partOf |  |
| FRLMParticipant.participant:healthProfessional | Extension.extension:party.value[x] |  |
| FRLMPatient.name.family | Patient.name:officialName.family |  |
| FRLMRelatedPerson.name.suffix | RelatedPerson.name.suffix |  |
| FRLMOrganisation.industrySector | Organization.type |  |
| FRLMParticipant.participant:organisation | Extension.extension:party.value[x] |  |
| FRLMPatient.name.family | Patient.name:usualName.family |  |
| FRLMRelatedPerson.subject | RelatedPerson.patient |  |
| FRLMParticipant.participant:device | Extension.extension:party.value[x] |  |
| FRLMPatient.name.given | Patient.name:officialName.given |  |
| FRLMRelatedPerson.relationship | RelatedPerson.relationship |  |
| FRLMPatient.name.given | Patient.name:usualName.given |  |
| FRLMRelatedPerson.address | RelatedPerson.address |  |
| FRLMPatient.name.use | Patient.name:officialName.use |  |
| FRLMRelatedPerson.telecom | RelatedPerson.telecom |  |
| FRLMPatient.name.use | Patient.name:usualName.use |  |
| FRLMRelatedPerson.gender | RelatedPerson.gender |  |
| FRLMPatient.administrativeGender | Patient.gender |  |
| FRLMRelatedPerson.birthDate | RelatedPerson.birthDate |  |
| FRLMPatient.dateOfBirth | Patient.birthDate |  |
| FRLMRelatedPerson.deceased |  |  |
| FRLMPatient.deceased:boolean | Patient.deceased[x] |  |
| FRLMRelatedPerson.multipleBirth |  |  |
| FRLMPatient.deceased:dateTime | Patient.deceased[x] |  |
| FRLMRelatedPerson.photo | RelatedPerson.photo |  |
| FRLMPatient.multipleBirth:boolean | Patient.multipleBirth[x] |  |
| FRLMRelatedPerson.period | RelatedPerson.period |  |
| FRLMPatient.multipleBirth:integer | Patient.multipleBirth[x] |  |
| FRLMRelatedPerson.communication | RelatedPerson.communication |  |
| FRLMPatient.birthPlace | Patient.extension:birthPlace |  |
| FRLMRelatedPerson.communication.language | RelatedPerson.communication.language |  |
| FRLMPatient.contact | Patient.contact |  |
| FRLMRelatedPerson.communication.preferred | RelatedPerson.communication.preferred |  |
| FRLMPatient.contact.address | Patient.contact.address |  |
| FRLMPatient.contact.telecom | Patient.contact.telecom |  |
| FRLMPatient.contact.name | Patient.contact.name |  |
| FRLMPatient.contact. name.family | Patient.contact.name |  |
| FRLMPatient.contact. name.given | Patient.contact.name |  |
| FRLMPatient.contact.organization | Patient.contact.organization |  |
| **FRLMHealthProfessional** | **Practitioner** |  |
| FRLMHealthProfessional.identifier | Practitioner.identifier |  |
| FRLMHealthProfessional.name | Practitioner.name |  |
| FRLMHealthProfessional.name.family | Practitioner.name.family |  |
| FRLMHealthProfessional.name.given | Practitioner.name.given |  |
| FRLMHealthProfessional.name.prefix | Practitioner.name.prefix |  |
| FRLMHealthProfessional.name.suffix | Practitioner.name.suffix |  |
| FRLMHealthProfessional.address | Practitioner.address |  |
| FRLMHealthProfessional.telecom | Practitioner.telecom |  |
| **FRLMHeaderDocument** | **ClinicalDocument** |  |
| FRLMHeaderDocument.identifier | ClinicalDocument.id |  |
| FRLMHeaderDocument.identifier | ClinicalDocument.setId |  |
| FRLMHeaderDocument.documentType | ClinicalDocument.code |  |
| FRLMHeaderDocument.documentTitle | ClinicalDocument.title |  |
| FRLMHeaderDocument.date | ClinicalDocument.effectiveTime |  |
| FRLMHeaderDocument.confidentiality | ClinicalDocument.confidentialityCode |  |
| FRLMHeaderDocument.language | ClinicalDocument.languageCode |  |
| FRLMHeaderDocument.version | ClinicalDocument.versionNumber |  |
| FRLMHeaderDocument.status | ClinicalDocument.documentationOf. serviceEvent.lab:statusCode |  |
| FRLMHeaderDocument.eventType | ClinicalDocument.documentationOf |  |
| FRLMHeaderDocument.subject | ClinicalDocument.recordTarget |  |
| FRLMHeaderDocument.author | ClinicalDocument.author |  |
| FRLMHeaderDocument.dataEnterer | ClinicalDocument.dataEnterer |  |
| FRLMHeaderDocument.informant | ClinicalDocument.informant |  |
| FRLMHeaderDocument.custodian | ClinicalDocument.custodian |  |
| FRLMHeaderDocument.intendedRecipient | ClinicalDocument.informationRecipient |  |
| FRLMHeaderDocument.legalAuthentication | ClinicalDocument.legalAuthenticator |  |
| FRLMHeaderDocument.attester | ClinicalDocument.authenticator |  |
| FRLMHeaderDocument.participant | ClinicalDocument.participant |  |
| FRLMHeaderDocument.order | ClinicalDocument.inFulfillmentOf |  |
| FRLMHeaderDocument.consent | ClinicalDocument.authorization |  |
| FRLMHeaderDocument.encounter | ClinicalDocument.componentOf |  |
| FRLMHeaderDocument.identifier | Bundle.identifier |  |
| FRLMHeaderDocument.documentType | Composition.type |  |
| FRLMHeaderDocument.documentTitle | Composition.title |  |
| FRLMHeaderDocument.date | Composition.date |  |
| FRLMHeaderDocument.confidentiality | Composition.confidentiality |  |
| FRLMHeaderDocument.language | Composition.language |  |
| FRLMHeaderDocument.identifier | Composition.identifier |  |
| FRLMHeaderDocument.version | Composition.extension:R5-Composition-version |  |
| FRLMHeaderDocument.status | Composition.status |  |
| FRLMHeaderDocument.subject | Composition.subject |  |
| FRLMHeaderDocument.author | Composition.author |  |
| FRLMHeaderDocument.dataEnterer | Composition.extension:data-enterer |  |
| FRLMHeaderDocument.informant | Composition.extension:informant |  |
| FRLMHeaderDocument.custodian | Composition.custodian |  |
| FRLMHeaderDocument.intendedRecipient | Composition.extension:information-recipient |  |
| FRLMHeaderDocument.legalAuthentication | Composition.attester:legal_attester |  |
| FRLMHeaderDocument.attester | Composition.attester:professional_attester |  |
| FRLMHeaderDocument.participant | Composition.extension:participant |  |
| FRLMHeaderDocument.order | Composition.extension:basedOn |  |
| FRLMHeaderDocument.eventType | Composition.event |  |
| FRLMHeaderDocument.consent | Composition.extension:consent |  |
| FRLMHeaderDocument.encounter | Composition.encounter |  |

