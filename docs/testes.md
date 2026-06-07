# 5. PLANO DE TESTES DE SOFTWARE
   
Nesta etapa devem ser realizados dois tipos de avaliação: por observação de sessão de uso (teste com usuários) e por inspeção (avaliação heurística, realizada pelos especialistas em usabilidade). Foram disponibilizados em "Material de Apoio" modelos para o registro dos testes que deverão ser realizados da seguinte maneira:
•	Na avaliação heurística, cada integrante do grupo deverá preencher a planilha correspondente ao teste (arquivo Avaliação_Heurística.xlsx). Ao final, os resultados deverão ser compilados em arquivo único de mesmo formato.
•	Na avaliação por observação de sessão de uso, deverão ser definidas tarefas em quantidade igual ao número de integrantes do grupo (ex.: grupo com 5 integrantes, 5 tarefas) e documentadas no relatório de testes com usuário (arquivo Relatório_de_Testes_com_Usuário.docx). Cada integrante do grupo deverá realizar o teste com um usuário distinto (ex.: grupo com 5 integrantes, 5 usuários deverão ser escolhidos, um por cada membro, para a realização dos testes).

Ao final, os relatórios gerados por cada membro deverão ser disponibilizados aqui, juntamente com a planilha consolidada da avaliação heurística.

Material de apoio para esta etapa:

[Avaliação_Heurística.xlsx](https://github.com/user-attachments/files/16501461/Avaliacao_Heuristica.xlsx) 

[Relatório_de_Testes_com_Usuário.docx](https://github.com/user-attachments/files/16501456/Relatorio_de_Testes_com_Usuario.docx)

[Relatório_de_Testes_com_Usuário_exemplo.docx](https://github.com/user-attachments/files/16501459/Relatorio_de_Testes_com_Usuario_exemplo.docx)

# Relatório de Teste com Usuário

**Projeto:** UniPets

**Equipe:**
- João Paulo Pimentel da Silva
- Núbia Crhistine da Paixão Oliveira
- Sérgio Barbosa Marques
- Tiago Atahualpa Hermoza Menezes
- Verônica Costa Souza

## Proposta
A proposta dos testes é verificar o entendimento e a usabilidade do projeto desenvolvido a partir das interações de um usuário representativo do público-alvo. O teste também avalia a satisfação geral do uso pelo usuário. Abaixo serão apresentados os relatórios de testes individuais feitos com diferentes perfis de usuário, sendo cada um acompanhado por um dos integrantes da equipe.

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


