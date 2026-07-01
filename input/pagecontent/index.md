<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Modèle logique métier des documents dématérialisés produits en France dans le domaine sanitaire et le domaine médico-social.</b><br>
Business logical model of dematerialized health and medico-social documents produced in France.
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>
    <b>Attention !</b> Cet Implementation Guide n'est pas en version courante. La version courante sera accessible via l'URL canonique suite à la première release : https://interop.esante.gouv.fr/ig/document-core
    </p>
    </blockquote>
</div>
{% endif %}

<div style="width: 65%; background-color: #fff9e6; border-left: 4px solid #ff9800; padding: 8px 12px; margin-bottom: 16px;">
    <b>⚠️ Version de test</b><br>
    Cette publication est une version de test. Elle ne doit pas être utilisée en production.
</div>

<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>

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

{% include ip-statements.xhtml %}

Les terminologies publiées sur le [Serveur Multi-terminologies (SMT)](https://smt.esante.gouv.fr/) de l'ANS précisent la licence d'utilisation associée.

Pour les terminologies qui ne sont pas publiées dans le SMT, se renseigner auprès de l'unité de production.

### Dépendances

{% include dependency-table.xhtml %}
