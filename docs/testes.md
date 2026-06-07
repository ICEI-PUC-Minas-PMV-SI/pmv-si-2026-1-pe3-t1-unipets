# 5. PLANO DE TESTES DE SOFTWARE
   
Nesta etapa foram realizados dois tipos de avaliação: por inspeção (avaliação heurística) e por observação de sessão de uso (teste com usuários).

Material de apoio para esta etapa:

[Avaliação_Heurística.xlsx](https://github.com/user-attachments/files/16501461/Avaliacao_Heuristica.xlsx) 

[Relatório_de_Testes_com_Usuário.docx](https://github.com/user-attachments/files/16501456/Relatorio_de_Testes_com_Usuario.docx)

[Relatório_de_Testes_com_Usuário_exemplo.docx](https://github.com/user-attachments/files/16501459/Relatorio_de_Testes_com_Usuario_exemplo.docx)

# Avaliação Heurística

| Número | Título da Heurística | Descrição da Heurística | Problemas encontrados | Sugestões |
|---|---|---|---|---|
| **1** | **Visibilidade do status do sistema** | O sistema sempre deve manter os usuários informados sobre o que está acontecendo, por meio de feedback apropriado dentro de um prazo razoável. | 1) O menu ‘Criar animal’ não permite visualizar prévia da foto carregada; 2) Ainda no mesmo menu, ao finalizar o cadastro de um novo animal, a janela não se fecha ao concluir o processo, mesmo que tenha sido efetivado, o que pode levar o usuário a pensar que não deu certo e a inserir os mesmos dados novamente; 3) Em ‘Editar perfil’, ainda não é possível alterar a foto de perfil; 4) Também em ‘Editar perfil’, o sistema não retorna mensagem de sucesso ao realizar as alterações solicitadas; 5) Os menus superiores, ao serem selecionados, apresentam o respectivo nome no topo da página, mas não acusam que foram selecionados. | 1) Corrigir erro no menu ‘Criar animal’, permitindo visualização prévia da foto carregada; 2) Corrigir erro ao inserir/alterar foto de perfil; 3) Incluir mensagens de sucesso ou erro ao final de processos de cadastros e alterações; 4) Ao selecionar um menu da barra superior, manter esse menu aparentando estar selecionado em detrimento dos demais. |
| **2** | **Correspondência entre o sistema e o mundo real** | O sistema deve falar o idioma do usuário, com palavras, frases e conceitos familiares ao usuário, em vez de termos orientados ao sistema. Siga as convenções do mundo real, fazendo as informações aparecerem em uma ordem natural e lógica. | Não foram encontrados problemas no sistema neste sentido. O site se utiliza de linguagem cotidiana e corrente, sendo natural e de fácil entendimento para usuários de níveis do mais simples ao avançado. ||
| **3** | **Controle e liberdade do usuário** | Os usuários geralmente escolhem as funções do sistema por engano e precisam de uma "saída de emergência" claramente marcada para deixar o estado indesejado sem ter que passar por um diálogo prolongado. Suporte para desfazer e refazer. | 1) No menu ‘Editar perfil’, o sistema ainda não permite ao usuário a opção de excluir o próprio perfil.| 1) Inserir a opção ‘Excluir conta’ ou ‘Excluir perfil’ no menu ‘Editar perfil’.|
| **4** | **Consistência e padrões** | Os usuários não devem se perguntar se palavras, situações ou ações diferentes significam a mesma coisa. | As demais páginas do sistema apresentam padrão estético e de linguagem. Não foram identificadas inconsistências neste sentido. ||
| **5** | **Prevenção de erros** | Elimine condições propensas a erros ou verifique-as e apresente aos usuários uma opção de confirmação antes que eles se comprometam com a ação. | 1) No menu ‘Editar animal’, ao selecionar a opção de ‘Excluir animal’, o sistema não emite aviso de que a postagem está sendo excluída e não pergunta ao usuário se ele tem certeza desta exclusão. | 1) Inserir alerta de exclusão que permita ao usuário reconsiderar a decisão de excluir o cadastro antes que ela seja definitiva.|
| **6** | **Reconhecimento em vez de recordação** | Minimize a carga de memória do usuário, tornando objetos, ações e opções visíveis. O usuário não deve ter que lembrar informações de uma parte do diálogo para outra. As instruções de uso do sistema devem ser visíveis ou facilmente recuperáveis sempre que apropriado. | O sistema apresenta ícones e comandos de fácil reconhecimento por parte de usuários de todos os níveis. ||
| **7** | **Flexibilidade e eficiência de uso** | Aceleradores - invisíveis para o usuário iniciante - geralmente aceleram a interação do usuário experiente, de modo que o sistema possa atender a usuários inexperientes e experientes. Permita que os usuários adaptem ações frequentes. | Não foram identificadas ações que os usuários desejem realizar que demandem muitos cliques ou caminhos muito longos, portanto, não apresentamos atalhos que possam ser usados por usuários avançados. ||
| **8** | **Design estético e minimalista** | Os diálogos não devem conter informações irrelevantes ou raramente necessárias. Cada unidade extra de informação em um diálogo concorre com as unidades relevantes de informação e diminui sua visibilidade relativa. | No geral, o sistema é esteticamente atrativo e simples, apresentando um modelo mais minimalista. Textos longos são reservados apenas para a parte do ‘Blog’, o que mantém o site mais visualmente convidativo. ||
| **9** | **Ajude os usuários a reconhecer, diagnosticar e recuperar de erros** | As mensagens de erro devem ser expressas em linguagem simples (sem códigos), indicar com precisão o problema e sugerir construtivamente uma solução. | 1) O sistema não demanda verificação de dados no preenchimento de formulário.| 1) O sistema deve ser capaz de verificar a formatação dos dados preenchidos nos formulários de criar/editar perfil, postagem e conteúdo, este último, no caso de perfis de instituições. |
| **10** | **Ajuda e documentação** | Mesmo que seja melhor se o sistema puder ser usado sem documentação, pode ser necessário fornecer ajuda e documentação. Essas informações devem ser fáceis de pesquisar, focadas na tarefa do usuário, listar etapas concretas a serem executadas e não serem muito grandes. | 1) Os campos do formulário do menu ‘Criar animal’, num primeiro momento, aparecem como preenchidos com dados prontos, mesmo que sejam apenas exemplos sugeridos. | 1) Dados preenchidos como exemplo, devem vir precedidos por “Ex:” e serem apresentados em um cinza mais claro, indicando que o campo, na verdade, aguarda preenchimento efetivo dos respectivos dados. |

**Referência:** “10 Heurísticas de usabilidade para o design de interface do usuário” -  por Jakob Nielsen em 24 de abril de 1994 | https://www.nngroup.com/articles/ten-usability-heuristics/



# Relatórios de Testes com Usuários

**Projeto:** UniPets

**Equipe:**
- João Paulo Pimentel da Silva
- Núbia Crhistine da Paixão Oliveira
- Sérgio Barbosa Marques
- Tiago Atahualpa Hermoza Menezes
- Verônica Costa Souza

## Proposta
A proposta dos testes é verificar o entendimento e a usabilidade do projeto desenvolvido a partir das interações de um usuário representativo do público-alvo. O teste também avalia a satisfação geral do uso pelo usuário. Abaixo serão apresentados os relatórios de testes individuais feitos com diferentes perfis de usuário, sendo cada um acompanhado por um dos integrantes da equipe.



## Testes com o usuário 1

**Nome do Avaliador:** João Paulo Pimentel da Silva

**Data:** 06/06/2026

### Questões Introdutórias

**Apresente de forma geral o que é o sistema para o usuário. Pergunte: "Você já ouviu falar desse tipo de sistema?"**

> "Não."



**Apresente a tela inicial do sistema para o usuário. Pergunte: "Apenas olhando para esse sistema, que tipo de informação você acha que poderia obter dele? Por favor, seja específico".**

> "Eu acho que, através do sistema, é possível conhecer ONGs que são ligadas à adoção de animais; também acho que seja possível olhar e escolher animais para adoção e os lugares onde encontrar esses animais."



**Pergunte: "Para quem você acha que esse sistema foi desenvolvido? Por quê?" (Por exemplo: cidadão, profissionais da saúde, etc.)**

> "Acredito que o sistema foi feito para quem quer adotar um animal ou colocar um para adoção."



**Pergunte: "Quem você acha que é o responsável por esse sistema?" (Por exemplo: empresa, empreendedor, marca, etc)**

> "Provavelmente uma instituição filantrópica."



## Cenário

Você está em busca de uma plataforma centralizada que lhe permita procurar animais para adotar e/ou compartilhar animais que tenha encontrado perdidos na rua para que encontrem seus respectivos donos.


### Tarefa 1 — Cadastro no sistema

É a sua primeira vez usando o sistema, é preciso cadastrar-se. Acesse esse menu e preencha os campos para realizar seu cadastro.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Criar conta'; preencher e-mail válido e senha; completar dados pessoais; clicar em criar conta. |
| **Sucesso na execução** | ✅ **2 — Completou facilmente** |
| **Anotações / Observações** | O usuário apresentou facilidade em realizar o cadastro, porém relatou que alguns elementos da interface estavam desconfigurados. |



### Tarefa 2 — Login na plataforma

Faça login na plataforma usando o e-mail cadastrado.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Log in'; preencher os campos 'E-mail' e 'senha'; clicar em 'Log in'; acessar a página inicial da conta. |
| **Sucesso na execução** | ✅ **2 — Completou facilmente** |
| **Anotações / Observações** | O usuário realizou o login sem nenhuma dificuldade. |



### Tarefa 3 — Busca por animal para adoção

Busque por um animal que queira adotar; use os filtros da plataforma para realizar sua busca.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Animais'; buscar por termo geral como "Gato" ou "Cachorro"; filtrar um tipo de raça; filtrar a localização; filtrar por porte; filtrar a cor da pelagem. |
| **Sucesso na execução** | ✅ **2 — Completou facilmente** |
| **Anotações / Observações** | O usuário realizou a tarefa sem nenhuma complicação, porém considerou a interface dos filtros pouco atrativa. |



### Tarefa 4 — Acesso à página de uma ONG próxima

Acesse a página de uma ONG que esteja mais próxima da sua localização.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'ONGs'; filtrar por localização; acessar a página da ONG mais próxima. |
| **Sucesso na execução** | ❌ **0 — Não completou** |
| **Anotações / Observações** | O usuário não conseguiu completar a tarefa pois o sistema não estava totalmente implementado no momento. |



### Tarefa 5 — Cadastro de animal perdido

Imagine que você encontrou um animalzinho perdido e quer divulgar para encontrar os donos. Faça o cadastro desse animal para divulgá-lo na plataforma.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Clicar sobre o ícone do perfil, abrindo o menu drawer; clicar em 'Gerenciar animais'; clicar em 'Divulgar animal'; preencher os dados; clicar em 'Publicar'. |
| **Sucesso na execução** | ✅ **2 — Completou facilmente** |
| **Anotações / Observações** | O usuário conseguiu publicar o animal perdido sem problemas. |



## Questionário Final

**Qual foi a sua impressão geral do sistema?**

> "Gostei muito do visual do sistema, muito minimalista, simplificado e objetivo."



**Qual foi a sua impressão sobre as atividades propostas?**

> "Acho que todas as atividades serviram para mostrar as principais funções do site, mas acho que seria interessante ter uma atividade envolvendo fazer um comentário em um post."



**Você acha que este sistema é atual? Por quê?**

> "Sim, um site de adoção de animais nunca deixa de ser atual, e a interface é moderna."



**O que você mais gostou neste sistema?**

> "A função de cadastro de animais, pois é a tela mais visualmente agradável."



**O que você menos gostou neste sistema?**

> "O layout da página post não está muito legal, poderia ser melhor estruturado."



**Há alguma coisa que você acha que está faltando neste sistema? (Por exemplo: conteúdo, funções, etc.)**

> "Acho que seria interessante ter a opção de filtrar os animais e os posts pela região."



**Se você fosse descrever este sistema para um colega em uma sentença ou duas, o que você diria?**

> "Um site para cadastro e adoção de animais."



**Você gostaria de fazer algum comentário final ou pergunta?**

> "A tela do blog terá mais opções de filtros?" — A resposta foi: "Sim, pretendemos fazer uma subtela de filtros para o blog assim como os animais."



## Conclusões do Avaliador

O participante entrevistado é um estudante universitário de 20 anos, com experiência e familiaridade com tecnologias digitais e desenvolvimento de sistemas web.

As observações e sugestões apresentadas contribuíram para a identificação de melhorias importantes, que serão consideradas tanto na correção de problemas encontrados quanto na implementação de novas funcionalidades que poderão beneficiar os demais usuários da plataforma.

De modo geral, os resultados obtidos demonstram que o sistema atende a boa parte dos requisitos propostos, mas ainda demanda ajustes visuais e aperfeiçoamentos dos sistemas antes de sua implantação definitiva.

---

## Testes com o usuário 2

**Nome do Avaliador:** Núbia C P Oliveira

**Data:** 06/06/2026

### Questões Introdutórias

**Apresente de forma geral o que é o sistema para o usuário. Pergunte: "Você já ouviu falar desse tipo de sistema?"**

> "Sim."

*Caso sim, diga-me o que você sabe sobre.*

> "Já trabalhei com um sistema parecido. Participei do desenvolvimento de um aplicativo para celular para divulgar animais perdidos ou encontrados na região em que o usuário mora. Não tinha a parte de adoção e de ONGs, mas era parecido."



**Apresente a tela inicial do sistema para o usuário. Pergunte: "Apenas olhando para esse sistema, que tipo de informação você acha que poderia obter dele? Por favor, seja específico".**

> "Acho que informações mais detalhadas sobre animais e ONGs. Assim, acho que consigo encontrar um animal que eu queira adotar e ver em que ONG eu poderia buscar ele. Parece que também poderia divulgar que perdi meu animal e deixar um contato para outras pessoas falarem comigo ou avisar se eu achar um animal perdido na rua."



**Pergunte: "Para quem você acha que esse sistema foi desenvolvido? Por quê?" (Por exemplo: cidadão, profissionais da saúde, etc.)**

> "Acho que para pessoas que gostam de bichinhos, para quem quer adotar, saber coisas relacionadas a animais… E também para ajudar as ONGs a divulgar os animais e conseguir ajuda, então para os profissionais das ONGs."



**Pergunte: "Quem você acha que é o responsável por esse sistema?" (Por exemplo: empresa, empreendedor, marca, etc)**

> "Talvez algum grupo de pessoas que gostam de animais, alguma ONG maior que quis ajudar as outras ONGs ou uma empresa. Hoje em dia tem muita empresa que tem essas causas de animais, de sustentabilidade…"



## Cenário

Você está em busca de uma plataforma centralizada que lhe permita procurar animais para adotar e/ou compartilhar animais que tenha encontrado perdidos na rua para que encontrem seus respectivos donos.


### Tarefa 1 — Cadastro no sistema

É a sua primeira vez usando o sistema, é preciso cadastrar-se. Acesse esse menu e preencha os campos para realizar seu cadastro.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Criar conta'; preencher e-mail válido e senha; completar dados pessoais; clicar em criar conta. |
| **Sucesso na execução** | ✅ **2 — Completou facilmente** |
| **Anotações / Observações** | O usuário conseguiu concluir com facilidade o cadastro, mas apontou problemas na hora de trocar a foto de perfil e a falta de máscaras em alguns campos, o que trouxe alguns erros em campos do formulário, como CPF e Telefone. |



### Tarefa 2 — Login na plataforma

Faça login na plataforma usando o e-mail cadastrado.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Log in'; preencher os campos 'E-mail' e 'senha'; clicar em 'Log in'; acessar a página inicial da conta. |
| **Sucesso na execução** | ✅ **2 — Completou facilmente** |
| **Anotações / Observações** | Usuário concluiu com facilidade, mas apontou falta da opção "Redefinir senha". |



### Tarefa 3 — Busca por animal para adoção

Busque por um animal que queira adotar; use os filtros da plataforma para realizar sua busca.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Animais'; buscar por termo geral como "Gato" ou "Cachorro"; filtrar um tipo de raça; filtrar a localização; filtrar por porte; filtrar a cor da pelagem. |
| **Sucesso na execução** | ⚠️ **1 — Completou com dificuldade ou ajuda** |
| **Anotações / Observações** | O usuário conseguiu usar os filtros e encontrar animais, mas levou um tempo moderado para execução da tarefa. Ao fim, relatou que achou os filtros confusos e que não havia a opção de "Limpar filtros" (para realizar novas buscas, o usuário precisava ficar atualizando a página várias vezes). |



### Tarefa 4 — Acesso à página de uma ONG próxima

Acesse a página de uma ONG que esteja mais próxima da sua localização.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'ONGs'; filtrar por localização; acessar a página da ONG mais próxima. |
| **Sucesso na execução** | ❌ **0 — Não completou** |
| **Anotações / Observações** | Funcionalidade não implementada até o momento em que o teste foi realizado. |



### Tarefa 5 — Cadastro de animal perdido

Imagine que você encontrou um animal perdido e quer divulgar para encontrar os donos. Faça o cadastro desse animal para divulgá-lo na plataforma.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Clicar sobre o ícone do perfil, abrindo o menu drawer; clicar em 'Gerenciar animais'; clicar em 'Divulgar animal'; preencher os dados; clicar em 'Publicar'. |
| **Sucesso na execução** | ⚠️ **1 — Completou com dificuldade ou ajuda** |
| **Anotações / Observações** | Foi preciso auxiliar o usuário para que ele encontrasse onde publicar o animal. Além disso, ele apontou que as informações pedidas não faziam sentido, uma vez que quando alguém encontra o animal não vai ter conhecimento sobre peso, raça, castração, etc. |



## Questionário Final

**Qual foi a sua impressão geral do sistema?**

> "Achei bacana, mas como profissional da área de tecnologia, eu vejo que o sistema ainda tem muitas falhas e precisa ser lapidado."



**Qual foi a sua impressão sobre as atividades propostas?**

> "Achei bem legal… Eu acho que está dentro do que foi falado, só precisa ser refinado."



**Você acha que este sistema é atual? Por quê?**

> "Sim, o site em si está muito bonito e é uma proposta legal para quem gosta de animais, poderia ajudar muita gente, tanto os profissionais quanto as pessoas que gostam de animais."



**O que você mais gostou neste sistema?**

> "O design e a paleta de cores, ficou bem trabalhado e intuitivo, salvo algumas partes onde já apontei que acho que poderiam ter ficado mais claras, entende? Mas ficou bem agradável de navegar."



**O que você menos gostou neste sistema?**

> "Tinham algumas coisas que não estavam muito intuitivas, mas a parte que menos gostei foi de filtros, porque eu acho que ainda está muito confuso. Também não gostei de como estava a parte de animais, porque quando publiquei meu 'animal' ele foi pro meio de todos os outros. Não deveria ficar separado os de ONGs e esses perdidos? Se alguém procurar seu animal perdido no site, teria que filtrar no meio de um monte de animais diferentes e como os filtros estão confusos, seria bem difícil encontrar… Acho que foram as duas coisas que menos gostei."



**Há alguma coisa que você acha que está faltando neste sistema? (Por exemplo: conteúdo, funções, etc.)**

> "Acho que falta trabalhar melhor no site como um todo e trabalhar em alguns detalhes. Talvez faltou tempo para um desenvolvimento mais detalhado e para mais testes… O login funciona, mas não tem opção para redefinir senha. Os filtros estão lá e aparentemente funcionam, mas não estão intuitivos, estão muito confusos. E também acho que poderia melhorar e separar o que vem de ONGs e usuários comuns."



**Se você fosse descrever este sistema para um colega em uma sentença ou duas, o que você diria?**

> "UniPets é um site onde as ONGs podem divulgar os animais e as pessoas interessadas em adotar podem ver os animais e saber onde encontrá-los."



**Você gostaria de fazer algum comentário final ou pergunta?**

> "Gostei muito da ideia e de como o site está, pelo pouco tempo de desenvolvimento que foi proposto. Acho que com mais tempo e refinamento ficaria bem bacana!"



## Conclusões do Avaliador

O entrevistado é um jovem de 28 anos, residente em Belo Horizonte e trabalha como Engenheiro de Software Sênior, portanto, possui familiaridade com tecnologia e fez apontamentos técnicos sobre o sistema e também pensou na experiência do usuário.

Os apontamentos feitos por ele foram tanto comentários mais voltados para funcionalidades/partes técnicas, quanto para experiência do usuário. De acordo com ele, o site poderia passar por uma "lapidação" para implementar algumas funcionalidades que ainda não estão disponíveis e também para corrigir algumas que não são tão intuitivas.

A experiência de ter um profissional da área testando e apontando acertos e falhas pode contribuir muito para o desenvolvimento do sistema proposto, pois além do olhar comum que um usuário jovem teria, este usuário em específico pode colaborar também com sua visão como profissional da área.

---


## Testes com o usuário 4

**Nome do Avaliador:** Tiago Atahualpa Hermoza Menezes 

**Data:** 06/06/2026

### Questões Introdutórias

**Apresente de forma geral o que é o sistema para o usuário. Pergunte: "Você já ouviu falar desse tipo de sistema?"**

> "Não."



**Apresente a tela inicial do sistema para o usuário. Pergunte: "Apenas olhando para esse sistema, que tipo de informação você acha que poderia obter dele? Por favor, seja específico".**

> “A informação que obtenho é uma que a página pertence a uma ONG que tem parceria com outras ONGs, para resgatar e colocar animais para adoção. Uma página que faz intermediação do resgate de animais até sua acolhida para a adoção.” 



**Pergunte: "Para quem você acha que esse sistema foi desenvolvido? Por quê?" (Por exemplo: cidadão, profissionais da saúde, etc.)**

> “Este site me parece que foi desenvolvido para instituições que se ocupam com o bem-estar de animais vítimas de descaso e abandono. Essas instituições podem ser filantrópicas, ONGs, clínicas veterinárias que acolhem, cuidam e protegem animais em situações de vulnerabilidade, abandono e violência.”



**Pergunte: "Quem você acha que é o responsável por esse sistema?" (Por exemplo: empresa, empreendedor, marca, etc)**

> “Acho que esse tipo de sistema é parceria público-privada, mas quem se responsabiliza é instituições filantrópicas sem fins lucrativos que promovem cuidado com o animal." 


## Cenário

Você está em busca de uma plataforma centralizada que lhe permita procurar animais para adotar e/ou compartilhar animais que tenha encontrado perdidos na rua para que encontrem seus respectivos donos.


### Tarefa 1 — Cadastro no sistema

É a sua primeira vez usando o sistema, é preciso cadastrar-se. Acesse esse menu e preencha os campos para realizar seu cadastro.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Criar conta'; preencher e-mail válido e senha; completar dados pessoais; clicar em criar conta. |
| **Sucesso na execução** | ✅ **1 — Completou com dificuldade ou ajuda** |
| **Anotações / Observações** | A usuária na página de acesso ao site, teve dificuldades, porque ficou confuso a questão de login e cadastro. Poucas informações para poder diferenciar essas duas páginas. Poderia ter algo que confirmasse que realmente é um cadastro como por exemplo: Confirmar senha e Email criado. A página de criar perfil estabelece um limite menor em relação aos números e pontuação do CPF. |



### Tarefa 2 — Login na plataforma

Faça login na plataforma usando o e-mail cadastrado.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Log in'; preencher os campos 'E-mail' e 'senha'; clicar em 'Log in'; acessar a página inicial da conta. |
| **Sucesso na execução** | ✅ **2 — Completou facilmente** |
| **Anotações / Observações** | A usuária efetuou o login na plataforma sem dificuldades. |



### Tarefa 3 — Busca por animal para adoção

Busque por um animal que queira adotar; use os filtros da plataforma para realizar sua busca.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Animais'; buscar por termo geral como "Gato" ou "Cachorro"; filtrar um tipo de raça; filtrar a localização; filtrar por porte; filtrar a cor da pelagem. |
| **Sucesso na execução** | ✅ **1 — Completou com dificuldade ou ajuda** |
| **Anotações / Observações** | A usuária teve dificuldade para encontrar o filtro de busca do animal para adoção. Não teve clareza em relação a identificar onde está a opção de Filtro.  |



### Tarefa 4 — Acesso à página de uma ONG próxima

Acesse a página de uma ONG que esteja mais próxima da sua localização.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'ONGs'; filtrar por localização; acessar a página da ONG mais próxima. |
| **Sucesso na execução** | ❌ **0 — Não completou** |
| **Anotações / Observações** | Não foi possível completar a tarefa, pois não está acessível o link para a página das ONGs. |



### Tarefa 5 — Cadastro de animal perdido

Imagine que você encontrou um animalzinho perdido e quer divulgar para encontrar os donos. Faça o cadastro desse animal para divulgá-lo na plataforma.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Clicar sobre o ícone do perfil, abrindo o menu drawer; clicar em 'Gerenciar animais'; clicar em 'Divulgar animal'; preencher os dados; clicar em 'Publicar'. |
| **Sucesso na execução** | ✅ **2 — Completou facilmente** |
| **Anotações / Observações** | A usuária conseguiu realizar a tarefa facilmente. |



## Questionário Final

**Qual foi a sua impressão geral do sistema?**

> "Tive uma boa impressão do sistema em geral, mas falta clareza e organização de detalhes que faça ser mais interativo e direto.” 



**Qual foi a sua impressão sobre as atividades propostas?**

> “As atividades propostas que estão boas, mas precisam de correções em alguns detalhes.” 



**Você acha que este sistema é atual? Por quê?**

> “Sim, pois agora o animal é visto com mais atenção pelos órgãos privado e público, que garantem aos animais proteção.” 



**O que você mais gostou neste sistema?**

> “Gostei da proposta e da possibilidade de apoiar e conhecer uma questão tão necessária e essencial para o bem-estar do animal e, de uma certa forma, da sociedade como um todo.” 



**O que você menos gostou neste sistema?**

> “Algumas partes merecem atenção para serem melhoradas para que o usuário que acesse o site possa não ter dúvidas para navegar e que se sinta mais atraído.” 



**Há alguma coisa que você acha que está faltando neste sistema? (Por exemplo: conteúdo, funções, etc.)**

> “Acredito que falta localização das ONGs ou empresas parceiras utilizando Google Maps, onde o usuário que queiram adotar usando as informações da página saiba mais detalhes da distância.” 



**Se você fosse descrever este sistema para um colega em uma sentença ou duas, o que você diria?**

> "“Este site é um canal que permite adoções e divulgações de animais que precisam de abrigo.” 



**Você gostaria de fazer algum comentário final ou pergunta?**

> “Como o site vai garantir que os cuidados com o animal serão realizados após a adoção? Como será avaliado a pessoa interessada para adotar? Se a pessoa quiser devolver o animal por não adaptação e entrar em contato com o site, qual será a posição e ação do site e das empresas parceiras? Enfim, esse tipo de site é importante para que menos animais vivam em situações de vulnerabilidade.” 



## Conclusões do Avaliador

O teste com o usuário demonstrou que o sistema da UniPets está bem estruturado e atende a proposta do projeto. A interação da participante com a interface em alguns detalhes, teve dificuldades. Mostrou que o sistema ainda precisa ajustes visuais para facilitar uma melhor interação aos usuários. De modo geral foi uma avaliação positiva. 

---

## Testes com o usuário 5

**Nome do Avaliador:** Verônica Costa Souza

**Data:** 06/06/2026



### Questões Introdutórias

**Apresente de forma geral o que é o sistema para o usuário. Pergunte: "Você já ouviu falar desse tipo de sistema?"**

> Não.



**Apresente a tela inicial do sistema para o usuário. Pergunte: "Apenas olhando para esse sistema, que tipo de informação você acha que poderia obter dele? Por favor, seja específico".**

> "Eu acho que, através do sistema, é possível conhecer ONGs que são ligadas à adoção de animais; também acho que seja possível olhar e escolher animais para adoção e os lugares onde encontrar esses animais."



**Pergunte: "Para quem você acha que esse sistema foi desenvolvido? Por quê?" (Por exemplo: cidadão, profissionais da saúde, etc.)**

> "Acredito que foi desenvolvido para todo mundo, qualquer pessoa que deseje ter um animal em casa, uma companhia."



**Pergunte: "Quem você acha que é o responsável por esse sistema?" (Por exemplo: empresa, empreendedor, marca, etc)**

> "Acho que uma empresa privada seria a responsável pelo sistema."



## Cenário

Você está em busca de uma plataforma centralizada que lhe permita procurar animais para adotar e/ou compartilhar animais que tenha encontrado perdidos na rua para que encontrem seus respectivos donos.


### Tarefa 1 — Cadastro no sistema

É a sua primeira vez usando o sistema, é preciso cadastrar-se. Acesse esse menu e preencha os campos para realizar seu cadastro.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Criar conta'; preencher e-mail válido e senha; completar dados pessoais; clicar em criar conta. |
| **Sucesso na execução** | ✅ **2 — Completou facilmente** |
| **Anotações / Observações** | A usuária apresentou facilidade ao desempenhar a tarefa. Encontrou o caminho facilmente e soube preencher os campos sem dificuldade. No entanto, alguns campos do formulário apresentaram erro de formatação, como: o campo 'CPF' apresentou número de caracteres menor que o padrão, e o campo 'E-mail para contato' manteve o primeiro caractere maiúsculo mesmo sendo digitado como minúsculo. |



### Tarefa 2 — Login na plataforma

Faça login na plataforma usando o e-mail cadastrado.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Log in'; preencher os campos 'E-mail' e 'senha'; clicar em 'Log in'; acessar página inicial da conta. |
| **Sucesso na execução** | ✅ **2 — Completou facilmente** |
| **Anotações / Observações** | A usuária efetuou o login na plataforma sem dificuldades. |



### Tarefa 3 — Busca por animal para adoção

Busque por um animal que queira adotar; use os filtros da plataforma para realizar sua busca.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'Animais'; buscar por termo geral como "Gato" ou "Cachorro"; filtrar um tipo de raça; filtrar a localização; filtrar por porte; filtrar a cor da pelagem. |
| **Sucesso na execução** | ⚠️ **1 — Completou com dificuldade ou ajuda** |
| **Anotações / Observações** | A usuária optou por explorar as postagens que estavam disponíveis na aplicação, se limitando a explorar o conteúdo sugerido, sem aplicar filtros. |



### Tarefa 4 — Acesso à página de uma ONG próxima

Acesse a página de uma ONG que esteja mais próxima da sua localização.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Abrir o menu 'ONGs'; filtrar por localização; acessar a página da ONG mais próxima. |
| **Sucesso na execução** | ❌ **0 — Não completou** |
| **Anotações / Observações** | Não foi possível à usuária buscar ONG pela proximidade, uma vez que a funcionalidade não foi efetivamente implementada. |



### Tarefa 5 — Cadastro de animal perdido

Imagine que você encontrou um animalzinho perdido e quer divulgar para encontrar os donos. Faça o cadastro desse animal para divulgá-lo na plataforma.

| Campo | Detalhes |
|---|---|
| **Caminho(s)** | Clicar sobre o ícone do perfil, abrindo o menu drawer; clicar em 'Gerenciar animais'; clicar em 'Divulgar animal'; preencher os dados; clicar em 'Publicar'. |
| **Sucesso na execução** | ⚠️ **1 — Completou com dificuldade ou ajuda** |
| **Anotações / Observações** | Foi preciso auxiliar a usuária para que ela encontrasse o menu de 'Gerenciar animais', apontando que o caminho talvez tenha ficado pouco intuitivo para o usuário médio. |



## Questionário Final

**Qual foi a sua impressão geral do sistema?**

> "Achei a proposta muito legal! Acho que precisa acertar alguns detalhes nas funcionalidades, como a questão da localização para saber a proximidade, mas, no geral, muito boa!"



**Qual foi a sua impressão sobre as atividades propostas?**

> "Acho que entrega bem o que foi proposto e tem tudo para alavancar quando esses defeitinhos forem corrigidos."



**Você acha que este sistema é atual? Por quê?**

> "Acho que sim. O tema 'pets' está muito em alta e o sistema traz uma proposta muito útil de aproximar quem quer um animalzinho de companhia e as instituições ou pessoas que têm esses bichinhos para doar."



**O que você mais gostou neste sistema?**

> "Gostei muito de ficar navegando pelos posts de animais disponíveis! Deu vontade de levar alguns pra casa!"



**O que você menos gostou neste sistema?**

> "O conteúdo ainda está um pouco limitado. Mas, como foi comentado que o sistema é proposto para ser alimentado por usuários – ONGs produzindo conteúdo, postagens de usuários –, imagino que a tendência é ter mais conteúdo se for lançado."



**Há alguma coisa que você acha que está faltando neste sistema? (Por exemplo: conteúdo, funções, etc.)**

> "Acho que o principal mesmo vai ser implementar a função de localização, porque pode acontecer de desencontrar – por exemplo, talvez eu tenha interesse em adotar um gatinho, mas a ONG que está doando para adoção é lá do norte de Minas, que fica longe daqui. Seria um empecilho grande para poder adotar."


**Se você fosse descrever este sistema para um colega em uma sentença ou duas, o que você diria?**

> "É um site para adoção de animais e também serve para postagem de animais que foram perdidos ou encontrados."



**Você gostaria de fazer algum comentário final ou pergunta?**

> "O blog seria alimentado apenas pelas ONGs? Ou usuários comuns vão poder criar conteúdo também?" – No caso, respondemos que as postagens serão feitas apenas por ONGs e instituições cadastradas como tal.



## Conclusões do Avaliador

A usuária entrevistada é jovem, universitária e possui familiaridade com sistemas digitais de modo geral, sendo usuária ativa de internet. Seu perfil de usuária adere bem à condição de facilidade apresentada para navegação pelas funcionalidades do site apresentado.

Os comentários apontados foram pertinentes ao desenvolvimento do sistema e serão considerados na correção de defeitos apresentados e na aplicação de funcionalidades que serão de grande utilidade também para outros usuários do UniPets.

No geral, concordamos que o sistema precisa de mais algumas melhorias para ser efetivamente implementado. Os testes com usuários são de grande valia no auxílio à parte criativa, com suas sugestões de funcionalidade que podem não ter sido consideradas a princípio pela equipe de desenvolvimento, e são, antes de mais nada, o "termômetro" ideal para aferir o grau de aplicabilidade em que o sistema se encontra, norteando a nós, desenvolvedores, no alinhamento da equipe com o que será entregue como produto final.


