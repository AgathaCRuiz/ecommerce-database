# Projeto Lógico de Banco de Dados para E-commerce

![SQL Badge](https://img.shields.io/badge/SQL-Database-blue)
![E-commerce Badge](https://img.shields.io/badge/Project-E--commerce-orange)
![DIO Badge](https://img.shields.io/badge/Bootcamp-DIO-green)

## 📌 Sobre o Projeto

Este projeto foi desenvolvido como parte do desafio **"Criando e implementando Projeto Lógico de Banco de Dados"** do **Bootcamp da DIO (Heineken - Inteligência Artificial Aplicada a Dados com Copilot)**.

### 🎯 Objetivo

Criar um sistema de banco de dados relacional completo para uma plataforma de e-commerce, contemplando:

- Modelagem de entidades e relacionamentos
- Scripts de criação de tabelas e inserção de dados
- Consultas SQL para operações e análises de negócio

---

## 🏗️ Estrutura do Banco de Dados

O sistema é composto pelas seguintes entidades principais:

- **Cliente**: Cadastro de clientes (Pessoa Física e Pessoa Jurídica)
- **Produto**: Catálogo de produtos disponíveis na plataforma
- **Pedido**: Registro de compras realizadas
- **Entrega**: Acompanhamento logístico dos pedidos
- **Pagamento**: Registro de transações financeiras
- **Fornecedor**: Cadastro de fornecedores de produtos
- **Terceiro_Vendedor**: Vendedores parceiros da plataforma
- **Estoque**: Controle de disponibilidade de produtos

### 📊 Diagrama ER

O diagrama Entidade-Relacionamento (ER) abaixo representa a estrutura do banco de dados:

![Diagrama ER do E-commerce](/ecommerce-database/docs/e-commerce_ER.png")

---

## 🚀 Funcionalidades Implementadas

- Cadastro de clientes pessoa física e jurídica
- Controle de estoque em múltiplas localizações
- Sistema de marketplace com vendedores terceiros
- Rastreamento de entregas
- Processamento de pedidos e pagamentos
- Relacionamento com fornecedores

---

## 📂 Estrutura de Arquivos

- 📁 `database/schema/`
  - 📜 `create_tables.sql` - Script para criação das tabelas
- 📁 `database/data/`
  - 📜 `insert_data.sql` - Script com dados de exemplo
- 📁 `queries/`
  - 📜 `queries.sql` - Consultas SQL básicas
- 📁 `docs/` - Documentação adicional do projeto
  - 📜 `e-commerce_ER.png` - Consultas SQL básicas

---

## 🛠️ Consultas SQL Implementadas

As consultas SQL desenvolvidas atendem aos seguintes requisitos:

1. **Recuperações simples com `SELECT`**

   - Listagem de produtos, clientes e pedidos

2. **Filtros com `WHERE`**

   - Filtragem por preço, status de entrega e categoria

3. **Expressões para atributos derivados**

   - Cálculo de valores totais e métricas de desempenho

4. **Ordenações com `ORDER BY`**

   - Ordenação por preço, data e relevância

5. **Condições de agrupamento com `HAVING`**

   - Análise de grupos de produtos e fornecedores

6. **Junções entre tabelas (`JOIN`)**

   - Visões complexas relacionando múltiplas entidades

7. **Consultas analíticas avançadas**
   - Performance de vendas, análise de estoque e comportamento do cliente

---

## ⚡ Como Utilizar

1. Execute o script de criação de tabelas:

   ```sql
   source database/schema/create_tables.sql;
   ```

2. Insira os dados de exemplo:

   ```sql
   source database/data/insert_data.sql;
   ```

3. Execute as consultas desejadas a partir dos arquivos em `queries/`

---

## 💻 Tecnologias Utilizadas

- **SQL** (compatível com MySQL/MariaDB)
- **Modelagem de Dados Relacional**
- **Git & GitHub** para versionamento

---

## 🎖️ Desafio DIO

Este projeto atende aos requisitos do desafio da DIO, que incluía:

- Criar um esquema conceitual para um e-commerce
- Implementar o projeto lógico no banco de dados
- Desenvolver queries SQL que demonstrem o poder de análise dos dados

---

## 🙌 Agradecimentos

- **[Digital Innovation One (DIO)](https://www.dio.me/)**
- **Bootcamp Heineken - Inteligência Artificial Aplicada a Dados com Copilot**
- Instrutores e mentores do bootcamp
