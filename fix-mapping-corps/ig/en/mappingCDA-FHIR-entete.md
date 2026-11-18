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
| FRLMAttester.dateTime | authenticator.time | Composition.attester.time |
| FRLMAttester.attester:healthProfessional | authenticator.assignedEntity | Composition.attester.party.PractitionerRole |
| FRLMAttester.attester:device | authenticator.assignedEntity | Composition.attester.party.Device |
| FRLMHeaderDocument.author | **author** | Composition.author |
| FRLMHeaderDocument.author:healthProfessional | author.assignedAuthor | Composition.author.PractitionerRole |
| FRLMHeaderDocument.author:organisation | author.assignedAuthor | Composition.author.Organization |
| FRLMHeaderDocument.author:device | author.assignedAuthor.assignedAuthoringDevice | Composition.author.Device |
| **FRLMConsent** | **authorization** | **Consent** |
| FRLMConsent.identifier | authorization.consent.id | Consent.identifier |
| FRLMConsent.type | authorization.consent.code | Consent.category |
| FRLMConsent.status | authorization.consent.statusCode="completed" | Consent.status |
| FRLMHeaderDocument.custodian | custodian.assignedCustodian.representedCustodianOrganization | Composition.custodian |
| **FRLMDataEnterer** | **dataEnterer** | **Extension** |
| FRLMDataEnterer.date | dataEnterer.time | Extension.extension:time.value[x] |
| FRLMDataEnterer.dataEnterer:healthProfessional | dataEnterer.assignedEntity | Extension.extension:party.value[x] |
| FRLMDataEnterer.dataEnterer:patient | dataEnterer.assignedEntity | Extension.extension:party.value[x] |
| **FRLMHealthProfessional** | **assignedEntity** | **PractitionerRole** |
| **FRLMHealthProfessional** | **assignedEntity** | **Practitioner** |
| FRLMHealthProfessional.identifier | assignedEntity.id | Practitioner.identifier |
| FRLMHealthProfessional.name | assignedEntity.assignedPerson.name | Practitioner.name |
| FRLMHealthProfessional.name.family | assignedEntity.assignedPerson. name.family | Practitioner.name.family |
| FRLMHealthProfessional.name.given | assignedEntity.assignedPerson. name.given | Practitioner.name.given |
| FRLMHealthProfessional.name.prefix | assignedEntity.assignedPerson. name.prefix | Practitioner.name.prefix |
| FRLMHealthProfessional.name.suffix | assignedEntity.assignedPerson. name.suffix | Practitioner.name.suffix |
| FRLMHealthProfessional.address | assignedEntity.addr | Practitioner.address |
| FRLMHealthProfessional.telecom | assignedEntity.telecom | Practitioner.telecom |
| FRLMHealthProfessional.professionalRole.role | assignedEntity.code | PractitionerRole.code |
| FRLMHealthProfessional.professionalRole.organisation | assignedEntity.representedOrganization | PractitionerRole.organization |
| FRLMHealthProfessional.professionalRole.specialty |  | PractitionerRole.specialty |
| **FRLMInformant** | **informant** | **Extension** |
| FRLMInformant.informant:professional | informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant:organisation | informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant:patient | informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant:relatedPerson | informant.relatedEntity | Extension.extension:party.value[x] |
| **FRLMIntendedRecipient** | **informationRecipient** | **Extension** |
| FRLMIntendedRecipient.intendedRecipient:healthProfessional | informationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:organisation | informationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:patient | informationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:relatedPerson | informationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:device | informationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| **FRLMLegalAuthentication** | **legalAuthenticator** | Composition.attester |
| FRLMLegalAuthentication.dateTime | legalAuthenticator.time | Composition.attester.time |
| FRLMLegalAuthentication.legalAuthenticator:healthProfessional | legalAuthenticator.assignedEntity | Composition.attester.party.PractitionerRole |
| FRLMLegalAuthentication.legalAuthenticator:patient | legalAuthenticator.assignedEntity | Composition.attester.party.Patient |
| FRLMLegalAuthentication.legalAuthenticator:device | legalAuthenticator.assignedEntity | Composition.attester.party.Device |
| FRLMLegalAuthentication.legalAuthenticator:organisation | legalAuthenticator.assignedEntity | Composition.attester.party.Organization |
| **FRLMOrder** | **inFulfillmentOf** | **ServiceRequest** |
| FRLMOrder.orderId | inFulfillmentOf.order.id | ServiceRequest.identifier |
| FRLMOrder.accessionNumber | inFulfillmentOf.order.ps3-20:accessionNumber | ServiceRequest.identifier |
| FRLMOrder.orderDateAndTime |  | ServiceRequest.authoredOn |
| FRLMOrder.orderPlacer |  | ServiceRequest.requester |
| FRLMOrder.orderReason |  | ServiceRequest.reasonCode |
| **FRLMOrganisation** | assignedEntity.representedOrganization | **Organization** |
| FRLMOrganisation.identifier | assignedEntity.representedOrganization.id | Organization.identifier |
| FRLMOrganisation.type |  | Organization.type |
| FRLMOrganisation.name | assignedEntity.representedOrganization.name | Organization.name |
| FRLMOrganisation.address | assignedEntity.representedOrganization.addr | Organization.address |
| FRLMOrganisation.telecom | assignedEntity.representedOrganization.telecom | Organization.telecom |
| FRLMOrganisation.partOf |  | Organization.partOf |
| FRLMOrganisation.industrySector | assignedEntity.representedOrganization.standardIndustryClassCode | Organization.type |
| **FRLMParticipant** | **participant** | **Extension** |
| FRLMParticipant.identifier | participant.associatedEntity.id | Extension.extension:party.value[x] |
| FRLMParticipant.name | participant.associatedEntity.name | Extension.extension:party.value[x] |
| FRLMParticipant.type | participant@typeCode | Extension.extension:type.value[x] |
| FRLMParticipant.role | participant.functionCode | Extension.extension:function.value[x] |
| FRLMParticipant.period | participant.time | Extension.extension:time.value[x] |
| FRLMParticipant.participant:healthProfessional | participant.associatedEntity | Extension.extension:party.value[x] |
| FRLMParticipant.participant:organisation | participant.associatedEntity | Extension.extension:party.value[x] |
| FRLMParticipant.participant:device | participant.associatedEntity | Extension.extension:party.value[x] |
| **FRLMPatient** | **recordTarget** | **Patient** |
| FRLMPatient.identifier | recordTarget.patientRole.id | Patient.identifier |
| FRLMPatient.address | recordTarget.patientRole.addr | Patient.address |
| FRLMPatient.telecom | recordTarget.patientRole.telecom | Patient.telecom |
| FRLMPatient.name:officialName | recordTarget.patientRole. patient.name | Patient.name:officialName |
| FRLMPatient.name:usualName | recordTarget.patientRole. patient.name | Patient.name:usualName |
| FRLMPatient.name:officialName.family | recordTarget.patientRole. patient.name.family@qualifier='BR' | Patient.name:officialName.family |
| FRLMPatient.name:usualName.family | recordTarget.patientRole. patient.name.family@qualifier='CL' | Patient.name:usualName.family |
| FRLMPatient.name:officialName.given | recordTarget.patientRole. patient.name.given@qualifier='BR' | Patient.name:officialName.given |
| FRLMPatient.name:usualName.given | recordTarget.patientRole. patient.name.given@qualifier='CL' | Patient.name:usualName.given |
| FRLMPatient.name:officialName.use | recordTarget.patientRole. patient.name.family@qualifier='BR' | Patient.name:officialName.use |
| FRLMPatient.name:usualName.use | recordTarget.patientRole. patient.name.family@qualifier='CL' | Patient.name:usualName.use |
| FRLMPatient.administrativeGender | recordTarget.patientRole. patient.administrativeGenderCode | Patient.gender |
| FRLMPatient.dateOfBirth | recordTarget.patientRole. patient.birthTime | Patient.birthDate |
| FRLMPatient.deceased:boolean | recordTarget.patientRole. patient.sdtc:deceasedInd | Patient.deceased[x] |
| FRLMPatient.deceased:dateTime | recordTarget.patientRole. patient.sdtc:deceasedTime | Patient.deceased[x] |
| FRLMPatient.multipleBirth:boolean | recordTarget.patientRole. patient.sdtc:multipleBirthInd | Patient.multipleBirth[x] |
| FRLMPatient.multipleBirth:integer | recordTarget.patientRole. patient.sdtc:multipleBirthOrderNumber | Patient.multipleBirth[x] |
| FRLMPatient.birthPlace | recordTarget.patientRole. patient.birthPlace | Patient.extension:birthPlace |
| FRLMPatient.contact | recordTarget.patientRole. patient.guardian | Patient.contact |
| FRLMPatient.contact.address | recordTarget.patientRole. patient.guardian.addr | Patient.contact.address |
| FRLMPatient.contact.telecom | recordTarget.patientRole. patient.guardian.telecom | Patient.contact.telecom |
| FRLMPatient.contact.name | recordTarget.patientRole. patient.guardian.guardianPerson.name | Patient.contact.name |
| FRLMPatient.contact. name.family | recordTarget.patientRole. patient.guardian.guardianPerson.family | Patient.contact.name |
| FRLMPatient.contact. name.given | recordTarget.patientRole. patient.guardian.guardianPerson.given | Patient.contact.name |
| FRLMPatient.contact.organization | recordTarget.patientRole. patient.guardian.guardianOrganization | Patient.contact.organization |
| **FRLMRelatedPerson** | **relatedEntity** | **RelatedPerson** |
| FRLMRelatedPerson.identifier |  | RelatedPerson.identifier |
| FRLMRelatedPerson.name | relatedEntity.relatedPerson.name | RelatedPerson.name |
| FRLMRelatedPerson.name.family | relatedEntity.relatedPerson. name.family | RelatedPerson.name.family |
| FRLMRelatedPerson.name.given | relatedEntity.relatedPerson. name.given | RelatedPerson.name.given |
| FRLMRelatedPerson.name.prefix | relatedEntity.relatedPerson. name.prefix | RelatedPerson.name.prefix |
| FRLMRelatedPerson.name.suffix | relatedEntity.relatedPerson. name.suffix | RelatedPerson.name.suffix |
| FRLMRelatedPerson.subject |  | RelatedPerson.patient |
| FRLMRelatedPerson.relationship | relatedEntity.code | RelatedPerson.relationship |
| FRLMRelatedPerson.address | relatedEntity.addr | RelatedPerson.address |
| FRLMRelatedPerson.telecom | relatedEntity.telecom | RelatedPerson.telecom |
| FRLMRelatedPerson.gender |  | RelatedPerson.gender |
| FRLMRelatedPerson.birthDate |  | RelatedPerson.birthDate |
| FRLMRelatedPerson.deceased |  |  |
| FRLMRelatedPerson.multipleBirth |  |  |
| FRLMRelatedPerson.photo |  | RelatedPerson.photo |
| FRLMRelatedPerson.period |  | RelatedPerson.period |
| FRLMRelatedPerson.communication |  | RelatedPerson.communication |

