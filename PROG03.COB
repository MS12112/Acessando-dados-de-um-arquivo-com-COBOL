
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG03.
      *======================================
      *== AUTOR: MATHEUS          EMPRESA: X
      *== OBJETIVO:
      *== DATA = 21/03/2025
      *== OBSERVAÇOES: ACESSANDO TODOS OS DADOS DE UM ARQUIVO.DAT
      *======================================

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       
      *Define o arquivo e o seu Status
       FILE-CONTROL.
           SELECT CLIENTES ASSIGN TO "C:\cobol\SMN5\CLIENTE.DAT."
           FILE STATUS IS FS-CLIENTES.

       DATA DIVISION.
       
      *Descreve a estrutura do arquivo
       FILE SECTION.
       FD CLIENTES.
       01 REG-CLIENTES.
           05 REG-ID       PIC 9(04).
           05 REG-NOME     PIC X(20).
           05 REG-TELEFONE PIC 9(11).
           
      *-----------VARIÁVEIS----------------
       
       WORKING-STORAGE              SECTION.
       01 WRK-CLIENTES.
           05 WRK-ID       PIC 9(04).
           05 WRK-NOME     PIC X(20).
           05 WRK-TELEFONE PIC 9(11).
       77 FS-CLIENTES   PIC 9(02) VALUE ZEROS.
       77 WRK-MSG-ERRO  PIC X(30) VALUE SPACES.

       PROCEDURE DIVISION.
       0001-PRINCIPAL                  SECTION.

           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
           GOBACK.

      *----- Abre o arquivo para leitura e verifica se houve erro
       0100-INICIALIZAR                SECTION.
           OPEN INPUT CLIENTES.
           IF FS-CLIENTES EQUAL 35
             MOVE "ARQUIVO NAO FOI ABERTO" TO WRK-MSG-ERRO
             PERFORM 9000-TRATA-ERRO
             GOBACK
           ELSE
             DISPLAY "ARQUIVO OK"
           END-IF.

      *----- Lê e exibe todos os registros do arquivo
       0200-PROCESSAR                  SECTION.

           READ CLIENTES
             IF FS-CLIENTES EQUAL 0
               PERFORM UNTIL FS-CLIENTES NOT EQUAL 00

                 DISPLAY "ID....  " REG-ID
                 DISPLAY "NOME..  " REG-NOME
                 DISPLAY "TELE..  " REG-TELEFONE
                 DISPLAY "-----------------------"
                 READ CLIENTES
                END-PERFORM
             ELSE
               DISPLAY "ARQUIVO VAZIO"
             END-IF.

      *----- Fecha o arquivo e finaliza o programa
       0300-FINALIZAR                  SECTION.
           DISPLAY "FIM DE PROGRAMA"
           CLOSE CLIENTES.

       9000-TRATA-ERRO.
           DISPLAY WRK-MSG-ERRO.
           GOBACK.


       END PROGRAM PROG03.
