# 3. DOCUMENTO DE ESPECIFICAÇÃO DE REQUISITOS DE SOFTWARE

Nesta parte do trabalho você deve detalhar a documentação dos requisitos do sistema proposto de acordo com as seções a seguir. Ressalta-se que aqui é utilizado como exemplo um sistema de gestão de cursos de aperfeiçoamento.

## 3.1 Objetivos deste documento
Descrever e especificar as necessidades da Coordenação do Curso de Sistemas de Informação da PUC Minas que devem ser atendidas pelo projeto SCCA – Sistema de Cadastro de Cursos de Aperfeiçoamento.

## 3.2 Escopo do produto

### 3.2.1 Nome do produto e seus componentes principais
O produto será denominado SCCA – Sistema de Cadastro de Cursos de Aperfeiçoamento. Ele terá somente um componente (módulo) com os devidos elementos necessários à gestão de cursos.

### 3.2.2 Missão do produto
Gerenciar informações sobre a oferta de cursos de aperfeiçoamento, gerenciar a composição das turmas, alunos, professores e matrículas. 

### 3.2.3 Limites do produto
O SCCA não fornece nenhuma forma de avaliação de alunos, pagamento de parcelas do curso, pagamento a professore e agendamentos. O SCCA não contempla o atendimento a vários cursos de Sistemas de Informação de outras unidades da PUC Minas.

### 3.2.4 Benefícios do produto

| # | Benefício | Valor para o Cliente |
|--------------------|------------------------------------|----------------------------------------|
|1	| Facilidade no cadastro de dados |	Essencial |
|2 | Facilidade na recuperação de informações | Essencial | 
|3 | Segurança no cadastro de matrículas | Essencial | 
|4	| Melhoria na comunicação com os alunos	| Recomendável | 

## 3.3 Descrição geral do produto

### 3.3.1 Requisitos Funcionais

| Código | Requisito Funcional (Funcionalidade) | Descrição |
|--------------------|------------------------------------|----------------------------------------|
| RF1 | Gerenciar Curso de Aperfeiçoamento |	Processamento de Inclusão, Alteração, Exclusão e Consulta de Cursos de Aperfeiçoamento |
| RF2 |	Gerenciar Professor	| Processamento de Inclusão, Alteração, Exclusão e Consulta de professores |
| RF3	| Gerenciar Matrícula |	Processamento de Inclusão, Alteração, Exclusão e Consulta de Matrículas de alunos em Cursos de Aperfeiçoamento |
| ... |	...	| ... |

### 3.3.2 Requisitos Não Funcionais

| Código | Requisito Não Funcional (Restrição) |
|--------------------|------------------------------------|
| RNF1 | O ambiente operacional a ser utilizado é o Windows XP. |
| RNF2 | O sistema deverá executar em um computador configurado com uma impressora de tecnologia laser ou de jato de tinta, a ser usada para impressão dos relatórios. |
| RNF3 |	Segurança	O produto deve restringir o acesso por meio de senhas individuais para o usuário. |
| ... |	... |	... |

### 3.3.3 Usuários 

| Ator | Descrição |
|--------------------|------------------------------------|
| Coordenador |	Usuário gerente do sistema responsável pelo cadastro e manutenção de cursos de aperfeiçoamento. Possui acesso geral ao sistema. |
| Secretaria |	Usuário responsável por registros de alunos, professores, turmas e gerência de matrículas. |
| ... |	... |	... |

## 3.4 Modelagem do Sistema

### 3.4.1 Diagrama de Casos de Uso

O diagrama de Casos de Uso apresentado na Figura 1 a seguir detalha as funcionalidades do Sistema que estarão disponíveis e poderão ser usadas por cada tipo de usuário do UniPets. Como observado, tanto ao Usuário Comum quanto ao Usuário Institucional, cabem as funcionalidades de entrar e sair do sistema, fazer login via autenticação O-Auth (Google), alterar seus dados, alterar senha de acesso, gerenciar animais para adoção, gerenciar postagens e comentários no feed, realizar buscas, filtrar conteúdo e consultar páginas de usuários. O Usuário Institucional ainda pode registrar-se como Instituição, registro aprovado mediante validação do CNPJ, pode também publicar vagas de voluntariado e gerenciar eventos no feed. 

Já o Usuário Administrador consegue gerenciar moderação de conteúdo e gerenciar usuários, dado que se trata de usuário com permissões elevadas de gerenciamento do Sistema.


#### Figura 1: Diagrama de Casos de Uso do Sistema UniPets.

![Image](https://github.com/user-attachments/assets/cd138a59-ed73-40be-9e90-958c0a4c8aa2)
 
### 3.4.2 Descrições de Casos de Uso

Cada caso de uso deve ter a sua descrição representada nesta seção. Exemplo:

#### Gerenciar Professor (CSU01)

Sumário: A Secretária realiza a gestão (inclusão, remoção, alteração e consulta) dos dados sobre professores.

Ator Primário: Secretária.

Ator Secundário: Coordenador.

Pré-condições: A Secretária deve ser validada pelo Sistema.

Fluxo Principal:

1) 	A Secretária requisita manutenção de professores.
2) 	O Sistema apresenta as operações que podem ser realizadas: inclusão de um novo professor, alteração de um professor, a exclusão de um professor e a consulta de dados de um professor.
3) 	A Secretária seleciona a operação desejada: Inclusão, Exclusão, Alteração ou Consulta, ou opta por finalizar o caso de uso.
4) 	Se a Secretária desejar continuar com a gestão de professores, o caso de uso retorna ao passo 2; caso contrário o caso de uso termina.

Fluxo Alternativo (3): Inclusão

a)	A Secretária requisita a inclusão de um professor. <br>
b)	O Sistema apresenta uma janela solicitando o CPF do professor a ser cadastrado. <br>
c)	A Secretária fornece o dado solicitado. <br>
d)	O Sistema verifica se o professor já está cadastrado. Se sim, o Sistema reporta o fato e volta ao início; caso contrário, apresenta um formulário em branco para que os detalhes do professor (Código, Nome, Endereço, CEP, Estado, Cidade, Bairro, Telefone, Identidade, Sexo, Fax, CPF, Data do Cadastro e Observação) sejam incluídos. <br>
e)	A Secretária fornece os detalhes do novo professor. <br>
f)	O Sistema verifica a validade dos dados. Se os dados forem válidos, inclui o novo professor e a grade listando os professores cadastrados é atualizada; caso contrário, o Sistema reporta o fato, solicita novos dados e repete a verificação. <br>

Fluxo Alternativo (3): Remoção

a)	A Secretária seleciona um professor e requisita ao Sistema que o remova. <br>
b)	Se o professor pode ser removido, o Sistema realiza a remoção; caso contrário, o Sistema reporta o fato. <br>

Fluxo Alternativo (3): Alteração

a)	A Secretária altera um ou mais dos detalhes do professor e requisita sua atualização. <br>
b)	O Sistema verifica a validade dos dados e, se eles forem válidos, altera os dados na lista de professores, caso contrário, o erro é reportado. <br>
 
Fluxo Alternativo (3): Consulta

a)	A Secretária opta por pesquisar pelo nome ou código e solicita a consulta sobre a lista de professores. <br>
b)	O Sistema apresenta uma lista professores. <br>
c)	A Secretária seleciona o professor. <br>
d)	O Sistema apresenta os detalhes do professor no formulário de professores. <br>

Pós-condições: Um professor foi inserido ou removido, seus dados foram alterados ou apresentados na tela.

### 3.4.3 Diagrama de Classes 

O diagrama de classes representa um sistema voltado à gestão de adoção de animais, integrando funcionalidades sociais e administrativas. A classe central é Usuário, que armazena dados pessoais e permite ações como login, edição de informações, criação de comentários e interação com o sistema.

O Feed gerencia as publicações (Posts), permitindo criar, editar, excluir e pesquisar conteúdos. Cada post contém informações como título, categoria, texto e imagem, além de estar associado a um animal e a comentários feitos por usuários. A interação entre usuários ocorre por meio da classe Comentário, enquanto a classe Evento possibilita a criação e gerenciamento de eventos relacionados à adoção, incluindo controle de participantes.

A classe Animal concentra os dados dos animais disponíveis, incluindo características físicas e informações de saúde, como vacinas, exames e doenças. Esses dados são organizados pelo RepositorioAnimais, responsável por armazenar, buscar e transferir animais entre entidades. O sistema também define perfis específicos: Instituição, responsável pela gestão dos animais e publicações; Adotante, que representa os interessados na adoção; e Administrador, que realiza a moderação do sistema, podendo excluir conteúdos e registros.

Assim, o diagrama evidencia a integração entre usuários, animais e publicações, com o objetivo de apoiar e organizar o processo de adoção de forma eficiente.



#### Figura 2: Diagrama de Classes do Sistema.
 
<img width="1780" height="1198" src="https://github.com/user-attachments/assets/59e34444-aad1-460a-9f5a-72bb632738a2" />



### 3.4.4 Descrições das Classes 

| # | Nome | Descrição |
|--------------------|------------------------------------|----------------------------------------|
| 1	|	Usuario |	Classe responsável por guardar os dados gerais como senha, nome, telefone, endereço e localização de todos que usarem a plataforma. A partir dessa classe é possível fazer login, trocar senha, criar e gerenciar animais, comentar em publicações, pesquisar e transferir animais entre Instituicao e Adotante. |
| 2	| Instituicao |	Classe que representa organizações cadastradas na plataforma, que podem ser ONGs, clínicas veterinárias e pet shop. Além dos dados herdados de Usuario também é possível registrar o CNPJ. Por fim, a classe Instituicao também pode adicionar, editar e remover postagens do feed e transferir a responsabilidade/propriedade de animais para outro usuário, quando um deles for adotado ou transferido para outra instituição. |
| 3 |	Adotante |	Classe que representa pessoas físicas e armazena, além dos dados herdados de Usuario, informações como CPF, estado civil, renda, idade e profissão. Classe voltada principalmente para representar pessoas que querem adotar animais, mas também podem se voluntariar para ajudar em instituições da causa animal. Um adotante pode ter zero, um ou mais animais vinculados ao seu perfil. |
| 4 |	Administrador |	Classe que representa perfil com permissões mais elevadas. Tem identificação única e pode excluir posts, animais e comentários de qualquer usuário. Atua como um moderador de conteúdo.|
| 5	|	Feed |	Funciona como um blog dentro da plataforma. Os posts ficam organizados por temas e após publicados, tornam-se visíveis para todos os usuários do site. É possível adicionar, editar e excluir publicações, gerenciar comentários e criar eventos.|
| 6 |	Post |	Classe que representa uma publicação dentro do Feed. Um post contém categoria, título, imagem, texto, dados sobre o criador e pode ter um animal relacionado. Também permite gerenciar comentários.|
| 7 | Evento | Evento representa um tipo específico de post e pode ser usado para divulgar eventos de ONGs, clínicas veterinárias e pet shop. Além dos dados de Post, esse tipo específico também mostra data de evento, capacidade de pessoas, lista de presença e status do evento. |
| 8 | Comentario | Essa classe guarda os comentários feitos pelos usuários em publicações. Cada comentário tem identificador único, texto e dados de quem o escreveu.|
| 9 | RepositorioAnimais | Essa classe é um repositório central de animais ligados a um usuário. Permite realizar ações de adicionar, atualizar, excluir, transferir e pesquisar animais. Funciona como uma ponte entre o Usuario e registros de Animal. |
| 10 | Animal | Classe que concentra as informações sobre um animal e suas principais características. Quando um animal é cadastrado, seus dados ficam gravados na plataforma: nome, raça, cor, sexo, porte, peso, idade, temperamento, descrição e situação de adoção e castração. Mostra quem é o responsável atual pelo animal: Instituicao ou Adotante. Também possui dados sobre vacinas, exames e doenças. |
| 11 | Vacinas | Os dados sobre vacinas de cada animal ficam registrados na plataforma. O registro inclui o nome do imunizante, a data de aplicação e a data de reforço.|
| 12 | Exames | Os dados incluem a data de cada exame, resultado salvo em PDF e quem solicitou. |
| 13 | Doencas | Armazena o nome das doenças e a data em que cada uma foi diagnosticada. |


