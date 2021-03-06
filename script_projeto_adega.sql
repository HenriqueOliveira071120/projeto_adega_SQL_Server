CREATE DATABASE ADEGA
GO

USE ADEGA
GO

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(100) NOT NULL,
	EMAIL VARCHAR(100) UNIQUE NOT NULL,
	CPF BIGINT NOT NULL,
	ID_ENDERECO INT,
	TIPO_CLIENTE CHAR(2)
	)
GO


INSERT INTO CLIENTE VALUES ('NATHAN BRAGA','BRAGA@CONTATO.COM.BR',44443345699,6,'PF')
INSERT INTO CLIENTE VALUES ('HENRIQUE TORRES','TORRES@CONTATO.COM.BR',22233344455,7,'PJ')
INSERT INTO CLIENTE VALUES ('CAIO AVANTE PASSOS','AVANTE@CONTATO.COM.BR',44611125855,8,'PJ')
INSERT INTO CLIENTE VALUES ('RAFAEL ROMANOVE','ROMANOVE@CONTATO.COM.BR',89654123587,9,'PL')
INSERT INTO CLIENTE VALUES ('ANDERSON SOUZA','ANDERSON@CONTATO.COM.BR',78965412300,10,'PL')


CREATE TABLE ENDERECO_CLI(
	IDENDERECO INT PRIMARY KEY IDENTITY,
	ENDERECO_CLI VARCHAR(100) NOT NULL,
	CEP VARCHAR(8) NOT NULL,
	NUMERO INT,
	BAIRRO VARCHAR(100),
	CIDADE VARCHAR(50),
	ESTADO CHAR(2)
)
GO

INSERT INTO ENDERECO_CLI VALUES('RUA PIRACICABA', '07299303', 41,'JARDIM AMELIAS', 'PIRACICABA', 'SP')
INSERT INTO ENDERECO_CLI VALUES('RUA JUPITER', '06833040', 173,'JARDIM MAGALY', 'EMBU DAS ARTES', 'SP')
INSERT INTO ENDERECO_CLI VALUES('RUA QUATRO', '08855010', 71,'TREMEMBÉ', 'SAO PAULO', 'SP')
INSERT INTO ENDERECO_CLI VALUES('RUA DAS CASINHAS', '10102303', 552,'BLOCO 2', 'SAO PAULO', 'SP')
INSERT INTO ENDERECO_CLI VALUES('RUA PALMAS', '25987445', 9258,'JARDIM PEROBEIRAS', 'CAMPINAS', 'SP')

CREATE TABLE CONTATO_CLI(
	IDCONTATO INT PRIMARY KEY IDENTITY,
	CONTATO BIGINT NOT NULL,
	RESIDENCIAL INT,
	COMERCIAL INT,
	CELULAR INT,
	ID_CLIENTE INT
)
GO

INSERT INTO CONTATO_CLI VALUES(11955886622, 0, 0, 1, 1)
INSERT INTO CONTATO_CLI VALUES(1140028922, 1, 0, 0, 2)
INSERT INTO CONTATO_CLI VALUES(1148495266, 0, 1, 0, 3)
INSERT INTO CONTATO_CLI VALUES(1195588232, 0, 0, 1, 4)
INSERT INTO CONTATO_CLI VALUES(11255562585, 1, 0, 1, 5)


CREATE TABLE VENDA(
	IDVENDA INT PRIMARY KEY IDENTITY,
	DATA_AQUISICAO DATETIME NOT NULL,
	ID_PRODUTO INT,
	ID_CLIENTE INT
)
GO

INSERT INTO VENDA VALUES (CONVERT(DATETIME,2020-06-01),2,2)
INSERT INTO VENDA VALUES (CONVERT(DATETIME,2020-06-01),5,1)
INSERT INTO VENDA VALUES (CONVERT(DATETIME,2020-06-01),3,3)
INSERT INTO VENDA VALUES (CONVERT(DATETIME,2020-06-01),4,5)
INSERT INTO VENDA VALUES (CONVERT(DATETIME,2020-06-01),1,4)


CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY IDENTITY,
	DESCRICAO VARCHAR(100) NOT NULL,
	PRECO NUMERIC (10,2) NOT NULL,
	PESO DECIMAL (10,2),
	QUANTIDADE INT NOT NULL,
	LOTE VARCHAR(50) NOT NULL
)
GO

INSERT INTO PRODUTO VALUES ('CIROC', 7500.00,1.0,100,'1A')
INSERT INTO PRODUTO VALUES ('COCA COLA',2500.00,2.0,100,'F420')
INSERT INTO PRODUTO VALUES ('TANG UVA',200.00,50,100,'G55')
INSERT INTO PRODUTO VALUES ('SKOL',250.00,1.0,100,'S66')
INSERT INTO PRODUTO VALUES ('COROTE MARACUJA',100.00,50,100,'A8')


CREATE TABLE COMPRA(
	IDCOMPRA INT PRIMARY KEY IDENTITY,
	DATA_COMPRA DATETIME NOT NULL,
	ID_FORNECEDOR INT,
	ID_PRODUTO INT
)
GO

INSERT INTO COMPRA VALUES (CONVERT(DATETIME,2020-05-31),6,1)
INSERT INTO COMPRA VALUES (CONVERT(DATETIME,2020-05-31),7,2)
INSERT INTO COMPRA VALUES (CONVERT(DATETIME,2020-05-31),8,3)
INSERT INTO COMPRA VALUES (CONVERT(DATETIME,2020-05-31),9,4)
INSERT INTO COMPRA VALUES (CONVERT(DATETIME,2020-05-31),10,5)


CREATE TABLE FORNECEDOR(
	IDFORNECEDOR INT PRIMARY KEY IDENTITY,
	NOME_FORN VARCHAR(100) NOT NULL,
	CNPJ BIGINT NOT NULL,
	EMAIL VARCHAR(100) NOT NULL,
	ID_ENDERECO_FORN INT
)
GO


INSERT INTO FORNECEDOR VALUES ('CIROC BEBIDAS IMPORTADAS LTDA', 07738069000247,'ciroc@contato.com.br',4)
INSERT INTO FORNECEDOR VALUES ('JHONIE WALKER BEBIDAS IMPORTADAS LTDA', 04438079000158,'jhoniewalker@contato.com.br',5)
INSERT INTO FORNECEDOR VALUES ('ABSOLUT BEBIDAS IMPORTADAS LTDA', 15448069000577,'absolut@contato.com.br',6)
INSERT INTO FORNECEDOR VALUES ('JACK DANIELS BEBIDAS IMPORTADAS LTDA', 98728049000868,'jackdaniels@contato.com.br',7)
INSERT INTO FORNECEDOR VALUES ('COROTE BEBIDAS IMPORTADAS LTDA', 66726049000868,'corote@contato.com.br',8)




CREATE TABLE ENDERECO_FORN(
		IDENDERECO_FORN INT PRIMARY KEY IDENTITY,
		ENDERECO_FORN VARCHAR(100) NOT NULL,
		CEP VARCHAR(8) NOT NULL,
		NUMERO INT,
		BAIRRO VARCHAR(100),
		CIDADE VARCHAR(100),
		ESTDADO CHAR(2)
)
GO


INSERT INTO ENDERECO_FORN VALUES('RUA PURUBA','05833710',20,'CIDADE DUTRA','SP')
INSERT INTO ENDERECO_FORN VALUES('RUA TIJUANA','05822952',70,'INTERLAGOS','RIO GRANDE DO SUL','RS')
INSERT INTO ENDERECO_FORN VALUES('RUA BATISTA MALATESTA','03697895',15,'CENTRO','RIO DE JANEIRO','RJ')
INSERT INTO ENDERECO_FORN VALUES('RUA GUIMARAES','09978532',22,'JD PLANALTO','BAHIA','BA')
INSERT INTO ENDERECO_FORN VALUES('RUA AFONSO RODRIGUES','09632145',1500,'PIRAJUSSARA','TABOAO','SP')



CREATE TABLE CONTATO_FORN(
	IDCONTATO_FORN INT PRIMARY KEY IDENTITY,
	CONTATO BIGINT NOT NULL,
	COMERCIAL INT,
	CELULAR INT,
	ID_FORNECEDOR INT

)GO


INSERT INTO CONTATO_FORN VALUES(11955000555, 0, 1, 6)
INSERT INTO CONTATO_FORN VALUES(4140028922, 1, 0, 7)
INSERT INTO CONTATO_FORN VALUES(21989888855, 0, 1, 8)
INSERT INTO CONTATO_FORN VALUES(71958003232, 0, 1, 9)
INSERT INTO CONTATO_FORN VALUES(1147785211, 1, 0, 10)




ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_ENDERECO
FOREIGN KEY(ID_ENDERECO) REFERENCES ENDERECO_CLI(IDENDERECO)
GO

ALTER TABLE CONTATO_CLI ADD CONSTRAINT FK_CONTATO_CLI
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
GO

ALTER TABLE VENDA ADD CONSTRAINT FK_VENDA_CLI
FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
GO

ALTER TABLE VENDA ADD CONSTRAINT FK_VENDA_PRODUTO
FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTO(IDPRODUTO)
GO

ALTER TABLE COMPRA ADD CONSTRAINT FK_COMPRA_PRODUTO
FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTO(IDPRODUTO)
GO

ALTER TABLE COMPRA ADD CONSTRAINT FK_COMPRA_FORNECEDOR
FOREIGN KEY (ID_FORNECEDOR) REFERENCES FORNECEDOR(IDFORNECEDOR)
GO

ALTER TABLE CONTATO_FORN ADD CONSTRAINT FK_CONTATO_FORNECEDOR
FOREIGN KEY (ID_FORNECEDOR) REFERENCES FORNECEDOR(IDFORNECEDOR)
GO

ALTER TABLE FORNECEDOR ADD CONSTRAINT FK_FORNECEDOR_ENDERECO
FOREIGN KEY (ID_ENDERECO_FORN) REFERENCES ENDERECO_FORN(IDENDERECO_FORN)
GO
