# 1. INTRODUÇÃO

A abordagem de Design Centrado no Usuário (DCU) é uma prática essencial para garantir que sistemas sejam desenvolvidos com foco nas reais necessidades do público que irá utilizá-los. O DCU prioriza a realização de uma análise completa dos usuários, de seus contextos e de suas dificuldades, possibilitando o desenvolvimento de soluções mais eficientes e acessíveis, independentemente de se tratar de organizações de pequeno, médio ou grande porte, com ou sem fins lucrativos.

Dentro de um contexto social, uma área que pode ter bom aproveitamento dos benefícios oferecidos por essa abordagem é a de adoção de animais. Segundo um relatório divulgado pelo grupo Mars Petcare - um gigante global, com destaque no ramo da nutrição animal e reconhecido por marcas famosas como Pedigree e Whiskas - em 2024, estimava-se que 1 em cada 3 animais de estimação no mundo não tinham um lar e o número de animais em situação de abandono era de cerca de 362 milhões, sendo em grande parte gatos e cachorros, os quais viviam em situação de rua ou em ONGs de proteção animal. No Brasil, essa situação ainda tem diversos agravantes, visto que o país possui poucas medidas em relação à proteção, identificação e controle da reprodução de animais.

Diante do cenário descrito, observa-se a necessidade da criação de um sistema unificado de adoção, o qual será chamado de UniPets, possibilitando um processo de adoção mais eficaz e personalizado. O objetivo é que o sistema atenda às ONGs e aos demais envolvidos na causa animal, como veterinários e os chamados cidadãos que lutam pelos direitos animais e se denominam como “protetores”, para que possam cadastrar pets disponíveis para a adoção com dados relevantes como espécie, raça, porte, idade, histórico de saúde, temperamento e localização. Além disso, espera-se também que o sistema unificado possa receber o cadastro de quaisquer pessoas interessadas em adotar, bem como suas preferências, o espaço que podem oferecer e suas respectivas experiências prévias com animais.

Este projeto acadêmico tem como foco detalhar a construção do UniPets de forma ordenada e coerente e, para tal, será adotado o Design Centrado no Usuário garantindo que todas as decisões relacionadas à interface e funcionalidades sejam guiadas pelas demandas do público-alvo analisado, a fim de identificar onde estão as maiores falhas e propor as devidas melhorias para os processos de adoção de animais de estimação. Por meio do sistema unificado de adoção, pretende-se garantir mais rapidez e combinações mais adequadas entre animais e adotantes, evitando desistências e um novo abandono desses animais futuramente. 


## 1.1. Problema

Uma dificuldade comum entre pessoas que desejam adotar um animal é encontrar um que se adeque às suas necessidades específicas. Procurar por animais de determinadas raças ou dentro de uma faixa de idade desejada pode ser um processo difícil, principalmente devido à descentralização das informações relacionadas aos animais disponíveis para adoção.

Além disso, ONGs frequentemente mantêm suas próprias bases de dados, muitas vezes em registros físicos ou sistemas isolados, contendo informações não padronizadas sobre os animais sob sua responsabilidade. Essa falta de uniformidade também dificulta a gestão de animais entre diferentes associações, especialmente quando ocorre a transferência de animais entre instituições.

A necessidade de converter dados entre diferentes organizações, que utilizam estruturas e critérios distintos de registro, pode ocasionar perda de informações e tornar os processos administrativos mais lentos. Dessa forma, a ausência de padronização e centralização das informações representa um obstáculo tanto para a gestão das instituições quanto para as pessoas interessadas em adotar animais.


## 1.2. Objetivos do trabalho

Ao realizar este trabalho, tem-se como objetivo principal desenvolver uma aplicação web que auxilie na gestão e também à promover a adoção responsável de animais, conectando de forma mais rápida e eficaz ONGs de proteção animal, médicos veterinários, simpatizantes das causas animais e também médicos veterinários em uma plataforma unificada.
A solução visa facilitar o cadastro detalhado de animais disponíveis - características físicas, histórico de saúde, registro de atendimentos, entre outros - de modo a tornar o processo de busca e compatibilidade mais eficiente.

De forma mais detalhada, pode-se dizer que o projeto tem como objetivos específicos:

- Permitir o cadastro de ONGs, com suas devidas informações de identificação, horários de funcionamento, localização e contato;
- Permitir que cada ONG cadastre e gerencie informações sobre os animais que estão sob sua tutela;
- Implementar o cadastro completo dos animais, contemplando dados sobre raça, porte, temperamento, idade estimada, histórico médico e demais informações necessárias para garantir maiores chances de compatibilidade com tutores;
- Implementar ferramentas para médicos veterinários, para que possam consultar e atualizar histórico clínico dos animais atendidos, contribuindo para a continuidade e qualidade aos cuidados de saúde do animal;
- Criar mecanismos que permitam buscar e filtrar informações, de modo que os adotantes possam localizar ONGs próximas e animais compatíveis com o seu perfil;
- Projetar interface do sistema seguindo princípios do Design Centrado no Usuário, de modo que o acesso seja agradável e intuitivo aos diferentes perfis de usuários.


## 1.3. Justificativa

O Brasil possui, hoje, grande volume de animais abandonados que estão em situação de rua. Segundo Gomes (2013, p. 20), “a OMS estima que existam 25 milhões de cães e 4 milhões de gatos abandonados” no país. Apesar de a pesquisa de Gomes datar do início da década passada, os números atualmente se mantêm estáveis, girando em torno de 30 milhões de animais abandonados, entre cães e gatos (AGÊNCIA BRASIL, 2025). Mas esses animais representam muito mais que simples números: por não terem nenhum tipo de controle de vacinação nem tratamento de doenças, eles podem se tornar vetores de patologias diversas e potenciais transmissores de zoonoses, representando perigo à saúde pública, além de poderem ocasionar outras adversidades:

> Estes animais não têm nenhum tipo de controle de vacinação e tratamento de doenças (ANDRADE, 2011), funcionando como potenciais transmissores de zoonoses como a raiva e a leishmaniose. Eles também são responsáveis pela proliferação de ectoparasitas, por agressões, acidentes de trânsito, poluição por dejetos, poluição sonora e outras perturbações (BORTOLOTI; D’AGOSTINO, 2007). Essa problemática é agravada pelo acelerado grau de reprodução de cães e gatos (BORTOLOTI; D' AGOSTINO, 2007). (GOMES, 2013, p. 20-21)

Ainda segundo a mesma autora, a maior parte dos animais que acabam entregues aos Centros de Controle de Zoonoses municipais têm, por destino, a eutanásia. Muitos deles são identificados com doenças tratáveis, mas são entregues mesmo assim, porque seus respectivos tutores alegam não terem condições financeiras de arcar com o tratamento. Isso implica na definição de “guarda responsável”, considerando que esses tutores não avaliam as muitas consequências que podem incorrer do cuidado com um animal e como, no ato da adoção, deve-se ter em mente todas elas:

Assim, a guarda responsável diz respeito a toda a responsabilidade que alguém deve assumir ao adotar um animal de estimação. O ato de adquirir um animal deve ser avaliado por todos os moradores da casa, pois é uma relação que pode durar de 15 (quinze) a 20 (vinte) anos. (SOUZA, 2014, p. 126)

O foco, aqui, no entanto, não é julgar nem obrigar pessoas que não tenham recursos financeiros a fazerem dívidas para poderem tratar seus pets. Na verdade, busca-se criar pontes e elos entre quem precisa de ajuda e quem pode ajudar. A partir da ideia de um sistema centralizado de cadastro de pessoas, instituições e animais no âmbito da adoção, pretende-se criar uma rede de conexões saudáveis, que possam se apoiar mutuamente e, em virtude de atitudes e sentimentos de altruísmo, dignidade e benevolência, ajudar a melhorar as condições mesmas de saúde pública.

As soluções para diminuir os altos índices de abandono e ajudar a resolver esse problema passam pela identificação e registro desses animais, como forma de se ter um maior controle e gestão dessas estatísticas. Trata-se, ainda, de uma questão humanitária: cuidar desses animais perpassa nossos instintos de proteção e diligência. É comovente vê-los em situação tão precária e frustrante quando se acredita não poder fazer nada a respeito.

O UniPets surge, então, como uma forma de conectar os prospectivos adotantes a pessoas e instituições que possuem pets disponíveis para adoção. Formando, então, uma rede de conexão e cuidado com animais. Cria-se, portanto, um banco de dados centralizado que visa disponibilizar perfis completos com dados únicos daquele animal - sejam suas características físicas, comportamentais, dados relativos à sua saúde e histórico de vacinas e medicamentos.

Importante ponto a ser ressaltado ainda seria o da identificação e registro do animal. Um registro de cães e gatos se apresenta como a melhor ferramenta para se conhecer, dimensionar e monitorar esses animais. Seria extremamente útil também para se conhecer e avaliar os proprietários, responsabilizando-os quando necessário, em casos de negligência, abandono ou ainda, danos a terceiros. Em resumo, a identificação e o registro, em tese, deve ser o primeiro passo para o efetivo controle dos animais em determinada cidade ou região (ARCA Brasil, 2010). (SOUZA, 2014, p. 126-127)

Ademais, a concepção da aplicação UniPets perpassa as bases do programa ProPatinhas (Programa Nacional de Proteção e Manejo Populacional Ético de Cães e Gatos) e do sistema SinPatinhas (Sistema do Cadastro Nacional de Animais Domésticos), lançados pelo Governo Federal pela Lei nº 15.046/2024, que concebem uma base de dados nacional para o registro de animais. Funcionando como um CPF animal, o SinPatinhas garante a unicidade da matrícula de cada animal e será um grande aliado na criação de um banco de dados centralizado e eficaz para o UniPets.

A aplicação aqui desenvolvida visa aproximar tais resoluções do grande público e, partindo dos princípios do Design Centrado no Usuário, atrair e suportar usuários que possam alimentar e usufruir de um banco de dados centralizado. O UniPets pretende, então, consolidar-se como uma ferramenta hábil, ética e confiável, atuando como uma facilitadora de processos de adoção responsável.



## 1.4. Público alvo

A aplicação é direcionada a três perfis de usuários e será desenvolvida pensando em atender as necessidades, conhecimentos e expectativas em relação ao sistema.

O principal foco são as ONGs de proteção animal, que constituem o perfil que será responsável por alimentar e fazer a manutenção dos dados na plataforma. Essas organizações geralmente são compostas por pessoas de diversas faixas etárias, por vezes chamados de protetores animais ou simpatizantes da causa animal. Além da diferença de idade, devem ser considerados também os diferentes níveis de escolaridade, de renda e de acesso à tecnologia. 

Outro perfil de usuários serão os médicos veterinários que possuem formação acadêmica de nível superior e, em geral, possuem boa desenvoltura e conhecimento para o uso de tecnologias. A maioria desses profissionais já está habituada a trabalhar com sistemas de gestão de clínica e prontuários eletrônicos, o que espera-se que seja um facilitador para que esses profissionais possam se adaptar ao uso da plataforma UniPets.

Por fim, apresenta-se o perfil dos potenciais adotantes. Os perfis desses usuários é o mais diversificado e numeroso da plataforma. O público pode incluir jovens, famílias e idosos, com diversos níveis de escolaridade, renda e letramento digital. Embora parte do público esteja acostumada com o uso de plataformas digitais, é importante que a aplicação permita a esses usuários e aos menos experientes, encontrar da forma mais simples possível animais compatíveis com seus desejos pessoais, estilo de vida, espaço e tempo disponíveis para os animais.

Através do sistema UniPets espera-se unir esses principais grupos através de uma plataforma que traga informações claras, objetivas e  relevantes sobre as ONGS e animais, para que sejam facilmente encontrados pelos mais diversos tipos de usuários. 

