# DataBase-Ponderada
Aqui está um documento explicativo com base na nova imagem:

---

**Modelo Relacional para Aplicação Web de Marketplace de Voluntariado**

**1. Descrição Geral**

Este diagrama representa o modelo relacional de um banco de dados, que faz parte de uma aplicação web tipo marketplace. Essa aplicação conecta voluntários a oportunidades de voluntariado, permitindo que pessoas, organizações não governamentais (ONGs), e outras instituições possam abrir vagas para seus projetos. Além disso, há uma comunidade para os voluntários compartilharem suas experiências.

**2. Tabelas e Relações**

**2.1 Users**
- **Descrição**: Tabela que armazena informações sobre os usuários (voluntários ou recrutadores).
- **Campos**:
  - id (Identificador único)
  - first_name (Primeiro nome)
  - surname (Sobrenome)
  - email
  - password_register (Senha)
  - phone (Número de telefone)
  - date_of_birth (Data de nascimento)
  - tastes (Interesses)

**2.2 OSC's (Organizações da Sociedade Civil)**
- **Descrição**: Tabela com os dados das organizações que oferecem vagas de voluntariado.
- **Campos**:
  - id (Identificador único)
  - name (Nome da organização)
  - area (Área de atuação)
  - market (Mercado de atuação)
  - goals (Objetivos)
  - cnpj (Identificador tributário)
  - site (Website)
  - contact_number (Telefone de contato)
  - id_users (Referência ao usuário responsável)

**2.3 Opportunities**
- **Descrição**: Tabela que armazena informações sobre as oportunidades de voluntariado abertas.
- **Campos**:
  - id (Identificador único)
  - title (Título da vaga)
  - description (Descrição)
  - interest_area (Área de interesse)
  - number_vacancies (Número de vagas)
  - date_post (Data de postagem)
  - videos (Vídeos relacionados)
  - images (Imagens relacionadas)
  - links (Links úteis)
  - id_users (Referência ao usuário responsável)
  - id_OSC's (Referência à organização responsável)

**2.4 Registration_Opportunities**
- **Descrição**: Esta tabela armazena as inscrições feitas por voluntários nas oportunidades de voluntariado.
- **Campos**:
  - id (Identificador único)
  - links (Links úteis fornecidos pelo voluntário)
  - goals (Objetivos específicos do voluntário)
  - id_users (Referência ao voluntário inscrito)
  - id_opportunities (Referência a oportunidade que recebeu a inscrição)

**2.5 Posts**
- **Descrição**: Tabela que armazena os posts compartilhados pelos voluntários na comunidade.
- **Campos**:
  - id (Identificador único)
  - id_users (Referência ao usuário que fez a postagem)
  - comments (Comentários dos outros membros)
  - title (Título do post)
  - images (Imagens associadas)
  - videos (Vídeos associados)
  - links (Links úteis)

**3. Relacionamentos**

- **Users e OSC's**: Um usuário pode estar associado a uma organização como responsável.
- **Users e Opportunities**: Um usuário pode criar oportunidades e associá-las à organização ou empresa.
- **OSC's e Opportunities**: Uma organização pode abrir várias oportunidades de voluntariado.
- **Opportunities e Registration_Opportunities**: Uma oportunidade pode ter múltiplas inscrições de voluntários.
- **Users e Posts**: Os usuários podem criar posts na comunidade.

**4. Utilização**

O modelo relacional permite conectar voluntários e organizações, oferecendo um espaço para abertura de vagas de voluntariado e uma comunidade de troca de experiências. Ele facilita o gerenciamento de usuários, organizações, vagas e posts, assegurando uma plataforma de voluntariado robusta e inclusiva.

--- 

Espero que este texto atenda à sua solicitação!
