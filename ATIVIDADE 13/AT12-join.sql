-- Criar o banco de dados
CREATE DATABASE db_faculdade;
USE db_faculdade;

-- Criar a tabela tb_professores
CREATE TABLE tb_professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    titulacao ENUM('Mestre', 'Doutor', 'Especialista') NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    data_admissao DATE,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15)
);

-- Criar a tabela tb_cursos
CREATE TABLE tb_cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(100) NOT NULL,
    area VARCHAR(50),
    carga_horaria INT, -- Em horas
    periodo ENUM('Matutino', 'Vespertino', 'Noturno') NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES tb_professores(id_professor)
);

-- Inserir dados na tabela tb_professores
INSERT INTO tb_professores (nome, titulacao, departamento, data_admissao, email, telefone) VALUES
('Carlos Souza', 'Doutor', 'Engenharia', '2015-03-20', 'carlos.souza@faculdade.edu', '123456789'),
('Maria Oliveira', 'Mestre', 'Biologia', '2018-05-18', 'maria.oliveira@faculdade.edu', '987654321'),
('João Santos', 'Especialista', 'Matemática', '2017-08-22', 'joao.santos@faculdade.edu', '112233445'),
('Ana Costa', 'Doutor', 'História', '2016-10-10', 'ana.costa@faculdade.edu', '223344556'),
('Fernando Lima', 'Mestre', 'Física', '2019-02-15', 'fernando.lima@faculdade.edu', '334455667'),
('Paula Nunes', 'Especialista', 'Química', '2020-01-12', 'paula.nunes@faculdade.edu', '445566778'),
('Rafael Martins', 'Doutor', 'Geografia', '2014-11-05', 'rafael.martins@faculdade.edu', '556677889'),
('Bianca Pereira', 'Mestre', 'Letras', '2018-07-08', 'bianca.pereira@faculdade.edu', '667788990'),
('Lucas Torres', 'Especialista', 'Computação', '2019-09-14', 'lucas.torres@faculdade.edu', '778899001'),
('Juliana Silva', 'Doutor', 'Direito', '2013-12-20', 'juliana.silva@faculdade.edu', '889900112'),
('Marcelo Mendes', 'Mestre', 'Administração', '2016-03-03', 'marcelo.mendes@faculdade.edu', '990011223'),
('Renata Gomes', 'Especialista', 'Economia', '2017-05-30', 'renata.gomes@faculdade.edu', '101112223'),
('Pedro Almeida', 'Doutor', 'Medicina', '2015-06-18', 'pedro.almeida@faculdade.edu', '111223334'),
('Carolina Xavier', 'Mestre', 'Psicologia', '2020-08-15', 'carolina.xavier@faculdade.edu', '122334445'),
('André Luiz', 'Doutor', 'Educação Física', '2012-04-01', 'andre.luiz@faculdade.edu', '133445556');

-- Inserir dados na tabela tb_cursos
INSERT INTO tb_cursos (nome_curso, area, carga_horaria, periodo, id_professor) VALUES
('Introdução à Engenharia', 'Engenharia', 60, 'Matutino', 1),
('Biologia Molecular', 'Biologia', 80, 'Noturno', 2),
('Cálculo I', 'Matemática', 90, 'Matutino', 3),
('História do Brasil', 'História', 70, 'Vespertino', 4),
('Física Quântica', 'Física', 100, 'Noturno', 5),
('Química Orgânica', 'Química', 75, 'Matutino', 6),
('Geografia Humana', 'Geografia', 80, 'Vespertino', 7),
('Literatura Brasileira', 'Letras', 65, 'Noturno', 8),
('Programação Básica', 'Computação', 100, 'Matutino', 9),
('Direito Constitucional', 'Direito', 90, 'Noturno', 10),
('Administração Financeira', 'Administração', 85, 'Vespertino', 11),
('Economia Internacional', 'Economia', 80, 'Matutino', 12),
('Anatomia Humana', 'Medicina', 120, 'Noturno', 13),
('Psicologia Social', 'Psicologia', 70, 'Vespertino', 14),
('Educação Física Aplicada', 'Educação Física', 60, 'Matutino', 15),
('Estatística', 'Matemática', 85, 'Noturno', 3),
('Botânica', 'Biologia', 70, 'Matutino', 2),
('Direito Penal', 'Direito', 90, 'Vespertino', 10),
('Geografia Física', 'Geografia', 60, 'Noturno', 7),
('Química Analítica', 'Química', 100, 'Vespertino', 6),
('Introdução à Computação', 'Computação', 90, 'Matutino', 9),
('Administração Pública', 'Administração', 80, 'Noturno', 11),
('Macroeconomia', 'Economia', 90, 'Vespertino', 12),
('História Antiga', 'História', 80, 'Matutino', 4),
('Psicologia Infantil', 'Psicologia', 75, 'Noturno', 14),
('Matemática Discreta', 'Matemática', 70, 'Vespertino', 3),
('Geografia do Brasil', 'Geografia', 60, 'Matutino', 7),
('Engenharia Civil', 'Engenharia', 120, 'Noturno', 1),
('Direito Administrativo', 'Direito', 80, 'Vespertino', 10),
('Programação Avançada', 'Computação', 100, 'Noturno', 9),
('Física Aplicada', 'Física', 85, 'Vespertino', 5),
('Administração de Projetos', 'Administração', 95, 'Matutino', 11),
('Economia Brasileira', 'Economia', 80, 'Noturno', 12),
('História Contemporânea', 'História', 85, 'Vespertino', 4),
('Educação Física Básica', 'Educação Física', 70, 'Matutino', 15),
('Direito Civil', 'Direito', 100, 'Matutino', 10),
('Literatura Inglesa', 'Letras', 65, 'Noturno', 8),
('Química Experimental', 'Química', 90, 'Matutino', 6),
('Eletromagnetismo', 'Física', 95, 'Noturno', 5),
('Engenharia Mecânica', 'Engenharia', 100, 'Vespertino', 1),
('Psicologia Clínica', 'Psicologia', 85, 'Noturno', 14),
('Matemática Aplicada', 'Matemática', 75, 'Matutino', 3),
('Fisiologia Humana', 'Medicina', 110, 'Vespertino', 13),
('Engenharia de Software', 'Computação', 100, 'Noturno', 9),
('Gestão de Pessoas', 'Administração', 85, 'Vespertino', 11),
('Bioquímica', 'Biologia', 90, 'Noturno', 2),
('História Medieval', 'História', 80, 'Matutino', 4),
('Tópicos Avançados em Física', 'Física', 95, 'Vespertino', 5),
('Estudos Literários', 'Letras', 70, 'Noturno', 8);

-- 1. Selecionar todos os professores e exibir nome e departamento.
SELECT nome, departamento
FROM tb_professores;

-- 2. Listar todos os cursos com nome e carga horária para os cursos que tenham carga horária superior a 80 horas.
SELECT nome_curso, carga_horaria
FROM tb_cursos
WHERE carga_horaria > 80;

-- 3. Exibir o nome dos cursos e o nome dos respectivos professores usando INNER JOIN.
SELECT tb_cursos.nome_curso , tb_professores.nome
FROM tb_cursos INNER JOIN tb_professores
ON tb_cursos.id_professor = tb_professores.id_professor;

-- 4. Listar todos os professores e seus respectivos cursos, incluindo professores que ainda não possuem curso atribuído (LEFT JOIN).
SELECT tb_professores.nome, tb_cursos.nome_curso
FROM tb_professores
LEFT JOIN tb_cursos 
ON tb_professores.id_professor = tb_cursos.id_professor;

-- 5. Exibir os cursos que são oferecidos no período "Noturno" ou "Vespertino".
SELECT nome_curso, periodo
FROM tb_cursos
WHERE periodo IN ('Noturno', 'Vespertino');

-- 6. Listar os professores que são "Doutores" e lecionam na área de "Direito" ou "Medicina".
SELECT nome, departamento
FROM tb_professores
WHERE titulacao = 'Doutor'
   AND departamento IN ('Direito', 'Medicina');
   
-- 7. Contar o total de cursos por período (agrupados por Matutino, Vespertino e Noturno).
SELECT periodo, COUNT(*) AS total_cursos
FROM tb_cursos
GROUP BY periodo;

-- 8. Exibir o nome e email dos professores que foram admitidos após o ano de 2015.
SELECT nome, email
FROM tb_professores
WHERE data_admissao > '2015-12-31';

-- 9. Calcular a carga horária média de todos os cursos da área de "Computação".
SELECT AVG(carga_horaria) AS media_carga_horarias
FROM tb_cursos
WHERE area = 'Computação';

-- 10. Listar o nome dos cursos, o nome dos professores e o departamento, incluindo cursos que ainda não possuem professor atribuído. Ordenar os resultados pelo nome do curso.
SELECT tb_cursos.nome_curso, tb_professores.nome AS nome_professor, tb_professores.departamento 
FROM tb_cursos
LEFT JOIN tb_professores ON tb_cursos.id_professor = tb_professores.id_professor
ORDER BY tb_cursos.nome_curso;