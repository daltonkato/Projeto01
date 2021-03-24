*** Settings ***
Library     OperatingSystem 
Library     DiffLibrary
Library     Screenshot
Library     Dialogs

#Resource  Myresource.robot

*** Variables ***
${PATH}   C:\\Users\\edalgom\\Python\\RobotFramework\\Projeto01\\Myresource.robot 
${file1}   C:\\Users\\edalgom\\Python\\RobotFramework\\Projeto01\\Myresource.robot 
${file2}   C:\\Users\\edalgom\\Python\\RobotFramework\\Projeto01\\Myresource.robot 

*** Keywords ***
Primeiro Teste
    Log To Console  First Keyword executed!
    #Screenshot.Take Screenshot
    #${user} =   Get Selection From User     Select User     User1   User2
    #Execute Manual Step     ${user}

Arquivo Existe
    [Arguments]             ${file}
    File Should Exist       ${file}

Arquivo Não pode ser Vazio
    File Should Not Be Empty    ${file2}

Compara Arquivos
    Diff Files      ${file1}    ${file2}


*** Variables ***
${PATH3}   C:\\Users\\edalgom\\Python\\RobotFramework\\Projeto01\\Myresource.robot 


*** Test Cases ***
TestCase # 0001: Executa Test e escreve no console.
    Primeiro Teste

TestCase # 0002: Arquivo deve Existir.
    Arquivo Existe   C:\\Users\\edalgom\\Python\\RobotFramework\\Projeto01\\Myresource.robot

TesteCase # 0003: Arquivo nao pode ser vazio
    Arquivo Não pode ser Vazio 

TestCase # 0004: Compara Diferenca em arquivos
    Compara Arquivos 

TestCase # 0005: 
         Arquivo Existe  ${PATH3}

