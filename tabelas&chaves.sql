create database dbvolufind;

use dbvolufind;

create table usuario (
usuarioid int(5) not null primary key auto_increment,
login varchar(15) default null,
senha varchar(15) default null,
pessoaFisicaid int(5) default null,
pessoaJuridicaid int(5) default null
);

create table pessoaJuridica (
pessoaJuridicaid int(5) not null primary key auto_increment,
nomerep varchar(20) default null,
email varchar(25) default null,
endereco varchar(50) default null,
senha int(15) default null,
proposito varchar(50) default null,
razaosocial varchar(25) default null,
cpnj int(25) default null,
descricao varchar(100) default null,
cep int(10) default null,
contato int(15) default null
);

create table pessoaFisica (
pessoaFisicaid int(5) not null primary key auto_increment,
nome varchar(20) default null,
email varchar(25) default null,
senha int(15) default null,
cep int(15) default null,
cpf int(15) default null,
contato int(15) default null,
interesse varchar(50) default null,
datansc varchar(15) default null
);

create table evento (
eventoid int(5) not null primary key auto_increment,
nome varchar(20) default null,
descricao varchar(100) default null,
qtdpessoas int(10) default null,
localidade varchar(30) default null
);

alter table usuario
add foreign key (pessoaFisicaid) references pessoaFisica (pessoaFisicaid);

alter table usuario 
add foreign key (pessoaJuridicaid) references pessoaJuridica(pessoaJuridicaid);


drop database dbvolufind;