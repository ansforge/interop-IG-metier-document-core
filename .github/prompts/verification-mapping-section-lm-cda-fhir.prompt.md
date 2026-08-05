---
description: "Verifier et corriger un mapping de section LM-CDA-FHIR a partir d'un fichier metier source"
---

Contexte:
Je travaille sur des ConceptMap de sections dans ce repository.

Tache:
Verifier puis corriger le fichier de mapping de section en appliquant les conventions du projet.

Parametres fournis:
- Fichier mapping section: {CHEMIN_FICHIER_SECTION}
- Fichier metier source: {CHEMIN_FICHIER_METIER_SOURCE}
- Canonical CDA attendu (optionnel): {CANONICAL_CDA_ATTENDU}
- Chemin section FHIR attendu (optionnel): {CHEMIN_SECTION_FHIR_ATTENDU}
- Nom d'instance attendu (optionnel): {NOM_INSTANCE_ATTENDU}

Regles obligatoires:
1. Produire exactement 2 groupes dans la ConceptMap.
2. Groupe 1: LM -> CDA.
3. Groupe 2: LM -> FHIR.
4. Interdire CDA -> FHIR dans le deuxieme groupe.
5. Verifier les canonical URLs contre les profils reels presents dans le repo.
6. Si une cible n'existe pas, garder l'element source avec unmatched et un commentaire explicite.
7. Preserver le style FSH et limiter les changements au strict necessaire.
8. Renommer systematiquement le fichier de mapping et le nom de l'instance en utilisant le contexte de nommage du modele logique metier source.
9. Exemple de renommage attendu: FRSectionExposureRadiationLMCDAFHIR -> FRSectionExposureInformationLMCDAFHIR.
10. Mettre a jour automatiquement toutes les references impactees dans sushi-config.yaml apres tout renommage (ancien nom -> nouveau nom).
11. Pour les slices de sections FHIR dans FRCompositionDocument.section, imposer un nommage avec le prefixe section (exemple: FRCompositionDocument.section:exposureRadiation -> FRCompositionDocument.section:sectionExposureRadiation).

Controles a effectuer:
1. Coherence source/target des 2 groupes.
2. Coherence des codes source du groupe 2 (doivent partir du LM).
3. Coherence des mappings root, code, title, text, entry.
4. Coherence nommage instance, fichier, et references dans sushi-config.yaml.
5. Verification de la mise a jour effective de sushi-config.yaml apres renommage.
6. Verification des slices FHIR utilises dans target.code.
7. Verification explicite de la convention de nommage des slices de section (prefixe section).
8. Detection des regressions par rapport aux patterns des autres mappings de section.

Sortie attendue:
1. Findings prioritaires (Critique, Majeur, Moyen) avec fichier et ligne.
2. Corrections appliquees directement dans les fichiers.
3. Resume des modifications effectives.
4. Risques residuels et points a confirmer.
5. Validation minimale de syntaxe et signalement des erreurs restantes.

Important:
- Si un parametre est absent, poser une question de clarification courte avant toute modification.
- Ne pas reformater des zones non concernees.
- Ne pas supprimer une information fonctionnelle sans justification.
