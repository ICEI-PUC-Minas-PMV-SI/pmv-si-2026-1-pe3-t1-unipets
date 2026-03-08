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

Descreva a importância ou a motivação para trabalhar com esta aplicação que você escolheu. Indique as razões pelas quais você escolheu seus objetivos específicos ou as razões para aprofundar em certos aspectos do software.

## 1.4. Público alvo

A aplicação é direcionada a três perfis de usuários e será desenvolvida pensando em atender as necessidades, conhecimentos e expectativas em relação ao sistema.

O principal foco são as ONGs de proteção animal, que constituem o perfil que será responsável por alimentar e fazer a manutenção dos dados na plataforma. Essas organizações geralmente são compostas por pessoas de diversas faixas etárias, por vezes chamados de protetores animais ou simpatizantes da causa animal. Além da diferença de idade, devem ser considerados também os diferentes níveis de escolaridade, de renda e de acesso à tecnologia. 

Outro perfil de usuários serão os médicos veterinários que possuem formação acadêmica de nível superior e, em geral, possuem boa desenvoltura e conhecimento para o uso de tecnologias. A maioria desses profissionais já está habituada a trabalhar com sistemas de gestão de clínica e prontuários eletrônicos, o que espera-se que seja um facilitador para que esses profissionais possam se adaptar ao uso da plataforma UniPets.

Por fim, apresenta-se o perfil dos potenciais adotantes. Os perfis desses usuários é o mais diversificado e numeroso da plataforma. O público pode incluir jovens, famílias e idosos, com diversos níveis de escolaridade, renda e letramento digital. Embora parte do público esteja acostumada com o uso de plataformas digitais, é importante que a aplicação permita a esses usuários e aos menos experientes, encontrar da forma mais simples possível animais compatíveis com seus desejos pessoais, estilo de vida, espaço e tempo disponíveis para os animais.

Através do sistema UniPets espera-se unir esses principais grupos através de uma plataforma que traga informações claras, objetivas e  relevantes sobre as ONGS e animais, para que sejam facilmente encontrados pelos mais diversos tipos de usuários. 

