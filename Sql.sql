create schema teste;
use teste;
drop schema teste;
drop table saldo;


create table usuario(
id INT auto_increment primary key,
cpf varchar(11) null unique key,
nomeUser varchar(15) not null unique key,
numTel varchar(9) not null,
idade int null
);

create table saldo(
id int not null, 
foreign key (id) references usuario(id),
saldo Int not null
);

insert into usuario(cpf, nomeUser, numTel, idade) Values 
('12345678901', 'Paz', '912345678', 25),
('98765432100', 'ReiAgachamento', '998761234', 31),
('11122233344', 'AdoraFemboy', '987654321', 19),
('55566677788', 'Sombra', '934567890', NULL),
('99988877766', 'NazunaFã69', '945612378', 40),
('12312312312', 'Luana', '956789012', 22),
('45645645645', 'Peakyblinder', '923456789', 28),
('78978978978', 'CabeloLambido', '978123456', NULL),
('32132132132', 'SuperCell', '932198765', 35),
('65465465465', 'JOJOPART7ANIM', '901234567', 30);
select * from usuario 