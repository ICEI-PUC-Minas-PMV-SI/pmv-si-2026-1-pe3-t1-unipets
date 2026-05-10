# 3. DOCUMENTO DE ESPECIFICAÇÃO DE REQUISITOS DE SOFTWARE    	                                                       	
## 3.1 Objetivos deste documento
 A seguinte seção deste documento visa descrever e especificar as necessidades dos Usuários que devem ser atendidas pelo projeto UniPets – Sistema de adoção de animais de estimação.
                                    	
## 3.2 Escopo do produto
                                                         	
### 3.2.1 Nome do produto e seus componentes principais
 A plataforma UniPets consiste em uma rede social voltada à adoção de animais e divulgação de eventos e conteúdo relacionado à criação de animais de estimação de diversos tipos. O website contém um feed centralizado que com postagens de quatro tipos, contendo texto, imagens e/ou vídeo:
- Vagas de Voluntariado.
- Eventos.
- Animais disponíveis para adoção.
- Blogs.

Além disso, possui três categorias de usuários:
- Usuário Administrador - Administrador do site e moderador do conteúdo.
- Usuário Comum - Usuários individuais, responsáveis por popular o feed e participar de eventos.
- Usuário Instituição - Usuários para ONGs, pet shops, casas de abrigo e etc. Possui funções exclusivas.
 
### 3.2.2 Missão do produto
 O foco principal do UniPets é a promoção do bem estar animal, apoiando instituições como ONGs, casas de abrigo animal, clínicas veterinárias e pet shops. A plataforma também visa expandir a adoção de animais e promoção de conteúdo ao redor do seu cuidado.
                                                       	
### 3.2.3 Limites do produto
 A aplicação não possui integração com outras redes sociais, fator que limita o seu alcance ao público geral. O conteúdo postado também não é moderado de forma automatizada (como, por exemplo, através de listas de palavras banidas ou software de reconhecimento de imagem), sendo a sua curadoria de exclusiva responsabilidade de um administrador humano.

### 3.2.4 Benefícios do produto
| Benefício                                                         | Valor |
| ----------------------------------------------------------------- | ----- |
| Promoção da adoção de animais                                     | Alto  |
| Conexão entre indivíduos e comunidades locais de bem-estar animal | Alto  |
| Apoio a iniciativas de voluntariado em casas de abrigo e ONGs     | Alto  |
| Promoção do bem-estar animal e boas práticas de criação de pets   | Alto  |
| Apoio a eventos recreativos sobre pets                            | Médio |

## 3.3 Descrição geral do produto
### 3.3.1 Requisitos funcionais
| Código | Funcionalidade                                                                       | Descrição                                                                                                                                                                                                                   |
| ------ | ------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| RF1 | Gerenciar dados. | Usuários do tipo Comum e Institucional podem alterar dados pessoais como localização, E-Mail, número de celular e nome. |
| RF2 | Gerenciar dados de animais. | Usuários do tipo Comum e Institucional podem alterar e excluir fotos, texto, nome e formas de contato em listagens de animais para adoção. |
| RF3 | Registrar Usuário Institucional. | Usuário Institucional poderá ser registrado através do vínculo com um CNPJ e validação externa. As instituições terão uma página individual exclusiva, assim como a capacidade de publicar eventos e vagas de voluntariado. |
| RF4 | Moderar postagem. | Usuário Administrador será utilizado pela gerência do site para coibir o uso abusivo da plataforma. Ele poderá alterar todas as postagens para fins de moderação. |
| RF5 | Efetuar login com E-Mail e senha. | Usuários poderão utilizar de um E-Mail pessoal para poderem criar e fazer login em suas contas. |
| RF6 | Efetuar login via OAuth com conta da Google. | OAuth poderá ser utilizado para efetuar login sem a necessidade de criar uma senha especialmente para a plataforma. |
| RF7 | Trocar senha. | O reset de senha poderá ser feito antes de efetuar login, através de um E-Mail de confirmação para a caixa de entrada do usuário. |
| RF8 | Gerenciar postagens. | Após realizar postagens, usuários poderão editar fotos e texto em suas postagens do feed. |
| RF9 | Pesquisar conteúdo. | A função de pesquisa será capaz de procurar simultaneamente por instituições, usuários, eventos e vagas de voluntariado. |
| RF10 | Filtrar conteúdo. | O filtro poderá ser implementado na função de pesquisa e na visualização padrão de postagens no feed. O filtro poderá limitar conteúdo por localização, tipo (animal, vaga, evento, usuário ou instituição) e data. Também poderá filtrar animais por cor, tamanho, raça, gênero, localização e idade.  |
| RF11 | Publicar vagas no feed. | Usuário Institucional terá a função exclusiva de publicar vagas no feed. Estas vagas são exclusivamente voluntárias, com informações e atualizações geridas pela instituição que criou a postagem. |
| RF12 | Publicar eventos no feed. | Usuário Institucional terá a função exclusiva de publicar eventos no feed. Eventos poderão ser publicamente aderidos por Usuários Comuns e Institucionais, com informações e atualizações geridas pela instituição que criou o evento. |
| RF13 | Gerenciar página Usuário Institucional. | Todo Usuário Institucional terá sua própria página pessoal automaticamente adicionada ao site após a criação da conta. A página irá conter informações como animais listados, postagens únicas, eventos, vagas de voluntariado e dados de funcionamento da instituição. |
| RF14 | Gerenciar página Usuário Comum. | Todo Usuário Comum terá sua própria página pessoal automaticamente adicionada ao site após a criação de conta. A página irá conter informações como animais listados e postagens únicas ao usuário. |
| RF15 | Gerenciar parceiros. | Permitir que o administrador realize o cadastro, edição, consulta e exclusão de parceiros e contribuidores no sistema.  |
| RF16 | Comentar em posts. | Usuários do tipo Comum e Institucional podem submeter comentários em qualquer post do feed. |
| RF17 | Entrar no sistema. | Processamento de login de usuário cadastrado através da validação de credenciais de acesso.  |
| RF18 | Sair do sistema. | Processamento de saída do usuário do sistema e encerramento da sessão ativa.  |

                                                                                                                                  

### 3.3.2 Requisitos não funcionais
| Código | Funcionalidade                                             | Descrição                                                                                                                 |
| ------ | ---------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| RNF1   | Modo de alto contraste                                     | Implementação de modo de alto contraste em todas as páginas do website.                                                   |
| RNF2   | Compatibilidade com versões recentes de browsers populares | Compatível com Firefox ≥ v140.0 e Google Chrome ≥ v138.0.                                                                 |
| RNF3   | Alta responsividade em diferentes dispositivos             | Responsivo em monitores, smartphones e tablets a partir de 420px de altura e 390px de largura.                            |
| RNF4   | Alto desempenho                                            | Redirecionamentos e ações não deverão demorar mais de 2500 ms.                                                            |
| RNF5   | Alta escalabilidade                                        | Base de dados deverá suportar mais de 1.000 usuários sem perda aparente de performance.                                   |
| RNF6   | Tráfego encriptado                                         | Certificados TLS deverão ser utilizados na implementação do serviço.                                                      |
| RNF7   | Adesão à LGPD                                              | Dados requisitados deverão ter um fim claro e serem bem protegidos. Banco de dados deverá implementar hashes para senhas. |

### 3.3.3 Usuários
| Ator                  | Definição                                                                                                                                                                                                    |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Usuário Administrador | Possui acesso completo ao sistema. Capacidade de gerir posts de todos os outros usuários e moderar conteúdo postado.                                                                                         |
| Usuário Comum         | Usuário responsável por popular o feed, interagir com outros membros e postar animais listados para adoção.                                                                                                  |
| Usuário Institucional | Possui a mesma definição que o Usuário Comum, mas é uma conta vinculada a uma instituição (ONG, pet shop ou clínica veterinária). Possui ações exclusivas como postagens de eventos e vagas de voluntariado. |

| Ator                  | Frequência de uso | Nível de instrução | Proficiência na aplicação | Proficiência em informática |
| --------------------- | ----------------- | ------------------ | ------------------------- | --------------------------- |
| Usuário Administrador | Diária            | Superior Completo  | Alta                      | Alta                        |
| Usuário Comum         | Variada           | Variado            | Média                     | Variada                     |
| Usuário Institucional | Semanal           | Variado            | Média                     | Média                       |

## 3.4 Modelagem do Sistema

### 3.4.1 Diagrama de Casos de Uso

O diagrama de Casos de Uso apresentado na Figura 1 a seguir detalha as funcionalidades do Sistema que estarão disponíveis e poderão ser usadas por cada tipo de usuário do UniPets. Como observado, tanto ao Usuário Comum quanto ao Usuário Institucional, cabem as funcionalidades de entrar e sair do sistema, fazer login via autenticação O-Auth (Google), alterar seus dados, alterar senha de acesso, gerenciar animais para adoção, gerenciar postagens e comentários no feed, realizar buscas, filtrar conteúdo e consultar páginas de usuários. O Usuário Institucional ainda pode registrar-se como Instituição, registro aprovado mediante validação do CNPJ, pode também publicar vagas de voluntariado e gerenciar eventos no feed. 

Já o Usuário Administrador consegue gerenciar moderação de conteúdo, de usuários e de parceiros dado que se trata de usuário com permissões elevadas de gerenciamento do Sistema.


#### Figura 1: Diagrama de Casos de Uso do Sistema UniPets.

<img width="705" height="907" alt="Image" src="https://github.com/user-attachments/assets/2814fd0c-3a49-4856-8a27-837c7a53792f" />
 
### 3.4.2 Descrições de Casos de Uso

​Entrar no sistema (CSU01) 

​Sumário: O usuário realiza a autenticação para acessar as funcionalidades restritas da plataforma. 

​Ator Primário: Usuário Comum, Usuário Institucional ou Usuário Administrador. 

​Ator Secundário: Não possui. 

​Pré-condições: O usuário deve estar previamente cadastrado no sistema. 

​Fluxo Principal: 

1. ​O usuário acessa a interface de entrada do sistema. 

​2. O usuário informa o e-mail de login e a senha cadastrados. 

3. ​O Sistema realiza a validação das credenciais informadas. 

​4. O Sistema valida as credenciais informadas. Se o usuário informou a senha incorreta, o Sistema apresenta a mensagem de erro “Senha Incorreta” e o caso de uso retorna ao passo 1; caso contrário, o caso de uso termina. 

​ 

​Fluxo Alternativo: Inclusão 

a) ​O usuário requisita o acesso ao sistema enviando suas credenciais. 

b) ​O Sistema verifica a integridade da senha e do e-mail. 

​c) Se os dados estiverem corretos, o Sistema inicia a sessão do usuário. 

​ 

​Pós-condições: O usuário acessa o sistema com as permissões correspondentes ao seu perfil (Comum, Institucional ou Administrador).​ 

 -----------------------------------------------

​Gerenciar os próprios dados (CSU02) 

​Sumário: O usuário (Comum ou Institucional) realiza a gestão (alteração e consulta) de seus dados de perfil, como localização, e-mail, celular e nome. 

​Ator Primário: Usuário Comum ou Institucional. 

​Ator Secundário: Não possui. 

​Pré-condições: O cadastro deve estar cadastrado e devidamente logado no sistema. 

​Fluxo Principal: 

1. ​O usuário requisita a gestão de seus dados cadastrais. 

​2. O Sistema apresenta as operações que podem ser realizadas: alteração de dados, consulta de perfil ou troca de senha. 

​3. O usuário seleciona a operação desejada: Alteração ou Consulta, ou opta por finalizar o caso de uso. 

​4. Se o usuário desejar continuar com a gestão de seus dados, o caso de uso retorna ao passo 2; caso contrário, o caso de uso termina. 

​ 

​Fluxo Alternativo: Consulta 

a) ​O usuário opta por visualizar como seu perfil aparece para os demais usuários. 

​b) O Sistema apresenta a página individual do usuário (conforme RF13 ou RF14). 

​ 

​Fluxo Alternativo: Alteração 

​a) O usuário seleciona o campo que deseja editar (Nome, E-mail, Localização ou Celular). 

​b) O Sistema apresenta o formulário com os dados atuais disponíveis para edição. 

​c) Após a alteração dos campos e a confirmação pelo usuário, o Sistema valida a integridade dos dados e atualiza o perfil. 

​ 

​Pós-condições: Os dados cadastrais do usuário foram alterados no banco de dados ou apresentados detalhadamente na tela.​ 

 -----------------------------------------------

​​Gerenciar animais para adoção (CSU03) 

​Sumário: O usuário (Comum ou Institucional) realiza a gestão completa (inclusão, alteração, exclusão e consulta) dos animais sob sua responsabilidade listados para adoção. 

​Ator Primário: Usuário Comum ou Institucional. 

​Ator Secundário: Não possui. 

​Pré-condições: O usuário deve estar devidamente logado no sistema. 

​Fluxo Principal: 

​1. O usuário acessa a opção de “Meus Animais” em sua página individual. 

​2. O Sistema apresenta as operações que podem ser realizadas: cadastrar novo animal, alterar dados de animal existente, remover animal da lista ou consultar detalhes. 

​3. O usuário seleciona a operação desejada: Inclusão, Alteração, Exclusão ou Consulta, ou opta por finalizar o caso de uso. 

​4. Se o usuário desejar continuar com a gestão, o caso de uso retorna ao passo 2; caso contrário, o caso de uso termina. 

​ 

​Fluxo Alternativo: Inclusão 

​a) O usuário requisita a inclusão de um novo pet. 

​b) O Sistema apresenta o formulário solicitando: Nome, Espécie, Raça, Porte, Cor, Gênero, Idade Estimada, Localização e o registro SinPatinhas. 

​c) O usuário faz o upload de fotos do animal. 

​d) O Sistema valida os campos obrigatórios e publica o animal no feed. 

​ 

​Fluxo Alternativo: Alteração 

a) ​O usuário seleciona um animal da sua lista e altera informações (ex.: status de vacinação, novas fotos ou descrição). 

b) ​O Sistema atualiza os dados no banco de dados e reflete as mudanças no feed. 

​ 

​Fluxo Alternativo: Exclusão 

a) ​O usuário seleciona um animal e requisita a remoção (ex.: em caso de adoção concluída ou erro no cadastro). 

​b) O Sistema solicita confirmação e remove o animal da listagem pública. 

​ 

​Fluxo Alternativo: Consulta 

​a) O usuário opta por visualizar a ficha completa do animal como ela aparece para os adotantes. 

b) ​O Sistema apresenta a página de detalhes do pet com todas as informações técnicas e fotos. 

​ 

​Pós-condições: Um registro de animal foi inserido, removido, alterado ou apresentado detalhadamente na tela.​ 

 -----------------------------------------------

​​Registrar Usuário Institucional (CSU04) 

​Sumário: O usuário realiza o cadastro especial de instituição (ONG, abrigo ou clínica) para liberação de funções exclusivas no sistema. 

​Ator Primário: Usuário Institucional. 

​Ator Secundário: Sistema de Validação de CNPJ. 

​Pré-condições: A instituição não deve possuir cadastro prévio com o mesmo CNPJ ou e-mail. 

​Fluxo Principal: 

1. ​O representante da instituição acessa a opção "Cadastrar Instituição". 

​2. O Sistema apresenta o formulário de cadastro especial solicitando: Nome Fantasia, Razão Social, CNPJ Endereço Físico, E-mail Institucional e Responsável. 

​3. O usuário preenche os dados e solicita o registro. 

4. ​O Sistema realiza a Validação Externa dos dados informados. 

​5. O Sistema confirma a criação da conta e libera o acesso à Página Individual da Instituição. 

​ 

​Fluxo Alternativo: Inclusão 

a) ​O usuário Institucional requisita a inclusão dos dados da organização e o CNPJ. 

​b) O Sistema realiza a validação externa do CNPJ e grava o registro. 

​c) O Sistema libera o acesso às páginas individuais e funções de publicação.  

​ 

​Pós-condições: Um registro de Usuário Institucional foi inserido e validado no sistema.​ 

 -----------------------------------------------

​​Gerenciar moderação de conteúdo (CSU05) 

​Sumário: O Usuário Administrador realiza a gestão (alteração, exclusão e consulta) de perfis de usuários e postagens no feed para fins de moderação e controle de abusos. 

​Ator Primário: Usuário Administrador. 

​Ator Secundário: Não possui. 

​Pré-condições: O administrador deve estar autenticado com perfil de gestão. 

​Fluxo Principal: 

1. ​O Usuário Administrador acessa o painel de controle ou o feed de postagens. 

​2. O Sistema apresenta as operações que podem ser realizadas: alteração de conteúdo, exclusão de registros ou consulta de dados. 

3. ​O Usuário Administrador seleciona a operação desejada: Alteração, Exclusão ou Consulta, ou opta por finalizar o caso de uso. 

​4. Se o Usuário Administrador desejar continuar com a moderação, o caso de uso retorna ao passo 2; caso contrário o caso de uso termina. 

​ 

​Fluxo Alternativo: Alteração 

a) ​O Usuário Administrador seleciona uma postagem ou perfil e requisita a alteração de dados. 

b) ​O Sistema apresenta os campos para edição (texto, imagens ou status do usuário). 

​c) O Sistema grava a alteração e registra o log de moderação. 

​ 

​Fluxo Alternativo: Exclusão 

​a) O Usuário Administrador seleciona uma postagem abusiva ou perfil irregular e requisita a remoção. 

​b) O Sistema processa a requisição e apaga o registro da plataforma. 

​ 

​Fluxo Alternativo: Consulta 

​a) O Usuário Administrador opta por pesquisar um usuário ou postagem específica para análise. 

​b) O Sistema apresenta a listagem detalhada dos dados solicitados. 

​ 

​Pós-condições: O conteúdo foi alterado ou removido pelo administrador, ou os dados foram apresentados para auditoria.​ 

 -----------------------------------------------

​​Efetuar login via OAuth (CSU06) 

​Sumário: O usuário realiza a autenticação na plataforma utilizando uma conta externa da Google, sem a necessidade de senha específica do sistema. 

​Ator Primário: Usuário Comum ou Usuário Institucional. 

​Ator Secundário: Provedor de Autenticação Google. 

​Pré-condições: O usuário deve possuir uma conta ativa na Google. 

​Fluxo Principal: 

1. ​O usuário acessa a interface de entrada (Login). 

​2. O Sistema apresenta a opção de autenticação via Google 

​3. O usuário seleciona a operação desejada: Inclusão (Autenticação Externa) ou opta por finalizar o caso de uso. 

​4. O Sistema redireciona para a validação do provedor externo. 

​ 

​Fluxo Alternativo: Inclusão 

a) ​O usuário requisita a conexão através de sua conta Google. 

​b) O Sistema recebe a confirmação de identidade do Ator Secundário. 

c) ​O Sistema vincula a identidade externa ao perfil do UniPets e inicia a sessão. 

​ 

​Pós-condições: O usuário é autenticado via conta externa e a sessão é iniciada.​ 

 -----------------------------------------------

​​Trocar a senha de acesso (CSU07) 

​Sumário: O usuário solicita a redefinição de sua senha de acesso caso a tenha esquecido ou deseje alterá-la por segurança. 

​Ator Primário: Usuário Comum ou Usuário Institucional. 

​Ator Secundário: Sistema de e-mail (Servidor SMTP). 

​Pré-condições: O e-mail informado deve estar previamente cadastrado no sistema. 

​Fluxo Principal: 

1. ​O usuário acessa a interface de login e seleciona a opção "Esqueci minha senha". 

​2. O Sistema solicita o e-mail cadastrado. 

​3. O usuário informa o e-mail e seleciona a operação desejada: Inclusão (Solicitar Reset) ou opta por finalizar o caso de uso. 

​4. O Sistema valida o e-mail e envia um link de recuperação para o Ator Secundário (E-mail). 

​5. O usuário acessa o link, informa a nova senha e confirma. 

​ 

​Fluxo Alternativo: Inclusão 

a) ​O usuário requisita o envio do código ou link de recuperação 

​b) O Sistema gera uma chave de segurança temporária e dispara o e-mail. 

​c) O Sistema atualiza a senha no banco de dados após a confirmação do usuário. 

​ 

​Pós-condições: A senha do usuário foi alterada com sucesso no sistema.​ 

 -----------------------------------------------

​​Gerenciar postagens no feed (CSU08) 

​Sumário: O usuário realiza a gestão (alteração e exclusão) das suas postagens de animais ou anúncios feitos anteriormente no feed geral. 

​Ator Primário: Usuário Comum ou Institucional. 

​Ator Secundário: Não possui. 

​Pré-condições: O usuário deve estar logado e ser o autor da postagem que deseja gerenciar. 

​Fluxo Principal: 

1. ​O usuário acessa o feed de notícias ou sua área de "Minhas Postagens". 

​2. O Sistema apresenta as opções para as postagens do próprio usuário: alterar conteúdo ou remover postagem 

​3. O usuário seleciona a operação desejada: Alteração ou Exclusão, ou opta por finalizar o caso de uso. 

​4. Se o usuário desejar continuar gerenciando suas postagens, o caso de uso retorna ao passo 2. 

​ 

​Fluxo Alternativo: Alteração 

​a) O usuário seleciona uma postagem ativa e requisita a modificação do texto ou das fotos. 

​b) O Sistema apresenta os campos para edição. 

c) ​O Sistema grava as alterações e atualiza a exibição no feed. 

​ 

​Fluxo Alternativo: Exclusão 

​a) O usuário seleciona uma postagem e requisita sua retirada do ar. 

​b) O Sistema remove o registro da visualização pública. 

​ 

​Pós-condições: A postagem foi alterada ou removida conforme a solicitação do usuário.​ 

 -----------------------------------------------

​​Realizar busca global no sistema (CSU09) 

​Sumário: O usuário realiza uma pesquisa simultânea no banco de dados para localizar instituições, outros usuários, eventos cadastrados ou vagas de voluntariado disponíveis. 

​Ator Primário: Usuário Comum ou Usuário Institucional. 

​Ator Secundário: Não possui. 

​Pré-condições: O sistema deve possuir registros ativos de usuários, ONGs, eventos ou vagas. 

​Fluxo Principal: 

​1. O usuário acessa o campo de busca global no cabeçalho ou no feed. 

2. O Sistema apresenta a interface para inserção do termo de pesquisas. 

3. ​O Sistema apresenta os resultados organizados por tipo de conteúdo (Usuários, ONGs, Eventos ou Vagas). 

​ 

​Fluxo Alternativo: Inclusão 

a) ​O usuário requisita a filtragem inserindo o nome, palavra-chave ou título do que deseja encontrar. 

​b) O Sistema realiza a busca em todas as entidades relacionadas (Instituições, Usuários, Eventos e Vagas). 

​c) O Sistema apresenta uma lista de resultados sugeridos conforme a relevância do termo digitado. 

​ 

​Pós-condições: Os resultados da busca multidimensional são apresentados na tela para o usuário.​ 

 -----------------------------------------------

​​Filtrar conteúdo do feed (CSU10) 

​Sumário: O usuário realiza a filtragem das postagens e resultados de busca para limitar o conteúdo exibido conforme critérios específicos de interesse. 

​Ator Primário: Usuário Comum ou Usuário Institucional. 

​Ator Secundário: Não possui. 

​Pré-condições: Devem existir postagens ou registros ativos no sistema. 

​Fluxo Principal: 

1. ​O usuário acessa a função de pesquisa ou a visualização padrão do feed. 

​2. O Sistema apresenta as opções de filtro: Localização, Tipo (Animal, Vaga, Evento, Usuário ou Instituição) e Data. 

​3. O usuário seleciona a operação desejada: Consulta ou opta por finalizar, 

4. ​O Sistema processa os critérios e atualiza a listagem na tela. 

​ 

​Fluxo Alternativo: Consulta 

​a) O usuário requisita a aplicação de filtros múltiplos (ex: Tipo: Animal + Raça: SRD + Localização). 

​b) O Sistema valida os parâmetros e exibe apenas as postagens que atendem a todos os requisitos simultaneamente. 

​ 

​Pós-condições: O conteúdo do feed é limitado e apresentado conforme os filtros selecionados.​ 

 -----------------------------------------------

​​Publicar vagas de voluntariado (CSU11) 

​Sumário: O Usuário Institucional realiza a publicação e gestão de oportunidades exclusivas para trabalho voluntário no feed do sistema. 

​Ator Primário: Usuário Institucional. 

​Ator Secundário: Não possui. 

​Pré-condições: O usuário deve estar logado e possuir perfil de Instituição validado. 

​Fluxo Principal: 

1. ​O Usuário Institucional acessa a área de publicações em seu perfil. 

​2. O Sistema apresenta as opções de gestão de vagas: Inclusão, Alteração ou Exclusão. 

​3. O Usuário Institucional seleciona a operação desejada ou opta por finalizar o caso de uso. 

​4. Se o usuário desejar continuar com a gestão, o caso de uso retorna ao passo 2; caso contrário o caso de uso termina. 

​ 

​Fluxo Alternativo: Inclusão 

​a) O Usuário Institucional requisita a inclusão de uma nova vaga voluntária. 

​b) O Sistema solicita as informações da vaga e define o status como "Voluntária". 

​c) O Sistema grava a postagem e a disponibiliza para visualização de todos os usuários no feed. 

​ 

​Fluxo Alternativo: Alteração 

​a) O usuário seleciona uma vaga de sua autoria e solicita a atualização de informações. 

​b) O Sistema processa a alteração e atualiza a data da postagem no feed. 

​ 

​Fluxo Alternativo: Exclusão 

​a) O usuário seleciona uma vaga e solicita sua retirada do sistema. 

​b) O Sistema remove o registro da base de dados ativa. 

​ 

​Pós-condições: Uma vaga voluntária foi publicada, alterada ou removida pela instituição.​ 

 -----------------------------------------------

​​Gerenciar eventos no feed (CSU12) 

​Sumário: O Usuário Institucional realiza a gestão (inclusão, alteração e exclusão) de eventos voltados à causa animal, como feiras de adoção ou campanhas de arrecadação. 

​Ator Primário: Usuário Institucional. 

​Ator Secundário: Usuário Comum ou Institucional (Interessados). 

​Pré-condições: O usuário deve estar logado e possuir perfil de Instituição validado. 

​Fluxo Principal: 

​1. O Usuário Institucional acessa a área de publicações em seu painel. 

​2. O Sistema apresenta as opções de gestão de eventos: Inclusão, Alteração ou Exclusão. 

​3. O Usuário Institucional seleciona a operação desejada ou opta por finalizar o caso de uso. 

​4. O Sistema disponibiliza o evento para que usuários comuns e institucionais possam realizar a adesão. 

​ 

​Fluxo Alternativo: Inclusão 

​a) O Usuário Institucional requisita a inclusão de um novo evento no feed. 

​b) O Sistema solicita: Título, Descrição, Data, Local e informações de contato. 

​c) O Sistema grava o registro e habilita o botão de "Confirmar Presença/Aderir" para o público. 

​ 

​Fluxo Alternativo: Exclusão 

​a) O usuário seleciona um evento e solicita sua retirada do sistema. 

​b) O Sistema remove o registro da listagem pública. 

​ 

​Pós-condições: Um evento foi publicado, alterado ou removido, permitindo a interação do público interessado.​ 

 -----------------------------------------------

​​Consultar página da instituição (CSU13) 

​Sumário: O sistema gera e apresenta uma página individual com conteúdo exclusivo para cada Instituição cadastrada, centralizando suas atividades e dados de funcionamento. 

​Ator Primário: Usuário Comum ou Usuário Institucional. 

​Ator Secundário: Não possui. 

​Pré-condições: A instituição deve possuir uma conta ativa criada. 

​Fluxo Principal: 

​1. O usuário acessa o perfil de uma instituição através do feed, busca. 

​2. O Sistema apresenta a Página Individual da Instituição 

​3. O usuário seleciona a operação desejada: Consulta ou opta por finalizar o caso de uso. 

​4. O Sistema exibe o conteúdo exclusivo atrelado àquela organização. 

​ 

​Fluxo Alternativo: Consulta 

​a) O usuário requisita a visualização detalhada da página da ONG. 

​b) O Sistema apresenta de forma integrada: Dados de Funcionamento, Animais Listados para Adoção, Postagens Únicas, Eventos e Vagas de Voluntariado. 

​c) O Sistema permite a navegação entre as diferentes seções de conteúdo exclusivo da instituição. 

​ 

​Pós-condições: O conteúdo centralizado da instituição é apresentado na tela para o usuário.​ 

 -----------------------------------------------

​​Consultar página do usuário comum (CSU14) 

​Sumário: O sistema gera e apresenta uma página individual para cada Usuário Comum, centralizando suas postagens e animais listados para adoção. 

​Ator Primário: Usuário Comum ou Usuário Institucional. 

​Ator Secundário: Não possui. 

​Pré-condições: O usuário deve possuir uma conta ativa cadastrada no sistema. 

​Fluxo Principal: 

​1. O usuário acessa o perfil de um colaborador através do feed, busca ou listagem de usuários. 

​2. O Sistema apresenta a Página Individual do Usuário Comum 

​3. O usuário seleciona a operação desejada: Consulta ou opta por finalizar. 

​4. O Sistema exibe o conteúdo atrelado àquele perfil específico. 

​ 

​Fluxo Alternativo: Consulta 

​a) O usuário requisita a visualização detalhada do perfil. 

​b) O Sistema apresenta de forma integrada: Animais Listados para Adoção e Postagens Únicas realizadas pelo usuário. 

​c) Caso o usuário logado seja o proprietário do perfil, o Sistema habilita as opções de edição 

​ 

​Pós-condições: Os dados e postagens do Usuário Comum são apresentados detalhadamente na tela.​ 

 -----------------------------------------------

​​Gerenciar comentários no feed (CSU15) 

​Sumário: O usuário realiza a submissão e gestão de comentários em postagens do feed para interação com outros membros da plataforma. 

​Ator Primário: Usuário Comum ou Usuário Institucional. 

​Ator Secundário: Não possui. 

​Pré-condições: O usuário deve estar logado no sistema. 

​Fluxo Principal: 

​1. O usuário visualiza uma postagem (animal, evento ou vaga) no feed. 

​2. O Sistema apresenta o campo de inserção de comentários 

​3. O usuário seleciona a operação desejada: Inclusão, Exclusão ou opta por finalizar. 

​4. Se o usuário desejar continuar comentando em outras postagens, o caso de uso retorna ao passo 2. 

​ 

​Fluxo Alternativo: Inclusão 

​a) O usuário requisita a submissão de um novo comentário em uma postagem do feed. 

​b) O Sistema valida o conteúdo do texto e registra a interação atrelada ao perfil do autor. 

​c) O comentário torna-se visível para todos os usuários que visualizarem a postagem. 

​ 

​Fluxo Alternativo: Exclusão 

​a) O usuário seleciona um comentário de sua autoria e solicita a remoção. 

​b) O Sistema processa a exclusão e retira o texto da visualização pública. 

​ 

​Pós-condições: Um comentário foi inserido ou removido de uma postagem no sistema.​ 

 -----------------------------------------------

​​Gerenciar Usuários (CSU16) 

​Sumário: O Usuário Administrador realiza a gestão (alteração, exclusão e consulta) de todos os perfis cadastrados (Comum e Institucional) para garantir a integridade da plataforma. 

​Ator Primário: Usuário Administrador. 

​Ator Secundário: Não possui. 

​Pré-condições: O administrador deve estar autenticado com nível de acesso superior (Proficiência Alta). 

​Fluxo Principal: 

​1. O Usuário Administrador acessa o módulo de Gestão de Usuários no painel administrativo. 

2.​ O Sistema apresenta a listagem de todos os usuários (Comum e Institucional) e as operações: Alteração, Exclusão ou Consulta. 

​3. O Usuário Administrador seleciona a operação desejada ou opta por finalizar o caso de uso. 

​4. Se o Administrador desejar continuar a moderação, o caso de uso retorna ao passo 2. 

​ 

​Fluxo Alternativo: Alteração 

​a) O Administrador seleciona um perfil e requisita a alteração de status. 

​b) O Sistema atualiza as permissões do usuário e registra a modificação. 

​ 

​Fluxo Alternativo: Exclusão 

​a) O Administrador identifica um perfil irregular ou abusivo e solicita a remoção permanente. 

​b) O Sistema apaga os dados do usuário e invalida sua sessão ativa. 

​ 

​Fluxo Alternativo: Consulta 

​a) O Administrador realiza uma busca por nome, e-mail ou CNPJ para auditar um usuário. 

b) ​O Sistema apresenta o histórico de postagens, animais listados e denúncias atreladas ao perfil. 

​ 

​Pós-condições: O status de um usuário foi alterado, um perfil foi removido ou os dados foram consultados pelo administrador.​ 

 -----------------------------------------------

​Gerenciar Parceiros (CSU17) 

​Sumário:  O sistema permite que o administrador realize a manutenção completa dos dados dos parceiros e contribuidores (ONGs, empresas parceiras ou apoiadores), incluindo o cadastro de novos nomes, edição de informações existentes, consulta e exclusão.  

​Ator Primário: Usuário Administrador. 

​Ator Secundário: Não possui. 

​Pré-condições: O administrador deve estar autenticado no sistema (ter realizado o login com sucesso). 

​Fluxo Principal: 

​1. O Administrador acessa a área de gestão de parceiros no painel administrativo. 

2.​ O sistema exibe a lista de parceiros atualmente cadastrados (obtida do RepositorioContribuidores)  

​3. O Administrador solicita a criação de um novo parceiro.  

​4. O Administrador insere os dados do parceiro (Nome, Descrição, Link, Foto e Banner).

5. O sistema valida os dados e confirma o salvamento. 

6. O sistema atualiza a lista exibida e encerra a operação.

​ 

​Fluxo Alternativo: Edição 

​a) No passo 2 do fluxo principal, o Administrador seleciona um parceiro já cadastrado. 

​b) O Administrador solicita a alteração dos dados. 

c) O sistema exibe os campos preenchidos para edição.

d) O Administrador altera as informações e confirma.

e) O sistema valida, atualiza os dados e retorna ao passo 6 do fluxo principal.
​ 

​Fluxo Alternativo: Exclusão 

a) O Administrador seleciona um parceiro já cadastrado. 

​b) O Administrador solicita a exclusão do registro. 

c) O sistema solicita uma confirmação da operação. 

d) O Administrador confirma a exclusão.

e) O sistema remove o registro do repositório e retorna ao passo 6 do fluxo principal. 

​  

​Pós-condições:O repositório de parceiros é atualizado e as novas informações ficam disponíveis para visualização no sistema. ​ 

 -----------------------------------------------

​​Sair do sistema (CSU18) 

​Sumário: O usuário encerra sua sessão ativa na plataforma. 

​Ator Primário: Usuário Comum, Usuário Institucional ou Usuário Administrador. 

​Ator Secundário: Não possui. 

​Pré-condições: O usuário deve estar logado no sistema. 

​Fluxo Principal: 

​1. O usuário acessa a função de saída (Logout). 

​2. O Sistema verifica se há processos de cadastro ou edição não finalizados. 

​3. Se o usuário estiver com um processo em andamento, o Sistema apresenta a mensagem: "Você possui dados não salvos que serão perdidos, deseja sair mesmo assim?". 

​4. Se o usuário confirmar a saída, o Sistema realiza o deslogue da conta; caso contrário, o caso de uso retorna ao passo 1. 

​ 

​Pós-condições: A sessão do usuário é encerrada e ele retorna à página pública de visitantes.

### 3.4.3 Diagrama de Classes 

O diagrama de classes representa um sistema voltado à gestão de adoção de animais, integrando funcionalidades sociais e administrativas. A classe central é Usuário, que armazena dados pessoais e permite ações como login, edição de informações, criação de comentários e interação com o sistema.

O Feed gerencia as publicações (Posts), permitindo criar, editar, excluir e pesquisar conteúdos. Cada post contém informações como título, categoria, texto e imagem, além de estar associado a um animal e a comentários feitos por usuários. A interação entre usuários ocorre por meio da classe Comentário, enquanto a classe Evento possibilita a criação e gerenciamento de eventos relacionados à adoção, incluindo controle de participantes.

A classe Animal concentra os dados dos animais disponíveis, incluindo características físicas e informações de saúde, como vacinas, exames e doenças. Esses dados são organizados pelo RepositorioAnimais, responsável por armazenar, buscar e transferir animais entre entidades. O sistema também define perfis específicos: Instituição, responsável pela gestão dos animais e publicações; Adotante, que representa os interessados na adoção; e Administrador, que realiza a moderação do sistema, podendo excluir conteúdos e registros.

Assim, o diagrama evidencia a integração entre usuários, animais e publicações, com o objetivo de apoiar e organizar o processo de adoção de forma eficiente.



#### Figura 2: Diagrama de Classes do Sistema.
 
<img width="2227" height="1231" alt="dawd" src="https://github.com/user-attachments/assets/e42b09f1-9d6d-4523-a3b2-7d569c60b48e" />



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


