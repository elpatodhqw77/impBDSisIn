Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8301561
Server version: 8.0.40 Source distribution

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE TABLE playoffround(
    ->     id int (16) NOT NULL,
    ->     team1id int (13) NOT NULL,
    ->     team2id int (13) NOT NULL,
    ->     StartTime date NOT NULL,
    ->     endTime date NOT NULL,
    ->     roundNum int (14) NOT NULL,
    ->     PRIMARY KEY (id, StartTime)
    -> );
Query OK, 0 rows affected, 4 warnings (0.01 sec)

mysql> CREATE TABLE HockeyGame(
    ->     id int (16) NOT NULL,
    ->     roundId int (13) NOT NULL,
    ->     startTime date NOT NULL,
    ->     endTime date NOT NULL,
    ->     description varchar(255),
    ->     team1Id int (13) NOT NULL,
    ->     team2Id int (13) NOT NULL,
    ->     PRIMARY KEY (id, startTime)
    -> );
Query OK, 0 rows affected, 4 warnings (0.02 sec)

mysql> CREATE TABLE GameScores(
    ->     id int (16) NOT NULL,
    ->     team1Score int (13) NOT NULL,
    ->     team2Score int (13) NOT NULL,
    ->     PRIMARY KEY (id)
    -> );
Query OK, 0 rows affected, 3 warnings (0.02 sec)

mysql> CREATE TABLE RoundStats(
    ->     id int (16) NOT NULL,
    ->     numShutouts int (13),
    ->     goalLeaderId int (13),
    ->     assistLeaderId int (13),
    ->     penaltyLeaderId int (13),
    ->     plusMinusLeaderId int (13),
    ->     faceoffsWonLeaderId int (13),
    ->     sogLeaderId int (13),
    ->     PRIMARY KEY (id)
    -> );
Query OK, 0 rows affected, 8 warnings (0.03 sec)

mysql> CREATE TABLE UserStatsPicks(
    ->     id int (16) NOT NULL,
    ->     roundId int (13) NOT NULL,
    ->     goalLeaderId int (13),
    ->     assistLeaderId int (13),
    ->     penaltyLeaderId int (13),
    ->     plusMinusLeaderId int (13),
    ->     faceoffsWonLeaderId int (13),
    ->     sogLeaderId int (13),
    ->     numShutouts int (13),
    ->     userId int (13) NOT NULL,
    ->     PRIMARY KEY (id)
    -> );
Query OK, 0 rows affected, 10 warnings (0.03 sec)

mysql> CREATE TABLE User(
    ->     id int (16) NOT NULL,
    ->     username varchar(50) NOT NULL,
    ->     password varchar(50) NOT NULL,
    ->     PRIMARY KEY (id)
    -> );
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> CREATE TABLE UserScorePicks(
    ->     id int (16) NOT NULL,
    ->     hockeyGameId int (13) NOT NULL,
    ->     team1Score int (13) NOT NULL,
    ->     team2Score int (13) NOT NULL,
    ->     userId int (13) NOT NULL,
    ->     PRIMARY KEY (id)
    -> );
Query OK, 0 rows affected, 5 warnings (0.03 sec)

mysql> CREATE TABLE HockeyTeam(
    ->     id int (16) NOT NULL,
    ->     name varchar(100) NOT NULL,
    ->     logo varchar(100),
    ->     PRIMARY KEY (id)
    -> );
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> CREATE TABLE HockeyTeamPlayer(
    ->     id int (16) NOT NULL,
    ->     hockeyTeamId int (13) NOT NULL,
    ->     firstName varchar(25) NOT NULL,
    ->     lastName varchar(25) NOT NULL,
    ->     jerseyNum int (13),
    ->     position varchar(30),
    ->     PRIMARY KEY (id)
    -> );
Query OK, 0 rows affected, 3 warnings (0.02 sec)

mysql> CREATE TABLE UserInfo(
    ->     id int (16) NOT NULL,
    ->     firstName varchar(25) NOT NULL,
    ->     lastName varchar(25) NOT NULL,
    ->     email varchar(25) NOT NULL,
    ->     round1Points int (13),
    ->     round2Points int (13),
    ->     round3Points int (13),
    ->     round4Points int (13),
    ->     PRIMARY KEY (id)
    -> );
Query OK, 0 rows affected, 5 warnings (0.03 sec)
mysql> show tables;
+---------------------------+
| Tables_in_owouu31$default |
+---------------------------+
| GameScores                |
| HockeyGame                |
| HockeyTeam                |
| HockeyTeamPlayer          |
| RoundStats                |
| User                      |
| UserInfo                  |
| UserScorePicks            |
| UserStatsPicks            |
| detalle_horario           |
| horario                   |
| plantilla_detalle_horario |
| playoffround              |
| usuarios                  |
+---------------------------+
14 rows in set (0.00 sec)
