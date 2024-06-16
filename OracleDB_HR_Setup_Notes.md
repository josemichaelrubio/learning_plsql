# Setting up Oracle Database on macOS silicon & then HR Schema

Disclosure: Still working out kinks of this read Me

## 1. How to Install Oracle on an M1/M2 Mac (Finally)

<https://www.youtube.com/watch?v=uxvoMhkKUPE>

### Some useful commands and info

docker run -d --name oracle19 -e ORACLE_PWD=mypassword1 -p 1521:1521 oracle/database:19.3.0-ee

id: 12d75ab20f4443fbbe9850e81564bfb5d577a4aa149f1785b0a9670b7f945c3a

docker images

docker ps

## 2. Set up HR Schema after installation

### Current instance info

Container name: ORCLPDB1;
password = mypassword1

### Steps

Setting up HR Schema semi manually (Because for some reason HR user is missing)
        1. Open Terminal (T)
        2. T: docker exec -it oracle19 /bin/bash
        3. T: sqlplus sys as sysdba
        4. T: ALTER SESSION SET CONTAINER = ORCLPDB1;
        5. Tertminal: CREATE USER hr IDENTIFIED BY mypassword1;
        6. T: GRANT CONNECT, RESOURCE TO hr;
        7. T: @?/demo/schema/human_resources/hr_main.sql
        8. T: Copy the following the next prompts:
                a. Enter value for 1:
                        i. newpassword
                b. Enter value for 2:
                        i. users
                c. Enter value for 3:
                        i. temp
                d. Enter value for 4:
                        i. $ORACLE_HOME/demo/schema/log/

#### If hr user is locked

Replace step 4, 5, (and maybe 6) with the following:
        1. ALTER USER hr ACCOUNT UNLOCK;
        2. T: ALTER USER hr IDENTIFIED BY your_password;

### Paths to scripts

@?/demo/schema/human_resources/hr_main.sql
        • To create HR Schema
@?/demo/schema/human_resources/hr_drop.sql
        • To Delete hr schema
