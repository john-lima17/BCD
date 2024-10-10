-- criando um banco de dado
create database db_cadastro;

-- usando um banco de dados 
 use db_cadastro;
 
 -- criando uma tabela 
 create table pessoas (
 nome varchar (30),
 idade int,
 sexo char (1),
 peso float,
 altura float,
 nacionalidade varchar (20)
 );
 -- alterando a tabela pessoas 
 alter table pessoas
 add column profissao  varchar (10);
 
select * from pessoas;
 
 alter table pessoas
 add column cpf varchar(11)
 after nome;
 
alter table pessoas 
add column id_pessoas int 
first;
 
alter table pessoas 
drop column profissao;

alter table pessoas
modify column cpf int not null; 

alter table pessoas 
change column cpf rg varchar (11);

desc pessoas;

alter table pessoas
rename to alunos;

desc alunos;

drop table if exists alunos;

show tables;

create table if not exists tb_curso(
id_curso int not null auto_increment ,
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
ano year default '2024',
primary key(id_curso)
)default charset=utf8;

create table if not exists professor (
id_professor int primary key not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal (3,2),
nacionalidade varchar(20) default 'brasileira',
curso_id_curso int,
foreign key (curso_id_curso) references tb_curso(id_curso)
);

create table if not exists tb_aluno(
id_aluno int not null,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(3,2),
nacionalidade varchar(20) default 'Brasileiro'
);

alter table tb_aluno
modify column id_aluno int primary key not null auto_increment;

alter table tb_aluno
add column curso_id_curso int;

alter table tb_aluno
add foreign key (curso_id_curso)
references tb_curso(id_curso);