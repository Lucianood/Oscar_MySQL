# 🎬 Projeto Oscar SQL

Este projeto tem como objetivo a construção completa de um banco de dados relacional sobre a premiação do Oscar, desde o levantamento de regras de negócio até a modelagem e execução de consultas analíticas em SQL.

## 🚀 Objetivo

Criar um sistema estruturado para armazenar, consultar e manipular informações sobre filmes, atores, categorias e premiações do Oscar. O projeto foi motivado pelo recente lançamento de *Superman* e serve como um estudo prático de modelagem de dados e uso de SQL com foco em integridade, desempenho e boas práticas.

---

## 🧠 Etapas do Projeto

### 📌 1. Levantamento de Regras de Negócio
- Identificação dos principais elementos do domínio Oscar: filmes, atores, prêmios, categorias, anos, etc.
- Definição de relacionamentos e regras lógicas.

### 🧱 2. Modelagem de Dados
- **Modelo Conceitual e Lógico** elaborados no [Miro](https://miro.com/)
- Definição das entidades, atributos e relacionamentos
- Estabelecimento de chaves primárias e estrangeiras
- Normalização do modelo para evitar redundâncias e inconsistências

### 🛠 3. Implementação no MySQL
- Criação do banco de dados relacional
- Estruturação de tabelas com suas respectivas PKs e FKs
- Ingestão de dados (mock ou reais)
- Testes de integridade referencial

### 🔎 4. Consultas e Views
- Consultas analíticas como:
  - **Filmes mais premiados**
  - **Atores e seus prêmios**
- Criação de *Views* para facilitar reuso das consultas

### ⚙️ 5. Procedures e Functions
- `Inserir_Filme`: Procedure para inserção padronizada de novos filmes
- `TotalPremiosFilme`: Function que retorna a quantidade de prêmios de um filme com base no seu ID

---
