# Spatial Data Migration Pipeline

![Python](https://img.shields.io/badge/Python-3.11-blue?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![PostGIS](https://img.shields.io/badge/PostGIS-Enabled-success?style=for-the-badge&logo=openstreetmap&logoColor=white)
![PowerShell](https://img.shields.io/badge/Automation-PowerShell-5391FE?style=for-the-badge&logo=powershell&logoColor=white)

## 📖 Project Overview

This project implements a robust **ETL (Extract, Transform, Load) pipeline** designed to modernize a legacy mining and territorial management system.

### The Challenge: Legacy Architecture
The original system relied on a **MySQL** database with simple storage capabilities. It faced significant limitations:
* **Lack of Concurrency:** It could not support multiple users editing data simultaneously without locking tables.
* **Limited Spatial Logic:** Coordinates were stored as raw text/numbers, making complex spatial analysis (overlaps, area calculations) slow and error-prone.

### The Solution: Modern PostGIS Infrastructure
We migrated the data to a sophisticated **PostgreSQL + PostGIS** architecture. This transition enabled:
1.  **Multi-User Scalability:** Leveraging PostgreSQL's MVCC to allow multiple engineers and analysts to work on the platform concurrently.
2.  **Granular Permissions:** A structure ready for complex user roles (Admin, Surveyor, Analyst).
3.  **Spatial Integrity:** Using native `GEOMETRY` types to enforce valid topology and accurate calculations.

---

## 🏗 System Architecture

The pipeline transforms raw legacy SQL dumps into a structured, spatially-aware database.

```mermaid
graph LR
    A[Legacy MySQL Dumps] -->|Extract & Clean| B(Python ETL Script)
    B -->|Transform & Project| C{PostGIS Database}
    C -->|Output| D[Multi-User Spatial Platform]

    
📂 Repository Structure
Here is an overview of the pipeline components:

src/ (The Engine)
municipalities_migration.py: The core Python logic. It connects to the raw data source, cleanses the input (normalizing names, fixing projection errors), and securely loads it into the new schema.

db/schema/ (The Destination)
01_topo_grid_schema.sql & 02_municipalities_schema.sql: These scripts define the modern database structure. They initialize the PostGIS extension, create spatial indices, and enforce strict relational integrity.

db/raw_samples/ (The Source)
Contains the simulated legacy data (source_municipalities.sql, etc.) representing the state of the old MySQL system before migration.

scripts/ (Automation)
run_topo_grid_migration.ps1: A PowerShell orchestration script. It automates the entire environment setup—dropping old tables, applying new schemas, and running the Python migration—allowing for a reproducible "One-Click" deployment.

🚀 Getting Started
Prerequisites
Python 3.10

PostgreSQL with PostGIS extension installed.

A defined .conda file or environment variables for DB credentials.

Sí, absolutamente. Esas dos secciones son vitales para que el proyecto parezca profesional.

Repository Structure: Le demuestra a Ruslan (y a cualquier ingeniero senior) que eres ordenado y que tu código tiene una arquitectura lógica, no son scripts tirados al azar.

Getting Started: Demuestra que sabes crear software que otros pueden usar e instalar (reproducibilidad).

Para que no tengas que estar copiando y pegando por partes, aquí te dejo el código completo final del README.md. Copia todo el bloque de abajo y reemplaza lo que tengas en tu archivo.

Markdown

# Spatial Data Migration Pipeline

![Python](https://img.shields.io/badge/Python-3.9%2B-blue?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![PostGIS](https://img.shields.io/badge/PostGIS-Enabled-success?style=for-the-badge&logo=openstreetmap&logoColor=white)
![PowerShell](https://img.shields.io/badge/Automation-PowerShell-5391FE?style=for-the-badge&logo=powershell&logoColor=white)

## 📖 Project Overview

This project implements a robust **ETL (Extract, Transform, Load) pipeline** designed to modernize a legacy mining and territorial management system.

### The Challenge: Legacy Architecture
The original system relied on a **MySQL** database with simple storage capabilities. It faced significant limitations:
* **Lack of Concurrency:** It could not support multiple users editing data simultaneously without locking tables.
* **Limited Spatial Logic:** Coordinates were stored as raw text/numbers, making complex spatial analysis (overlaps, area calculations) slow and error-prone.

### The Solution: Modern PostGIS Infrastructure
We migrated the data to a sophisticated **PostgreSQL + PostGIS** architecture. This transition enabled:
1.  **Multi-User Scalability:** Leveraging PostgreSQL's MVCC to allow multiple engineers and analysts to work on the platform concurrently.
2.  **Granular Permissions:** A structure ready for complex user roles (Admin, Surveyor, Analyst).
3.  **Spatial Integrity:** Using native `GEOMETRY` types to enforce valid topology and accurate calculations.

---

## 🏗 System Architecture

The pipeline transforms raw legacy SQL dumps into a structured, spatially-aware database.

```mermaid
graph LR
A[Legacy MySQL Dumps] -->|Extract & Clean| B(Python ETL Script)
B -->|Transform & Project| C{PostGIS Database}
C -->|Output| D[Multi-User Spatial Platform]
(Note: The logic handles coordinate system transformations and data normalization during transit.)

📂 Repository Structure
Here is an overview of the pipeline components:

src/ (The Engine)
municipalities_migration.py: The core Python logic. It connects to the raw data source, cleanses the input (normalizing names, fixing projection errors), and securely loads it into the new schema.

db/schema/ (The Destination)
01_topo_grid_schema.sql & 02_municipalities_schema.sql: These scripts define the modern database structure. They initialize the PostGIS extension, create spatial indices, and enforce strict relational integrity.

db/raw_samples/ (The Source)
Contains the simulated legacy data (source_municipalities.sql, etc.) representing the state of the old MySQL system before migration.

scripts/ (Automation)
run_topo_grid_migration.ps1: A PowerShell orchestration script. It automates the entire environment setup—dropping old tables, applying new schemas, and running the Python migration—allowing for a reproducible "One-Click" deployment.

🚀 Getting Started
Prerequisites
Python 3.x

PostgreSQL with PostGIS extension installed.

A defined .env file or environment variables for DB credentials.

Installation
Clone the repository:

Bash

git clone [https://github.com/yourusername/spatial-data-migration-pipeline.git](https://github.com/yourusername/spatial-data-migration-pipeline.git)
cd spatial-data-migration-pipeline
Install dependencies:

Bash

pip install -r requirements.txt
Run the Migration: Execute the automation script to rebuild the database and migrate data:

PowerShell

./scripts/run_topo_grid_migration.ps1
🛠 Tech Stack
Language: Python (Pandas, Psycopg2, SQLAlchemy)

Database: PostgreSQL 15 / PostGIS 3

Automation: PowerShell

Version Control: Git