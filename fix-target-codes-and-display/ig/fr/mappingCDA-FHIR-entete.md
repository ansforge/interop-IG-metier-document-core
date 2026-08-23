# Mapping Métier/CDA/FHIR - FR Document Core (Modèle métier) v0.1.0

## Mapping Métier/CDA/FHIR

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
| FRLMHeaderDocument.author[x] | ClinicalDocument.author | Composition.author |
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
| FRLMAttester.attester[x]:healthProfessional | Authenticator.assignedEntity | Composition.attester.party |
| FRLMAttester.attester[x]:device | Authenticator.assignedEntity | Composition.attester.party |
| FRLMHeaderDocument.author[x] | **author** | Composition.author |
| FRLMHeaderDocument.author[x] | **author** | Composition.author |
| FRLMHeaderDocument.author[x] | **author** | Composition.author |
| FRLMHeaderDocument.author[x] | **author** | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| FRLMHeaderDocument.author[x] | Author.assignedAuthor | Composition.author |
| **FRLMConsent** | **authorization** | **Consent** |
| FRLMConsent.identifier | Authorization.consent.id | Consent.identifier |
| FRLMConsent.type | Authorization.consent.code | Consent.category |
| FRLMConsent.status | Authorization.consent.statusCode | Consent.status |
| FRLMHeaderDocument.custodian | Custodian.assignedCustodian | Composition.custodian |
| FRLMOrganisation.identifier | CustodianOrganization.id |  |
| FRLMOrganisation.name | CustodianOrganization.name |  |
| FRLMOrganisation.address | CustodianOrganization.addr |  |
| FRLMOrganisation.telecom | CustodianOrganization.telecom |  |
| **FRLMDataEnterer** | **dataEnterer** | **Extension** |
| FRLMDataEnterer.date | DataEnterer.time | Extension.extension:time.value[x] |
| FRLMDataEnterer.dataEnterer[x]:healthProfessional | DataEnterer.assignedEntity | Extension.extension:party.value[x] |
| FRLMDataEnterer.dataEnterer[x]:patient | DataEnterer.assignedEntity | Extension.extension:party.value[x] |
| **FRLMHealthProfessional** | **assignedEntity** | **PractitionerRole** |
| **FRLMHealthProfessional** | **assignedEntity** | **Practitioner** |
| FRLMHealthProfessional.identifier | AssignedEntity.id | Practitioner.identifier |
| FRLMHealthProfessional.name |  | Practitioner.name |
| FRLMHealthProfessional.address | AssignedEntity.addr | Practitioner.address |
| FRLMHealthProfessional.telecom | AssignedEntity.telecom | Practitioner.telecom |
| FRLMHealthProfessional.professionalRole.role | AssignedEntity.code | PractitionerRole.code |
| FRLMHealthProfessional.professionalRole.organisation | AssignedEntity.representedOrganization | PractitionerRole.organization |
| FRLMHealthProfessional.professionalRole.specialty |  | PractitionerRole.specialty |
| FRLMHealthProfessional.name | Person.name | Practitioner.name |
| FRLMHumanName.use | PN.use |  |
| FRLMHumanName.family | PN.item.family | Practitioner.name.family |
| FRLMHumanName.given | PN.item.given | Practitioner.name.given |
| FRLMHumanName.prefix | PN.item.prefix | Practitioner.name.prefix |
| FRLMHumanName.suffix | PN.item.suffix | Practitioner.name.suffix |
| FRLMHumanName.period | PN.validTime |  |
| **FRLMInformant** | **informant** | **Extension** |
| FRLMInformant.informant[x].informantProfessional | Informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant[x].informantOrganisation | Informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant[x].informantPersonne[x]:patient | Informant.assignedEntity | Extension.extension:party.value[x] |
| FRLMInformant.informant[x].informantPersonne[x]:relatedPerson | Informant.relatedEntity | Extension.extension:party.value[x] |
| **FRLMIntendedRecipient** | **informationRecipient** | **Extension** |
| FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientHealthProfessional | InformationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientOrganisation | InformationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientPatient | InformationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientRelatedPerson | InformationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientDevice | InformationRecipient.intendedRecipient | Extension.extension:party.value[x] |
| **FRLMLegalAuthentication** | **legalAuthenticator** | Composition.attester |
| FRLMLegalAuthentication.dateTime | LegalAuthenticator.time | Composition.attester.time |
| FRLMLegalAuthentication.legalAuthenticator[x]:healthProfessional | LegalAuthenticator.assignedEntity | Composition.attester.party |
| FRLMLegalAuthentication.legalAuthenticator[x]:patient | LegalAuthenticator.assignedEntity | Composition.attester.party |
| FRLMLegalAuthentication.legalAuthenticator[x]:device | LegalAuthenticator.assignedEntity | Composition.attester.party |
| FRLMLegalAuthentication.legalAuthenticator[x]:organisation | LegalAuthenticator.assignedEntity | Composition.attester.party |
| **FRLMOrder** | **inFulfillmentOf** | **ServiceRequest** |
| FRLMOrder.orderDateAndTime |  | ServiceRequest.authoredOn |
| FRLMOrder.orderPlacer[x] |  | ServiceRequest.requester |
| FRLMOrder.orderReason[x] |  | ServiceRequest.reasonCode |
| FRLMOrder.orderId | Order.id | ServiceRequest.identifier |
| FRLMOrder.accessionNumber |  | ServiceRequest.identifier |
| **FRLMOrganisation** | assignedEntity.representedOrganization | **Organization** |
| FRLMOrganisation.identifier | Organization.id | Organization.identifier |
| FRLMOrganisation.type |  | Organization.type |
| FRLMOrganisation.name | Organization.name | Organization.name |
| FRLMOrganisation.address | Organization.addr | Organization.address |
| FRLMOrganisation.telecom | Organization.telecom | Organization.telecom |
| FRLMOrganisation.partOf |  | Organization.partOf |
| FRLMOrganisation.industrySector | Organization.standardIndustryClassCode | Organization.type |
| **FRLMParticipant** | **participant** | **Extension** |
| FRLMParticipant.type | Participant1.typeCode | Extension.extension:type.value[x] |
| FRLMParticipant.role | Participant1.functionCode | Extension.extension:function.value[x] |
| FRLMParticipant.period | Participant1.time | Extension.extension:time.value[x] |
| FRLMParticipant.participant.participantProfessional | Participant1.associatedEntity | Extension.extension:party.value[x] |
| FRLMParticipant.participant.participantOrganisation | Participant1.associatedEntity | Extension.extension:party.value[x] |
| FRLMParticipant.participant.participantDevice | Participant1.associatedEntity | Extension.extension:party.value[x] |
| FRLMParticipant.identifier | AssociatedEntity.id | Extension.extension:party.value[x] |
| FRLMParticipant.name | AssociatedEntity.associatedPerson | Extension.extension:party.value[x] |
| **FRLMPatient** | **recordTarget** | **Patient** |
| FRLMPatient.identifier | PatientRole.id | Patient.identifier |
| FRLMPatient.address | PatientRole.addr | Patient.address |
| FRLMPatient.telecom | PatientRole.telecom | Patient.telecom |
| FRLMPatient.name | Patient.name | Patient.name:officialName |
| FRLMPatient.name | Patient.name | Patient.name:usualName |
| FRLMPatient.administrativeGender | Patient.administrativeGenderCode | Patient.gender |
| FRLMPatient.dateOfBirth | Patient.birthTime | Patient.birthDate |
| FRLMPatient.deceased[x]:deceasedBoolean | Patient.sdtcDeceasedInd | Patient.deceased[x] |
| FRLMPatient.deceased[x]:deceasedDateTime | Patient.sdtcDeceasedTime | Patient.deceased[x] |
| FRLMPatient.multipleBirth[x]:multipleBirthBoolean | Patient.sdtcMultipleBirthInd | Patient.multipleBirth[x] |
| FRLMPatient.multipleBirth[x]:multipleBirthInteger | Patient.sdtcMultipleBirthOrderNumber | Patient.multipleBirth[x] |
| FRLMPatient.birthPlace | Patient.birthplace | Patient.extension:birthPlace |
| FRLMPatient.contact | Patient.guardian | Patient.contact |
| FRLMPatient.contact.address | Patient.guardian | Patient.contact.address |
| FRLMPatient.contact.telecom | Patient.guardian | Patient.contact.telecom |
| FRLMPatient.contact.name | Patient.guardian | Patient.contact.name |
| FRLMPatient.contact. name.family | Patient.guardian | Patient.contact.name |
| FRLMPatient.contact. name.given | Patient.guardian | Patient.contact.name |
| FRLMPatient.contact.organization | Patient.guardian | Patient.contact.organization |
| FRLMHumanName.use | Patient.name.use |  |
| FRLMHumanName.family | Patient.name. item.family |  |
| FRLMHumanName.given | Patient.name. item.given |  |
| **FRLMRelatedPerson** | **relatedEntity** | **RelatedPerson** |
| FRLMRelatedPerson.identifier |  | RelatedPerson.identifier |
| FRLMRelatedPerson.name |  | RelatedPerson.name |
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
| FRLMRelatedPerson.name | Person.name | RelatedPerson.name |
| FRLMHumanName.use | PN.use |  |
| FRLMHumanName.family | PN.item.family | RelatedPerson.name.family |
| FRLMHumanName.given | PN.item.given | RelatedPerson.name.given |
| FRLMHumanName.prefix | PN.item.prefix | RelatedPerson.name.prefix |
| FRLMHumanName.suffix | PN.item.suffix | RelatedPerson.name.suffix |
| FRLMHumanName.period | PN.validTime |  |

