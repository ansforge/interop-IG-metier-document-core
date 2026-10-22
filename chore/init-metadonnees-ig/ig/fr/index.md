# Accueil - FR Document Core (Modèle métier) v0.1.0

## Accueil

 **Modèle logique métier des documents dématérialisés produits en France dans le domaine sanitaire et le domaine médico-social.**
 Business logical model of dematerialized health and medico-social documents produced in France. 

>  **Attention !** Cet Implementation Guide n'est pas en version courante. La version courante sera accessible via l'URL canonique suite à la première release : https://interop.esante.gouv.fr/ig/document-core 

**⚠️ Version de test**

Cette publication est une version de test. Elle ne doit pas être utilisée en production.

### Introduction

**Le partage** dans Mon espace santé et **l'échange** par messagerie sécurisée de santé **des documents médicaux et médico-sociaux permet d'améliorer la continuité et la coordination des soins**.

Le Cadre d'interopérabilité des Systèmes d'Information de Santé (CI-SIS) fixe les règles syntaxiques et sémantiques spécifiques à la France et permettant de produire ces documents afin qu'ils soient :

* compréhensibles par les professionnels des secteurs sanitaire et médico-social et les patients/usagers,
* exploitables par les SI pour permettre la mise en œuvre de services à valeurs ajoutées à partir des données structurées contenues dans ces documents.

**Ce guide présente le modèle logique métier générique des documents médicaux et médico-sociaux**, socle commun aux implémentations [FHIR](https://interop.esante.gouv.fr/ig/fhir/document-core) et [CDA](https://interop.esante.gouv.fr/ig/cda/document-core).

Il fait partie du CI-SIS.

### Gouvernance

Ce guide d'implémentation FR Document Core (Modèle métier) est géré par l'Agence du Numérique en Santé (ANS).

### Droits de propriété intellectuelle

**Pour les ressources syntaxiques :**

Ce guide définit un modèle logique métier indépendant de toute syntaxe d'implémentation. Les droits de propriété intellectuelle relatifs aux standards syntaxiques (CDA, FHIR, IHE, DICOM) sont précisés dans les guides d'implémentation associés : [FR Document Core (FHIR)](https://interop.esante.gouv.fr/ig/fhir/document-core) et [FR Document Core (CDA)](https://interop.esante.gouv.fr/ig/cda/document-core).

**Pour les ressources sémantiques :**

Certaines ressources sémantiques de ce guide sont protégées par des droits de propriété intellectuelle couverte par les déclarations ci-dessous. L’utilisation de ces ressources est soumise à l’acceptation et au respect des conditions précisées dans la licence d’utilisation de chacune d’entre elle.

* ISO

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](https://tx.hl7.org.au/fhir/ValueSet/ISO3166Part1): [CompetenceCS](CodeSystem-competence-code-system.md), [EyeColor](StructureDefinition-EyeColor.md)... Show 7 more, [EyeColorVS](ValueSet-EyeColorVS.md), [FRDocumentCore](index.md), [FrPatient](StructureDefinition-fr-patient.md), [MeltingPotVS](ValueSet-MeltingPotVS.md), [ModifiedAdministrativeGender](ValueSet-ModifiedAdministrativeGender.md), [TypeCarteCS](CodeSystem-type-carte-code-system.md) and [TypeCarteVS](ValueSet-TypeCarteVS.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [EyeColor](StructureDefinition-EyeColor.md), [EyeColorVS](ValueSet-EyeColorVS.md) and [MeltingPotVS](ValueSet-MeltingPotVS.md)


Les terminologies publiées sur le [Serveur Multi-terminologies (SMT)](https://smt.esante.gouv.fr/) de l'ANS précisent la licence d'utilisation associée.

Pour les terminologies qui ne sont pas publiées dans le SMT, se renseigner auprès de l'unité de production.

### Dépendances



