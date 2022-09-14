1 PASSO
    ABRA O TERMINAL NAVEGUE ATE A PASTA RAIZ DO PROJETO E EXECUTAR OS SEGUINTES COMANDOS
    
        docker run -d -v $(pwd)/app/db/data:/var/lib?mysql --rm --name mysql-container mysql-image
        
        docker exec -i mysql-container -uroot -ptestemesha < app/db/script01.sql
        
        docker exec -i mysql-container -uroot -ptestemesha < app/db/script02.sql
        
        docker exec -i mysql-container -uroot -ptestemesha < app/db/script_tb_notas.sql

AO CONCLUIR A 1 ETAPA O CONTAINER DOCKER COM MY SQL ESTA RODANDO COM AS TABELAS CRIADAS

2 PASSO
    ABRA O TERMINAL NAVEGUE ATE A PASTA RAIZ DO PROJETO E EXECUTAR O SEGUINTE COMANDO
    
    docker run -it --rm -p 8888:8888 -v $(pwd)/notebooks:/home/jovyan/work jupyter/all-spark-notebook

AO CONCLUIR A ETAPA 2 O CONTAINER DOCKER COM O JUPYTER-NOTEBOOK E PYSPARK ESTARÁ EM FUNCIONAMENTO

3 PASSO
    PARA CONSTATAR QUE O IP CONFIGURADO NO JUPYTER ESTA CORRETO EXECUTE O SEGUINTE COMANDO
        
    docker inspect mysql-container
    
    E VERIFIQUE O IP DO CONTAINER

4 PASSO
    EXTRAIR O CONTEUDO DO ARQUIVO [clicando aqui](https://download.inep.gov.br/microdados/microdados_enem_2020.zip)
    DENTRO DA PASTA << /notebooks e verificar se o caminho esta igual ao informado no script

# Teste de Eng. de Dados
Critérios avaliadas:
- Docker; OK
- SQL; OK 
- Python; OK
- Organização do Código
- Documentação
- ETL
- Modelagem dos dados

### Desejáveis
- PySpark OK
- Esquema Estrela


### Steps:

1. Realizar um Fork desse projeto
2. Realizar a modelagem dimensional da base
    - A base está disponível para download [clicando aqui](https://download.inep.gov.br/microdados/microdados_enem_2020.zip).
    - Após descompactar a paste, o Arquivo com a base encontra-se no diretório microdados_enem_2020/DADOS/MICRODADOS_ENEM_2020.csv
    - A documentação necessária sobre os campos da base está disponível nos demais diretórios dentro da pasta descompactada.
3. Realizar o ETL dessa base em Python para o MySQL no container
4. Disponibilizar o link do seu repositório para posterior avaliação


### Levantar Indicadores
#### Responder às seguintes perguntas:
1. Qual a escola com a maior média de notas?
2. Qual o aluno com a maior média de notas e o valor dessa média?
3. Qual a média geral?
4. Qual o % de Ausentes?
5. Qual o número total de Inscritos?
6. Qual a média por disciplina?
7. Qual a média por Sexo?
8. Qual a média por Etnia?
