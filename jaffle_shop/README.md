🇫🇷 **Résumé Semaine 1 (Version détaillée)**
### 🎯 Objectif de la semaine
Construire les bases essentielles d’un projet dbt : structure, staging, marts, seeds, tests de qualité et exécution DAG.
### 📌 Contenu réalisé
**W1D1 – Structure dbt & seeds**
- Compréhension de la structure : models / staging / marts / seeds
- Concepts clés : `ref`, `source`, `config(materialized)`
- Construction du DAG et exécution
- Chargement des seeds via CSV
**W1D2 – Jinja & logique de modèle**
- Conditions et boucles Jinja
- Variables, alias, macros
- Compréhension du DAG comme structure de connaissances
**W1D3 – Construction de la couche Staging**
- Normalisation, nettoyage, cast de colonnes
- Création : `stg_customers`, `stg_orders`, `stg_products`
- Tests `not_null`, `unique`, `relationships`
**W1D4 – Construction de la couche Marts**
- Modèles dimensionnels et factuels
- `dim_customers`, `dim_products`, `fct_orders`
- Jointures, logique métier, calcul `total_amount`
**W1D5 – Materialization + Incremental (concepts)**
- table / view / ephemeral / incremental
- Stratégies : append-only, merge, partition
- Création du modèle `fct_orders_incremental`
### 📎 Compétences clés acquises
- Design en couches (staging → marts)
- Data Quality testing
- Jinja & SQL templating
- Gestion de DuckDB via Python
- GitHub workflow (add/commit/push/pull)
---
## 🇺🇸 **Week 1 Summary (Short Version)**
### ✔ What was achieved
- dbt project basics learned (models, seeds, DAG, tests)
- Staging models built with proper cleaning/casting
- Marts layer built (dim + fact)
- Materialization strategies understood
- Incremental model prototype created
- GitHub project initialized
- DuckDB verified using Python
---
## 🇰🇷 **1주차 요약 (간단 버전)**
### ✔ 이번 주 성과
- dbt 구조 이해 및 프로젝트 초기 설정
- staging 3종 모델 구축 (정제/표준화)
- marts(dim/fct) 구축 및 조인 로직 구현
- materialization 4종 개념 이해
- incremental 기본 구조 작성
- DuckDB + Python 데이터 조회
- GitHub 버전 관리 정착

🇫🇷 **Semaine 2 – Plan de travail (Version détaillée)**
### 🎯 Thème de la semaine
Approfondissement des modèles incrémentaux, gestion des fenêtres temporelles, tests avancés, macros, et structuration intermédiaire.
### 📌 Plan par jour
**W2D1 – Tests incrémentaux (append, merge, partition)**
- Comparaison des trois stratégies
- Simulation late-arrival, updates, duplicates
**W2D2 – Assurance & données historiques**
- Application aux contrats, avenants, sinistres
- Modèles incrémentaux basés sur les mois (partition)
- Gestion des fenêtres de rafraîchissement
**W2D3 – Couche Intermédiaire**
- Modèle `int_orders` (nettoyage minimal + préparation marts)
- Optimisation du DAG
**W2D4 – Tests avancés + Macros**
- accepted_values, conditional tests
- macros personnalisées
**W2D5 – Documentation & GitHub**
- Mise à jour README
- dbt docs
- Structuration propre du repo (commits: feat/fix/test/docs)
### 🔑 Compétences attendues
- Maîtrise complète du moteur incrémental
- Structuration de modèles pour données assurance
- Mise en place d’une couche intermédiaire propre
- Écriture de macros réutilisables
- Documentation professionnelle
---
## 🇺🇸 **Week 2 Plan (Short Version)**
- W2D1: Incremental testing (append/merge/partition)
- W2D2: Insurance-domain incremental models
- W2D3: Build intermediate layer (int_orders)
- W2D4: Advanced tests & macros
- W2D5: Docs + GitHub cleanup
---
## 🇰🇷 **2주차 계획 (간단 버전)**
- W2D1: append/merge/partition 실제 비교 실습
- W2D2: 보험 도메인 incremental 모델 설계(계약/배서/청구)
- W2D3: intermediate layer 구축
- W2D4: 고급 테스트 + macro 작성
- W2D5: README·문서화·GitHub 정리