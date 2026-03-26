🎯 Objectif général
Ce projet vise à développer des compétences d’Analytics Engineer (AE) afin d’évoluer vers un rôle de Data Architect dans le domaine de l’assurance, en utilisant la Modern Data Stack : dbt, DuckDB, GitHub, tests de qualité, modélisation en couches.

🧱 W1D1–W1D2 : Fondations dbt

Compréhension de la structure d’un projet dbt : models/, staging/, marts/, seeds/.
Concepts clés : ref, source, config, DAG (lineage graph).
Seeds : ingestion de données à partir de CSV, versionnées dans Git.
Définition des tests de qualité simples : not_null, unique.
Construction des modèles de staging : normalisation, cast, nettoyage léger.


🧱 W1D3 : Construction de la couche Staging
Modèles créés :

stg_customers
stg_orders
stg_products

Principes appliqués :

Naming convention : snake_case
Casts : numeric, timestamp, integer
Aucune logique métier
Aucune jointure dans le staging
Tests de qualité dans schema.yml
Première génération du DAG

Objectif : créer une couche fiable, propre et standardisée pour la modélisation business (marts).

🧱 W1D4 : Construction de la couche Marts
Création des modèles :

dim_customers
dim_products
fct_orders (modèle fact principal)

Contenu :

Jointures entre commandes, clients et produits
Calcul de total_amount = price * quantity
Application du schéma DIM/FACT
Ajout de tests de qualité (dont relationships pour valider les clés étrangères)

Résultat : une couche d’analytique prête pour le reporting, conforme aux bonnes pratiques AE.

🐞 Problèmes rencontrés & Solutions
1. Colonne product_id manquante dans orders.csv

dbt seed ne mettait pas à jour le schéma
Solution : dbt seed --full-refresh

2. DuckDB affichait un résultat vide dans Python (SHOW TABLES)
Cause réelle : mauvais dossier de travail dans VS Code.

dbt écrivait dans jaffle_shop/dev.duckdb
Python ouvrait un autre fichier dev.duckdb dans dbt-projects/
→ Résultat : Python voyait une base vide.

✔ Solution :

Ouvrir le bon dossier dans VS Code : jaffle_shop
Vérifier le working directory (CWD)
Assurer que Python et dbt utilisent le même fichier dev.duckdb


🗂 Versioning Git & GitHub
Commandes utilisées :
Shellgit add .git commit -m "feat(W1D4): add marts models and schema tests"git pushAfficher plus de lignes
.gitignore mis à jour :
*.duckdb
*.duckdb-wal


🔭 Étapes suivantes (W1D5–W1D6)

Concepts de materialization : table, view, incremental
Construction d’un modèle incrémental
Connexion avec Databricks
Extension vers un cas réel assurance (IFRS17 / sinistres / primes)


✔ Overview
Learning project to build Analytics Engineering skills using dbt + DuckDB, preparing for a transition to Insurance Data Architect.
✔ Progress

W1D1–W1D2: dbt basics (ref, source, config, DAG)
W1D3: Staging layer built (cleaning, casting, schema tests)
W1D4: Marts layer created (dim_customers, dim_products, fct_orders)

✔ Issues solved

Missing product_id in orders → fixed via dbt seed --full-refresh
Python showing empty DuckDB → wrong working directory in VS Code → fixed by running inside jaffle_shop

✔ Git workflow
git add .
git commit -m "feat(W1D4): add marts models"
git push

✔ 전체 개요
dbt + DuckDB 기반으로 Analytics Engineer 핵심 능력을 학습하고, 보험 데이터 아키텍트로 성장하기 위한 프로젝트.
✔ 진행 내용

W1D1–W1D2: dbt 기본 구조, DAG 이해
W1D3: staging 레이어 구축 (정제/타입/테스트)
W1D4: marts 생성 (dim, fact 조인 + total_amount 계산)

✔ 문제 해결

orders.csv에 product_id 누락 → full-refresh로 해결
Python에서 테이블 안 보임 → VS Code 작업 폴더가 잘못됨 → jaffle_shop으로 이동 후 해결

✔ GitHub
git add .
git commit -m "feat(W1D4): add marts models"
git push
