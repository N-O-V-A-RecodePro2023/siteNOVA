CREATE DATABASE nova_database;

USE nova_database;

CREATE TABLE candidato (
    id_candidato INTEGER auto_increment PRIMARY KEY,
    nome_candidato VARCHAR (255) not null,
    cpf VARCHAR (11) unique not null,
    telefone VARCHAR (15) not null,
	email VARCHAR (255) not null,
    senha VARCHAR (10) not null,
    tipo_deficiencia VARCHAR (255) not null,
    desc_deficiencia VARCHAR (255) not null,    
    formacao_academica VARCHAR (255) not null,
	endereco VARCHAR (255) not null,
    numero VARCHAR (255) not null,
    complemento VARCHAR (255) not null,
    bairro VARCHAR (255) not null,
    cidade VARCHAR (255) not null,
	estado VARCHAR (255) not null
);

CREATE TABLE empresa (
    id_empresa INTEGER auto_increment PRIMARY KEY,
    razao_social VARCHAR (255) not null,
    nome_fantasia VARCHAR (255) not null,
    cnpj VARCHAR (14) unique not null,
    telefone VARCHAR (255) not null,    
    email VARCHAR (255) not null,
    senha VARCHAR (10) not null,    
    seguimento VARCHAR (255) not null,
    desc_seguimento VARCHAR (255) not null,
    endereco VARCHAR (255) not null,
    numero VARCHAR (255) not null,
    complemento VARCHAR (255) not null,
    bairro VARCHAR (255) not null,
    cidade VARCHAR (255) not null,
    estado VARCHAR (255) not null
);

CREATE TABLE contato (
    id_contato INTEGER auto_increment PRIMARY KEY,
    nome VARCHAR (255) not null,
    email VARCHAR (255) not null,
    assunto VARCHAR (255) not null,
    mensagem VARCHAR (255) not null
);

CREATE TABLE vaga (
    id_vaga INTEGER auto_increment PRIMARY KEY,
    cod_vaga INTEGER not null,
    nome_vaga VARCHAR (255) not null,
    desc_vaga VARCHAR (255),
    id_empresa INTEGER  
);

CREATE TABLE candidatura (
	id_candidatura INTEGER auto_increment PRIMARY KEY,
    id_vaga INTEGER ,
    id_candidato INTEGER ,
    status_candidatura VARCHAR (255)    
);