---
description: "Corriger les mappings d'un composant elementaire LM en deux groupes: LM->CDA puis LM->FHIR"
name: "Corriger mappings LM vers CDA/FHIR"
argument-hint: "Nom du composant elementaire (ex: FRAdvanceDirective)"
agent: "agent"
---
Objectif: corriger le fichier de mapping du composant demande dans MappingLM_CDA_FHIR_Corps/composantsElementaires en produisant exactement deux groupes de mapping.

Contexte fixe:
- Source metier: un element du dossier local input/fsh/ModeleLogiqueMetier/composantsElementaires.
- Cible CDA de reference: https://github.com/ansforge/interop-IG-cda-document-core/tree/main/input/fsh/RessourcesCDACorps/profils/composantsElementaires
- Cible FHIR de reference: https://github.com/ansforge/interop-IG-fhir-document-core/tree/main/input/fsh/RessourcesFHIRCorps/profils
- Fichiers a corriger: input/fsh/MappingLM_CDA_FHIR_Corps/composantsElementaires/*.fsh

Entree:
- $ARGUMENTS = nom du composant elementaire (sans extension), ou le fichier de mapping cible.

Tache:
1. Identifier le modele logique metier source correspondant dans input/fsh/ModeleLogiqueMetier/composantsElementaires.
2. Ouvrir le mapping cible dans input/fsh/MappingLM_CDA_FHIR_Corps/composantsElementaires.
3. Verifier la coherence des correspondances avec les profils CDA et FHIR de reference.
4. Corriger le mapping en conservant le style FSH existant du projet.
5. Produire deux groupes distincts et ordonnes dans le mapping:
   - Groupe 1: mappings du modele metier vers CDA.
   - Groupe 2: mappings du modele metier vers FHIR.
6. Ne pas melanger les cibles dans un meme groupe.
7. Ne pas modifier des ressources hors du composant demande.

Contraintes:
- Garder les conventions de nommage et d'indentation existantes.
- Eviter les modifications cosmetiques non necessaires.
- Si une information de mapping manque, signaler explicitement l'hypothese.
- Couverture exhaustive obligatoire: tous les elements du modele metier source (y compris sous-elements) doivent apparaitre dans le ConceptMap.
- Si un element ne peut pas etre mappe vers CDA ou FHIR, ajouter une entree explicite avec target.equivalence = #unmatched et un target.comment justifiant l'ecart.

Format de sortie attendu:
- Resume court des corrections effectuees.
- Liste des ecarts corriges (puce par ecart).
- Fichiers modifies.
- Questions ouvertes / hypotheses (si applicable).
