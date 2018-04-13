# language: pt

Funcionalidade: Fazer cadastro de usuários

Esquema do Cenario: Cadastro com sucesso de novos usuários
    Dado que o usuário está na pagina de cadastro
    Quando ele clicar em adiconar
    E inserir os dados solicitados <nome>, <sobrenome>, <email>, <data_nascimento>, <ddd>, <numero>, <empresa>, <notas>
    Então um novo usuário deve ser cadastrado com sucesso
    Exemplos:
        |nome       |sobrenome  |email              |data_nascimento    |ddd |numero        |empresa    |notas  |
        |'AAtrigo'  |'viana'    |''                 |''                 |''  |''            |''         |''     |
        |'AAAtigre' |'viana'    |'marina@viana.com' |'data_nascimento'  |'31'|'333333333'   |'empresa'  |'notas'|

Esquema do Cenario: Cadastro não deve ser cadastrado com sucesso
    Dado que o usuário está na pagina de cadastro
    Quando ele clicar em adiconar
    E inserir os dados solicitados <nome>, <sobrenome>, <email>, <data_nascimento>, <ddd>, <numero>, <empresa>, <notas>
    Então um novo usuário não deve ser cadastrado com sucesso
    Exemplos:
        |nome       |sobrenome  |email              |data_nascimento    |ddd |numero        |empresa    |notas  |
        |'Abtrigo'  |'viana'    |''                 |''                 |''  |'11111111'    |''         |''     |
        |'ACtrigo'  |'viana'    |''                 |''                 |'99'|''            |''         |''     |
        |'ADtrigo'  |'viana'    |'marina'           |''                 |''  |''            |''         |''     |
        |'ACtrigo'  |'viana'    |'marina@teste'     |''                 |''  |''            |''         |''     |
