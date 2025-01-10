# 🚗 Banco de Dados para Oficina Mecânica 🔧

Bem-vindo ao repositório do projeto de banco de dados para uma oficina mecânica! 

Este projeto foi desenvolvido como parte do desafio proposto pela professora [Juliana Mascarenhas](https://www.linkedin.com/in/juliana-mascarenhas-ds/) no curso ***"Construa um Projeto Lógico de Banco de Dados do Zero"*** do **Bootcamp [Suzano](https://www.linkedin.com/company/suzano/posts/?feedView=all) - Análise de Dados com Power BI** na plataforma **[DIO](https://www.dio.me/)**.

<br>

## 🎯 Objetivo
Este projeto tem como objetivo consolidar conhecimentos em modelagem e manipulação de dados, além de preparar uma base sólida para futuras análises em ferramentas de BI, como o Power BI.

<br>


## 📂 Estrutura do Repositório

O repositório contém três arquivos principais:

- **`schema_mechanical_workshop.sql`**: Script para criar o banco de dados e suas tabelas.
- **`insert_schema_mechanical_workshop.sql`**: Script para popular o banco de dados com dados fictícios.
- **`queries_mechanical_workshop.sql`**: Conjunto de consultas para exploração dos dados.

<br>


## 🛠️ Ferramentas e Tecnologia

- **MySQL**: Banco de dados relacional utilizado para modelagem, manipulação e consultas.

<br>


## 🧩 Modelagem do Banco de Dados

O banco foi projetado para gerenciar as operações de uma oficina mecânica e inclui as seguintes entidades principais:

- **Cliente**: Registro de dados dos clientes.
- **Veículo**: Informações sobre os veículos atendidos.
- **Mecânico**: Detalhes dos profissionais da oficina.
- **Equipe**: Grupos de mecânicos especializados.
- **Ordem de Serviço (OS)**: Detalhamento de serviços realizados, incluindo peças e mão de obra.

### Relacionamentos

A modelagem contempla os relacionamentos entre as entidades, garantindo a integridade dos dados e permitindo consultas robustas. Cada ordem de serviço está associada a um cliente, veículo e mecânico responsável, e pode incluir diversas peças e serviços.

<br>


## 🔍 Consultas Implementadas

O arquivo `queries_mechanical_workshop.sql` inclui consultas como:

1. Listagem de clientes e seus veículos.
2. Veículos mais recentes atendidos na oficina.
3. Detalhamento das ordens de serviço.
4. Relatório de custos totais por equipe, peças e serviços.
5. Relatórios personalizáveis para análises estratégicas.

<br>


## 🚀 Como Utilizar

1. Clone este repositório:
   ```bash
   git clone https://github.com/MarcosWinther/project-mysql-db-mechanical-workshop
   ````

2. Importe os scripts SQL no seu ambiente MySQL na seguinte ordem:
   - ``schema_mechanical_workshop.sql``: Criação do banco de dados e tabelas.
   - ``insert_schema_mechanical_workshop.sql``: Inserção de dados fictícios.
   - ``queries_mechanical_workshop.sql``: Execução das consultas.

3. Explore o banco de dados e personalize as consultas para suas necessidades!

<br>


## 👨‍💻 Expert

<p>
    <img 
      align=left 
      margin=10 
      width=80 
      src="https://avatars.githubusercontent.com/u/44624583?v=4"
    />
    <p>&nbsp&nbsp&nbspMarcos Winther<br>
    &nbsp&nbsp&nbsp
    <a href="https://github.com/MarcosWinther">
    GitHub</a>&nbsp;|&nbsp;
    <a href="https://www.linkedin.com/in/marcoswinthersilva/">LinkedIn</a>
    </p>
</p>
<br/><br/>

---

⌨️ com 💜 por [Marcos Winther](https://github.com/MarcosWinther)