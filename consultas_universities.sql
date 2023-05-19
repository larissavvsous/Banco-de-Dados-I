/* QUESTÃO 6 DA PROVA 19/05/2023 */
SHOW DATABASES;
use universities;
show tables;

/* a) Usando funções de agregação, obter o número total de países da tabela “country”: */
SELECT COUNT(*) AS total_paises FROM country;

/* b) Usando as consultas básicas em SQL, obter o nome dos sistemas da tabela “ranking_system”: */
DESCRIBE ranking_system;
SELECT system_name FROM ranking_system;


/* c) Quantas universidades fazem parte do BD disponibilizado? Usar funções de agregação: */
SELECT COUNT(*) AS total_universidades FROM university;

/* d) Obter a média da coluna “student_staff_ratio” que faz parte da tabela “university_year”: */
SELECT AVG(student_staff_ratio) AS media_ssr FROM university_year;