# Mapping Métier/CDA/FHIR - FR Document Core (Modèle métier) v0.1.0

## Mapping Métier/CDA/FHIR

 
There is no translation page available for the current page, so it has been rendered in the default language 

Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Mapping entre les éléments de l'entête : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMAttester** | **authenticator** | Composition.attester |
| FRLMHeaderDocument.author | **author** | Composition.author |
| **FRLMConsent** | **authorization** | **Consent** |
| FRLMHeaderDocument.custodian | custodian.assignedCustodian.representedCustodianOrganization | Composition.custodian |
| **FRLMDataEnterer** | **dataEnterer** | **Extension** |
| **FRLMHealthProfessional** | **assignedEntity** | **PractitionerRole** |
| **FRLMInformant** | **informant** | **Extension** |
| **FRLMIntendedRecipient** | **informationRecipient** | **Extension** |
| **FRLMLegalAuthentication** | **legalAuthenticator** | Composition.attester |
| **FRLMOrder** | **inFulfillmentOf** | **ServiceRequest** |
| **FRLMOrganisation** | assignedEntity.representedOrganization | **Organization** |
| **FRLMParticipant** | **participant** | **Extension** |
| **FRLMPatient** | **recordTarget** | **Patient** |
| **FRLMRelatedPerson** | **relatedEntity** | **RelatedPerson** |
| **FRLMHealthProfessional** | **assignedEntity** | **Practitioner** |
| FRLMAttester.dateTime | authenticator.time | Composition.attester.time |
| FRLMHeaderDocument.author:healthProfessional | author.assignedAuthor | Composition.author.PractitionerRole |
| FRLMConsent.identifier | authorization.consent.id | Consent.identifier |
| FRLMDataEnterer.date | dataEnterer.time | Extension.extension:time.value[x] |
| FRLMInformant.informant:professional | informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:healthProfessional | informationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMLegalAuthentication.dateTime | legalAuthenticator.time | Composition.attester.time |
| FRLMOrder.orderId | inFulfillmentOf.order.id | ServiceRequest.identifier |
| FRLMOrganisation.identifier | assignedEntity.representedOrganization.id | Organization.identifier |
| FRLMParticipant.identifier | participant.associatedEntity.id | Extension.extension:party.value[x] |
| FRLMPatient.identifier | recordTarget.patientRole.id | Patient.identifier |
| FRLMRelatedPerson.identifier |  | RelatedPerson.identifier |
| FRLMHealthProfessional.identifier | assignedEntity.id | Practitioner.identifier |
| FRLMAttester.attester:healthProfessional | authenticator.assignedEntity | Composition.attester.party.PractitionerRole |
| FRLMHeaderDocument.author:organisation | author.assignedAuthor | Composition.author.Organization |
| FRLMConsent.type | authorization.consent.code | Consent.category |
| FRLMDataEnterer.dataEnterer:healthProfessional | dataEnterer.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant:organisation | informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:organisation | informationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMLegalAuthentication.legalAuthenticator:healthProfessional | legalAuthenticator.assignedEntity | Composition.attester.party.PractitionerRole |
| FRLMOrder.accessionNumber | inFulfillmentOf.order.ps3-20:accessionNumber | ServiceRequest.identifier |
| FRLMOrganisation.type |  | Organization.type |
| FRLMParticipant.name | participant.associatedEntity.name | Extension.extension:party.value[x] |
| FRLMPatient.address | recordTarget.patientRole.addr | Patient.address |
| FRLMRelatedPerson.name | relatedEntity.relatedPerson.name | RelatedPerson.name |
| FRLMHealthProfessional.name | assignedEntity.assignedPerson.name | Practitioner.name |
| FRLMAttester.attester:device | authenticator.assignedEntity | Composition.attester.party.Device |
| FRLMHeaderDocument.author:device | author.assignedAuthor.assignedAuthoringDevice | Composition.author.Device |
| FRLMConsent.status | authorization.consent.statusCode="completed" | Consent.status |
| FRLMDataEnterer.dataEnterer:patient | dataEnterer.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant:patient | informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:patient | informationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMLegalAuthentication.legalAuthenticator:patient | legalAuthenticator.assignedEntity | Composition.attester.party.Patient |
| FRLMOrder.orderDateAndTime |  | ServiceRequest.authoredOn |
| FRLMOrganisation.name | assignedEntity.representedOrganization.name | Organization.name |
| FRLMParticipant.type | participant@typeCode | Extension.extension:type.value[x] |
| FRLMPatient.telecom | recordTarget.patientRole.telecom | Patient.telecom |
| FRLMRelatedPerson.name.family | relatedEntity.relatedPerson. name.family | RelatedPerson.name.family |
| FRLMHealthProfessional.name.family | assignedEntity.assignedPerson. name.family | Practitioner.name.family |
| FRLMInformant.informant:relatedPerson | informant.relatedEntity | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient:relatedPerson | informationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMLegalAuthentication.legalAuthenticator:device | legalAuthenticator.assignedEntity | Composition.attester.party.Device |
| FRLMOrder.orderPlacer |  | ServiceRequest.requester |
| FRLMOrganisation.address | assignedEntity.representedOrganization.addr | Organization.address |
| FRLMParticipant.role | participant.functionCode | Extension.extension:function.value[x] |
| FRLMPatient.name:officialName | recordTarget.patientRole. patient.name | Patient.name:officialName |
| FRLMRelatedPerson.name.given | relatedEntity.relatedPerson. name.given | RelatedPerson.name.given |
| FRLMHealthProfessional.name.given | assignedEntity.assignedPerson. name.given | Practitioner.name.given |
| FRLMIntendedRecipient.intendedRecipient:device | informationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMLegalAuthentication.legalAuthenticator:organisation | legalAuthenticator.assignedEntity | Composition.attester.party.Organization |
| FRLMOrder.orderReason |  | ServiceRequest.reasonCode |
| FRLMOrganisation.telecom | assignedEntity.representedOrganization.telecom | Organization.telecom |
| FRLMParticipant.period | participant.time | Extension.extension:time.value[x] |
| FRLMPatient.name:usualName | recordTarget.patientRole. patient.name | Patient.name:usualName |
| FRLMRelatedPerson.name.prefix | relatedEntity.relatedPerson. name.prefix | RelatedPerson.name.prefix |
| FRLMHealthProfessional.name.prefix | assignedEntity.assignedPerson. name.prefix | Practitioner.name.prefix |
| FRLMOrganisation.partOf |  | Organization.partOf |
| FRLMParticipant.participant:healthProfessional | participant.associatedEntity | Extension.extension:party.value[x] |
| FRLMPatient.name:officialName.family | recordTarget.patientRole. patient.name.family@qualifier='BR' | Patient.name:officialName.family |
| FRLMRelatedPerson.name.suffix | relatedEntity.relatedPerson. name.suffix | RelatedPerson.name.suffix |
| FRLMHealthProfessional.name.suffix | assignedEntity.assignedPerson. name.suffix | Practitioner.name.suffix |
| FRLMOrganisation.industrySector | assignedEntity.representedOrganization.standardIndustryClassCode | Organization.type |
| FRLMParticipant.participant:organisation | participant.associatedEntity | Extension.extension:party.value[x] |
| FRLMPatient.name:usualName.family | recordTarget.patientRole. patient.name.family@qualifier='CL' | Patient.name:usualName.family |
| FRLMRelatedPerson.subject |  | RelatedPerson.patient |
| FRLMHealthProfessional.address | assignedEntity.addr | Practitioner.address |
| FRLMParticipant.participant:device | participant.associatedEntity | Extension.extension:party.value[x] |
| FRLMPatient.name:officialName.given | recordTarget.patientRole. patient.name.given@qualifier='BR' | Patient.name:officialName.given |
| FRLMRelatedPerson.relationship | relatedEntity.code | RelatedPerson.relationship |
| FRLMHealthProfessional.telecom | assignedEntity.telecom | Practitioner.telecom |
| FRLMHealthProfessional.professionalRole.role | assignedEntity.code | PractitionerRole.code |
| FRLMPatient.name:usualName.given | recordTarget.patientRole. patient.name.given@qualifier='CL' | Patient.name:usualName.given |
| FRLMRelatedPerson.address | relatedEntity.addr | RelatedPerson.address |
| FRLMHealthProfessional.professionalRole.organisation | assignedEntity.representedOrganization | PractitionerRole.organization |
| FRLMPatient.name:officialName.use | recordTarget.patientRole. patient.name.family@qualifier='BR' | Patient.name:officialName.use |
| FRLMRelatedPerson.telecom | relatedEntity.telecom | RelatedPerson.telecom |
| FRLMHealthProfessional.professionalRole.specialty |  | PractitionerRole.specialty |
| FRLMPatient.name:usualName.use | recordTarget.patientRole. patient.name.family@qualifier='CL' | Patient.name:usualName.use |
| FRLMRelatedPerson.gender |  | RelatedPerson.gender |
| FRLMPatient.administrativeGender | recordTarget.patientRole. patient.administrativeGenderCode | Patient.gender |
| FRLMRelatedPerson.birthDate |  | RelatedPerson.birthDate |
| FRLMPatient.dateOfBirth | recordTarget.patientRole. patient.birthTime | Patient.birthDate |
| FRLMRelatedPerson.deceased |  |  |
| FRLMPatient.deceased:boolean | recordTarget.patientRole. patient.sdtc:deceasedInd | Patient.deceased[x] |
| FRLMRelatedPerson.multipleBirth |  |  |
| FRLMPatient.deceased:dateTime | recordTarget.patientRole. patient.sdtc:deceasedTime | Patient.deceased[x] |
| FRLMRelatedPerson.photo |  | RelatedPerson.photo |
| FRLMPatient.multipleBirth:boolean | recordTarget.patientRole. patient.sdtc:multipleBirthInd | Patient.multipleBirth[x] |
| FRLMRelatedPerson.period |  | RelatedPerson.period |
| FRLMPatient.multipleBirth:integer | recordTarget.patientRole. patient.sdtc:multipleBirthOrderNumber | Patient.multipleBirth[x] |
| FRLMRelatedPerson.communication |  | RelatedPerson.communication |
| FRLMPatient.birthPlace | recordTarget.patientRole. patient.birthPlace | Patient.extension:birthPlace |
| FRLMPatient.contact | recordTarget.patientRole. patient.guardian | Patient.contact |
| FRLMPatient.contact.address | recordTarget.patientRole. patient.guardian.addr | Patient.contact.address |
| FRLMPatient.contact.telecom | recordTarget.patientRole. patient.guardian.telecom | Patient.contact.telecom |
| FRLMPatient.contact.name | recordTarget.patientRole. patient.guardian.guardianPerson.name | Patient.contact.name |
| FRLMPatient.contact. name.family | recordTarget.patientRole. patient.guardian.guardianPerson.family | Patient.contact.name |
| FRLMPatient.contact. name.given | recordTarget.patientRole. patient.guardian.guardianPerson.given | Patient.contact.name |
| FRLMPatient.contact.organization | recordTarget.patientRole. patient.guardian.guardianOrganization | Patient.contact.organization |
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

