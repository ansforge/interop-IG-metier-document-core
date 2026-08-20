# Mapping Métier/CDA/FHIR - FR Document Core (Modèle métier) v0.1.0

## Mapping Métier/CDA/FHIR

 
There is no translation page available for the current page, so it has been rendered in the default language 

Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Mapping entre les éléments de l'entête : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMHeaderDocument** | **ClinicalDocument** |  |
| FRLMHeaderDocument.identifier:document | ClinicalDocument.id | Bundle.identifier |
| FRLMHeaderDocument.identifier:versionSet | ClinicalDocument.setId | Composition.identifier |
| FRLMHeaderDocument.documentType | ClinicalDocument.code | Composition.type |
| FRLMHeaderDocument.documentTitle | ClinicalDocument.title | Composition.title |
| FRLMHeaderDocument.date | ClinicalDocument.effectiveTime | Composition.date |
| FRLMHeaderDocument.confidentiality | ClinicalDocument.confidentialityCode | Composition.confidentiality |
| FRLMHeaderDocument.language | ClinicalDocument.languageCode | Composition.language |
| FRLMHeaderDocument.version | ClinicalDocument.versionNumber | Composition.extension:R5-Composition-version |
| FRLMHeaderDocument.status | ClinicalDocument.documentationOf. serviceEvent.lab:statusCode | Composition.status |
| FRLMHeaderDocument.eventType | ClinicalDocument.documentationOf | Composition.event |
| FRLMHeaderDocument.subject | ClinicalDocument.recordTarget | Composition.subject |
| FRLMHeaderDocument.author | ClinicalDocument.author | Composition.author |
| FRLMHeaderDocument.dataEnterer | ClinicalDocument.dataEnterer | Composition.extension:data-enterer |
| FRLMHeaderDocument.informant | ClinicalDocument.informant | Composition.extension:informant |
| FRLMHeaderDocument.custodian | ClinicalDocument.custodian | Composition.custodian |
| FRLMHeaderDocument.intendedRecipient | ClinicalDocument.informationRecipient | Composition.extension:information-recipient |
| FRLMHeaderDocument.legalAuthentication | ClinicalDocument.legalAuthenticator | Composition.attester:legal_attester |
| FRLMHeaderDocument.attester | ClinicalDocument.authenticator | Composition.attester:professional_attester |
| FRLMHeaderDocument.participant | ClinicalDocument.participant | Composition.extension:participant |
| FRLMHeaderDocument.order | ClinicalDocument.inFulfillmentOf | Composition.extension:basedOn |
| FRLMHeaderDocument.consent | ClinicalDocument.authorization | Composition.extension:consent |
| FRLMHeaderDocument.encounter | ClinicalDocument.componentOf | Composition.encounter |
| **FRLMAttester** | **authenticator** | Composition.attester |
| FRLMAttester.dateTime | Authenticator.time | Composition.attester.time |
| FRLMAttester.attester:healthProfessional | Authenticator.assignedEntity | Composition.attester.party.PractitionerRole |
| FRLMAttester.attester:device | Authenticator.assignedEntity | Composition.attester.party.Device |
| FRLMHeaderDocument.author | **author** | Composition.author |
| FRLMHeaderDocument.author:healthProfessional | Author.assignedAuthor | Composition.author.PractitionerRole |
| FRLMHeaderDocument.author:organisation | Author.assignedAuthor | Composition.author.Organization |
| FRLMHeaderDocument.author:device | Author.assignedAuthor.assignedAuthoringDevice | Composition.author.Device |
| **FRLMConsent** | **authorization** | **Consent** |
| FRLMConsent.identifier | Authorization.consent.id | Consent.identifier |
| FRLMConsent.type | Authorization.consent.code | Consent.category |
| FRLMConsent.status | Authorization.consent.statusCode="completed" | Consent.status |
| FRLMHeaderDocument.custodian | custodian.assignedCustodian.representedCustodianOrganization | Composition.custodian |
| **FRLMDataEnterer** | **dataEnterer** | **Extension** |
| FRLMDataEnterer.date | DataEnterer.time | Extension.extension:time.value[x] |
| FRLMDataEnterer.dataEnterer:healthProfessional | DataEnterer.assignedEntity | Extension.extension:party.value[x] |
| FRLMDataEnterer.dataEnterer:patient | DataEnterer.assignedEntity | Extension.extension:party.value[x] |
| **FRLMHealthProfessional** | **assignedEntity** | **PractitionerRole** |
| **FRLMHealthProfessional** | **assignedEntity** | **Practitioner** |
| FRLMHealthProfessional.identifier | AssignedEntity.id | Practitioner.identifier |
| FRLMHealthProfessional.name | AssignedEntity.assignedPerson.name | Practitioner.name |
| FRLMHealthProfessional.name.family | AssignedEntity.assignedPerson. name.family | Practitioner.name.family |
| FRLMHealthProfessional.name.given | AssignedEntity.assignedPerson. name.given | Practitioner.name.given |
| FRLMHealthProfessional.name.prefix | AssignedEntity.assignedPerson. name.prefix | Practitioner.name.prefix |
| FRLMHealthProfessional.name.suffix | AssignedEntity.assignedPerson. name.suffix | Practitioner.name.suffix |
| FRLMHealthProfessional.address | AssignedEntity.addr | Practitioner.address |
| FRLMHealthProfessional.telecom | AssignedEntity.telecom | Practitioner.telecom |
| FRLMHealthProfessional.professionalRole.role | AssignedEntity.code | PractitionerRole.code |
| FRLMHealthProfessional.professionalRole.organisation | AssignedEntity.representedOrganization | PractitionerRole.organization |
| FRLMHealthProfessional.professionalRole.specialty |  | PractitionerRole.specialty |
| **FRLMInformant** | **informant** | **Extension** |
| FRLMInformant.informant:professional | Informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant:organisation | Informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant:patient | Informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant:relatedPerson | Informant.relatedEntity | Extension.extension:party.value[x] |
| **FRLMIntendedRecipient** | **informationRecipient** | **Extension** |
| FRLMIntendedRecipient.intendedRecipient:healthProfessional | InformationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:organisation | InformationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:patient | InformationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:relatedPerson | InformationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:device | InformationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| **FRLMLegalAuthentication** | **legalAuthenticator** | Composition.attester |
| FRLMLegalAuthentication.dateTime | LegalAuthenticator.time | Composition.attester.time |
| FRLMLegalAuthentication.legalAuthenticator:healthProfessional | LegalAuthenticator.assignedEntity | Composition.attester.party.PractitionerRole |
| FRLMLegalAuthentication.legalAuthenticator:patient | LegalAuthenticator.assignedEntity | Composition.attester.party.Patient |
| FRLMLegalAuthentication.legalAuthenticator:device | LegalAuthenticator.assignedEntity | Composition.attester.party.Device |
| FRLMLegalAuthentication.legalAuthenticator:organisation | LegalAuthenticator.assignedEntity | Composition.attester.party.Organization |
| **FRLMOrder** | **inFulfillmentOf** | **ServiceRequest** |
| FRLMOrder.orderId | InFulfillmentOf.order.id | ServiceRequest.identifier |
| FRLMOrder.accessionNumber | InFulfillmentOf.order.ps3-20:accessionNumber | ServiceRequest.identifier |
| FRLMOrder.orderDateAndTime |  | ServiceRequest.authoredOn |
| FRLMOrder.orderPlacer |  | ServiceRequest.requester |
| FRLMOrder.orderReason |  | ServiceRequest.reasonCode |
| **FRLMOrganisation** | assignedEntity.representedOrganization | **Organization** |
| FRLMOrganisation.identifier | AssignedEntity.representedOrganization.id | Organization.identifier |
| FRLMOrganisation.type |  | Organization.type |
| FRLMOrganisation.name | AssignedEntity.representedOrganization.name | Organization.name |
| FRLMOrganisation.address | AssignedEntity.representedOrganization.addr | Organization.address |
| FRLMOrganisation.telecom | AssignedEntity.representedOrganization.telecom | Organization.telecom |
| FRLMOrganisation.partOf |  | Organization.partOf |
| FRLMOrganisation.industrySector | AssignedEntity.representedOrganization.standardIndustryClassCode | Organization.type |
| **FRLMParticipant** | **participant** | **Extension** |
| FRLMParticipant.identifier | Participant1.associatedEntity.id | Extension.extension:party.value[x] |
| FRLMParticipant.name | Participant1.associatedEntity.name | Extension.extension:party.value[x] |
| FRLMParticipant.type | participant@typeCode | Extension.extension:type.value[x] |
| FRLMParticipant.role | Participant1.functionCode | Extension.extension:function.value[x] |
| FRLMParticipant.period | Participant1.time | Extension.extension:time.value[x] |
| FRLMParticipant.participant:healthProfessional | Participant1.associatedEntity | Extension.extension:party.value[x] |
| FRLMParticipant.participant:organisation | Participant1.associatedEntity | Extension.extension:party.value[x] |
| FRLMParticipant.participant:device | Participant1.associatedEntity | Extension.extension:party.value[x] |
| **FRLMPatient** | **recordTarget** | **Patient** |
| FRLMPatient.identifier | RecordTarget.patientRole.id | Patient.identifier |
| FRLMPatient.address | RecordTarget.patientRole.addr | Patient.address |
| FRLMPatient.telecom | RecordTarget.patientRole.telecom | Patient.telecom |
| FRLMPatient.name:officialName | RecordTarget.patientRole. patient.name | Patient.name:officialName |
| FRLMPatient.name:usualName | RecordTarget.patientRole. patient.name | Patient.name:usualName |
| FRLMPatient.name:officialName.family | RecordTarget.patientRole. patient.name.family@qualifier='BR' | Patient.name:officialName.family |
| FRLMPatient.name:usualName.family | RecordTarget.patientRole. patient.name.family@qualifier='CL' | Patient.name:usualName.family |
| FRLMPatient.name:officialName.given | RecordTarget.patientRole. patient.name.given@qualifier='BR' | Patient.name:officialName.given |
| FRLMPatient.name:usualName.given | RecordTarget.patientRole. patient.name.given@qualifier='CL' | Patient.name:usualName.given |
| FRLMPatient.name:officialName.use | RecordTarget.patientRole. patient.name.family@qualifier='BR' | Patient.name:officialName.use |
| FRLMPatient.name:usualName.use | RecordTarget.patientRole. patient.name.family@qualifier='CL' | Patient.name:usualName.use |
| FRLMPatient.administrativeGender | RecordTarget.patientRole. patient.administrativeGenderCode | Patient.gender |
| FRLMPatient.dateOfBirth | RecordTarget.patientRole. patient.birthTime | Patient.birthDate |
| FRLMPatient.deceased:boolean | RecordTarget.patientRole. patient.sdtc:deceasedInd | Patient.deceased[x] |
| FRLMPatient.deceased:dateTime | RecordTarget.patientRole. patient.sdtc:deceasedTime | Patient.deceased[x] |
| FRLMPatient.multipleBirth:boolean | RecordTarget.patientRole. patient.sdtc:multipleBirthInd | Patient.multipleBirth[x] |
| FRLMPatient.multipleBirth:integer | RecordTarget.patientRole. patient.sdtc:multipleBirthOrderNumber | Patient.multipleBirth[x] |
| FRLMPatient.birthPlace | RecordTarget.patientRole. patient.birthPlace | Patient.extension:birthPlace |
| FRLMPatient.contact | RecordTarget.patientRole. patient.guardian | Patient.contact |
| FRLMPatient.contact.address | RecordTarget.patientRole. patient.guardian.addr | Patient.contact.address |
| FRLMPatient.contact.telecom | RecordTarget.patientRole. patient.guardian.telecom | Patient.contact.telecom |
| FRLMPatient.contact.name | RecordTarget.patientRole. patient.guardian.guardianPerson.name | Patient.contact.name |
| FRLMPatient.contact. name.family | RecordTarget.patientRole. patient.guardian.guardianPerson.family | Patient.contact.name |
| FRLMPatient.contact. name.given | RecordTarget.patientRole. patient.guardian.guardianPerson.given | Patient.contact.name |
| FRLMPatient.contact.organization | RecordTarget.patientRole. patient.guardian.guardianOrganization | Patient.contact.organization |
| **FRLMRelatedPerson** | **relatedEntity** | **RelatedPerson** |
| FRLMRelatedPerson.identifier |  | RelatedPerson.identifier |
| FRLMRelatedPerson.name | RelatedEntity.relatedPerson.name | RelatedPerson.name |
| FRLMRelatedPerson.name.family | RelatedEntity.relatedPerson. name.family | RelatedPerson.name.family |
| FRLMRelatedPerson.name.given | RelatedEntity.relatedPerson. name.given | RelatedPerson.name.given |
| FRLMRelatedPerson.name.prefix | RelatedEntity.relatedPerson. name.prefix | RelatedPerson.name.prefix |
| FRLMRelatedPerson.name.suffix | RelatedEntity.relatedPerson. name.suffix | RelatedPerson.name.suffix |
| FRLMRelatedPerson.subject |  | RelatedPerson.patient |
| FRLMRelatedPerson.relationship | RelatedEntity.code | RelatedPerson.relationship |
| FRLMRelatedPerson.address | RelatedEntity.addr | RelatedPerson.address |
| FRLMRelatedPerson.telecom | RelatedEntity.telecom | RelatedPerson.telecom |
| FRLMRelatedPerson.gender |  | RelatedPerson.gender |
| FRLMRelatedPerson.birthDate |  | RelatedPerson.birthDate |
| FRLMRelatedPerson.deceased |  |  |
| FRLMRelatedPerson.multipleBirth |  |  |
| FRLMRelatedPerson.photo |  | RelatedPerson.photo |
| FRLMRelatedPerson.period |  | RelatedPerson.period |
| FRLMRelatedPerson.communication |  | RelatedPerson.communication |

