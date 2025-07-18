# Manipulação de Arquivo CLIENTE.DAT em COBOL

## Descrição

O **PROG03** é um programa em **COBOL** que acessa e processa o arquivo **CLIENTE.DAT**. Ele lê os registros de clientes e exibe as informações, como ID, nome e telefone. O programa também implementa controle de erros durante a abertura e leitura do arquivo, garantindo que o processo seja executado de maneira segura.

## Objetivo

Este projeto tem como objetivo demonstrar a leitura e a manipulação de arquivos em COBOL. O programa realiza as seguintes ações:

- Acessa e abre o arquivo **CLIENTE.DAT**.
- Lê e exibe todos os registros de clientes, que incluem ID, nome e telefone.
- Implementa controle de erros para garantir que a leitura e a gravação dos dados ocorram corretamente.
- Fecha o arquivo de maneira adequada, mantendo a integridade dos dados.

## Autor

- **Nome**: Matheus dos Santos
- **Data de Criação**: 21/03/2025

## Estrutura do Arquivo

O arquivo **CLIENTE.DAT** contém os seguintes campos para cada cliente:

- **ID**: Identificador único do cliente (4 dígitos numéricos).
- **Nome**: Nome do cliente (máximo de 20 caracteres).
- **Telefone**: Número de telefone do cliente (máximo de 11 dígitos numéricos).

## Como Funciona

### Divisões e Seções

- **IDENTIFICATION DIVISION**: Contém informações sobre o autor, empresa e o objetivo do programa.
- **ENVIRONMENT DIVISION**: Define as configurações de entrada e saída, especificando onde o arquivo será acessado.
- **DATA DIVISION**: Define a estrutura do arquivo e as variáveis utilizadas no programa.
- **PROCEDURE DIVISION**: Contém a lógica de execução do programa. Inclui as etapas de inicialização (abertura do arquivo), processamento (leitura dos registros) e finalização (fechamento do arquivo).

### Fluxo do Programa

1. O programa tenta abrir o arquivo **CLIENTE.DAT**.
2. Se o arquivo não for aberto corretamente, uma mensagem de erro será exibida.
3. Caso o arquivo seja aberto corretamente, os registros de clientes são lidos e exibidos na tela.
4. Após processar todos os registros, o programa fecha o arquivo e exibe uma mensagem final de conclusão.

## Como Executar

1. Certifique-se de que o arquivo **CLIENTE.DAT** esteja no caminho correto: `C:\cobol\SMN5\CLIENTE.DAT`.
2. Compile o programa COBOL no seu ambiente de desenvolvimento.
3. Execute o programa. Ele exibirá os registros de clientes ou uma mensagem de erro, dependendo da situação.
4. Ao final da execução, o programa exibirá "FIM DE PROGRAMA" e fechará o arquivo corretamente.

## Pré-requisitos

- **Ambiente COBOL**: Para compilar e executar o código, é necessário um compilador COBOL.
- **Caminho do Arquivo**: O arquivo **CLIENTE.DAT** deve estar no diretório especificado (`C:\cobol\SMN5\CLIENTE.DAT`), ou o caminho pode ser ajustado no código conforme necessário.

## Licença

Este projeto é de uso pessoal e educacional. Não há licença específica, mas você pode usar o código como base para aprender mais sobre COBOL e manipulação de arquivos.

