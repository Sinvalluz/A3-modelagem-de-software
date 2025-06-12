USE `mydb`;

INSERT INTO `mydb`.`usuario` (`usuario_id_time`, `email`, `nome`, `senha`, `cargo`, `foto_de_perfil`, `rota`) VALUES
(NULL, 'carlosalmeida@example.com', 'Carlos Almeida', 'carlosalmeida123', 'Administrador', 'https://example.com/fotos/carlosalmeida.jpg', NULL),
(NULL, 'fernandalima@example.com', 'Fernanda Lima', 'fernandalima123', 'Administrador', 'https://example.com/fotos/fernandalima.jpg', NULL),
(NULL, 'ricardogomes@example.com', 'Ricardo Gomes', 'ricardogomes123', 'Administrador', 'https://example.com/fotos/ricardogomes.jpg', NULL),
(NULL, 'brunosilva@example.com', 'Bruno Silva', 'brunosilva123', 'Técnico', 'https://example.com/fotos/brunosilva.jpg', NULL),
(NULL, 'anamartins@example.com', 'Ana Martins', 'anamartins123', 'Técnico', 'https://example.com/fotos/anamartins.jpg', NULL),
(NULL, 'julianalopes@example.com', 'Juliana Lopes', 'julianalopes123', 'Técnico', 'https://example.com/fotos/julianalopes.jpg', NULL);

INSERT INTO `mydb`.`time` (`id_administrador`, `id_tecnico`, `nome_do_time`, `icone_time`) VALUES
(1, 4, 'Principal', 'url_time_principal' ),
(2, 5, 'Reserva', 'url_time_reserva' ),
(3, 6, 'Academy', 'url_time_academy');  

UPDATE `mydb`.`usuario` SET `usuario_id_time` = 1 WHERE `id_usuario` = 1; -- Carlos no Time Principal
UPDATE `mydb`.`usuario` SET `usuario_id_time` = 2 WHERE `id_usuario` = 2; -- Fernanda no Time Reserva
UPDATE `mydb`.`usuario` SET `usuario_id_time` = 3 WHERE `id_usuario` = 3; -- Ricardo no Time Academy
UPDATE `mydb`.`usuario` SET `usuario_id_time` = 1 WHERE `id_usuario` = 4; -- Bruno no Time Principal
UPDATE `mydb`.`usuario` SET `usuario_id_time` = 2 WHERE `id_usuario` = 5; -- Ana no Time Reserva
UPDATE `mydb`.`usuario` SET `usuario_id_time` = 3 WHERE `id_usuario` = 6; -- Juliana no Time Academy 

INSERT INTO `mydb`.`usuario` (`usuario_id_time`, `email`, `nome`, `senha`, `cargo`, `foto_de_perfil`, `rota`) VALUES
-- Jogadores do time Principal (id_time = 1)
(1, 'lucasandrade@example.com', 'Lucas Andrade', 'lucasandrade123', 'Jogador', 'https://example.com/fotos/lucasandrade.jpg', 'Top'),
(1, 'felipecosta@example.com', 'Felipe Costa', 'felipecosta123', 'Jogador', 'https://example.com/fotos/felipecosta.jpg', 'Jungle'),
(1, 'marcoslima@example.com', 'Marcos Lima', 'marcoslima123', 'Jogador', 'https://example.com/fotos/marcoslima.jpg', 'Mid'),
(1, 'gabrielsouza@example.com', 'Gabriel Souza', 'gabrielsouza123', 'Jogador', 'https://example.com/fotos/gabrielsouza.jpg', 'Adc'),
(1, 'renanrocha@example.com', 'Renan Rocha', 'renanrocha123', 'Jogador', 'https://example.com/fotos/renanrocha.jpg', 'Sup'),

-- Jogadores do time Reserva (id_time = 2)
(2, 'thiagoribeiro@example.com', 'Thiago Ribeiro', 'thiagoribeiro123', 'Jogador', 'https://example.com/fotos/thiagoribeiro.jpg', 'Top'),
(2, 'rafaeldias@example.com', 'Rafael Dias', 'rafaeldias123', 'Jogador', 'https://example.com/fotos/rafaeldias.jpg', 'Jungle'),
(2, 'vitormendes@example.com', 'Vitor Mendes', 'vitormendes123', 'Jogador', 'https://example.com/fotos/vitormendes.jpg', 'Mid'),
(2, 'danielpires@example.com', 'Daniel Pires', 'danielpires123', 'Jogador', 'https://example.com/fotos/danielpires.jpg', 'Adc'),
(2, 'henriquenogueira@example.com', 'Henrique Nogueira', 'henriquenogueira123', 'Jogador', 'https://example.com/fotos/henriquenogueira.jpg', 'Sup'),

-- Jogadores do time Academy (id_time = 3)
(3, 'pedrohenrique@example.com', 'Pedro Henrique', 'pedrohenrique123', 'Jogador', 'https://example.com/fotos/pedrohenrique.jpg', 'Top'),
(3, 'matheusfonseca@example.com', 'Matheus Fonseca', 'matheusfonseca123', 'Jogador', 'https://example.com/fotos/matheusfonseca.jpg', 'Jungle'),
(3, 'joaopaulo@example.com', 'João Paulo', 'joaopaulo123', 'Jogador', 'https://example.com/fotos/joaopaulo.jpg', 'Mid'),
(3, 'caiosantana@example.com', 'Caio Santana', 'caiosantana123', 'Jogador', 'https://example.com/fotos/caiosantana.jpg', 'Adc'),
(3, 'igormoreira@example.com', 'Igor Moreira', 'igormoreira123', 'Jogador', 'https://example.com/fotos/igormoreira.jpg', 'Sup');

INSERT INTO `campeao` (`id_campeao`, `nome`, `imagem_url`) VALUES
(1, 'Aatrox', 'Aatrox.png'),
(2, 'Ahri', 'Ahri.png'),
(3, 'Akali', 'Akali.png'),
(4, 'Yasuo', 'Yasuo.png'),
(5, 'Zed', 'Zed.png'),
(6, 'Yone', 'Yone.png'),
(7, 'Irelia', 'Irelia.png'),
(8, 'Lee Sin', 'LeeSin.png'),
(9, 'Thresh', 'Thresh.png'),
(10, 'Vayne', 'Vayne.png'),
(11, 'Jinx', 'Jinx.png'),
(12, 'Lux', 'Lux.png'),
(13, 'Garen', 'Garen.png'),
(14, 'Darius', 'Darius.png'),
(15, 'Katarina', 'Katarina.png'),
(16, 'Fizz', 'Fizz.png'),
(17, 'Ekko', 'Ekko.png'),
(18, 'Leona', 'Leona.png'),
(19, 'Nautilus', 'Nautilus.png'),
(20, 'Caitlyn', 'Caitlyn.png'),
(21, 'Ezreal', 'Ezreal.png'),
(22, 'Kai\'Sa', 'Kaisa.png'),
(23, 'Sett', 'Sett.png'),
(24, 'Jhin', 'Jhin.png'),
(25, 'Miss Fortune', 'MissFortune.png'),
(26, 'Lucian', 'Lucian.png'),
(27, 'Ashe', 'Ashe.png'),
(28, 'Master Yi', 'MasterYi.png'),
(29, 'Brand', 'Brand.png'),
(30, 'Zyra', 'Zyra.png');


INSERT INTO `mydb`.`conta_league` (`conta_league_id_usuario`, `nome_no_jogo`, `tagline`, `puuid`) VALUES
( 7, 'Luk', 'BR1', '2f3b6b04-3e61-4a9e-b71c-5cf4e7088e2a'),
( 8, 'Lipe', 'BR1', 'a2e1c50e-55fa-4cd6-bfa6-bfbbdc3a5f5e'),
( 9, 'Marquinhos', 'BR1', 'f971af34-1b91-4996-9c42-dfb0e899eebb'),
( 10, 'Gabs', 'BR1', '3c1d65d7-1350-4811-a03e-0e1c1e3f08b2'),
( 11, 'Renam', 'BR1', 'a7c3a920-4d38-4f32-ae0e-9513609b1d7b'),
( 12, 'Thigas', 'BR1', '6c5bfbf4-7463-4216-a7b9-e96d18dd8c9f'),
( 13, 'Rafa', 'BR1', '4fd9d20d-d32e-4f7b-a37e-7cf0d4b7b9fc'),
( 14, 'Vitao', 'BR1', '65a4f87a-fc4c-40f5-860c-2e2e392ac435'),
( 15, 'Dani', 'BR1', 'e1f9f9b8-2c8a-4986-b348-e1a9f801b5a7'),
( 16, 'Rique', 'BR1', '90cc1809-9c75-42cf-b617-9b30c3c1f128'),
( 17, 'Peu', 'BR1', 'e2f4d0b2-041c-4ad4-9142-2d64e75d66a5'),
( 18, 'Matheus', 'BR1', '1a1d92e3-b7c9-4b8f-8129-fbbd2d9b07c5'),
( 19, 'Jp', 'BR1', '5c1ecac2-f07c-4c96-acc2-e5b2ac52fc1a'),
( 20, 'Caivis', 'BR1', 'd2de91a4-3bbf-4262-bb9b-d87511bb1ea0'),
( 21, 'Igor', 'BR1', 'b13c3af4-c419-4fe3-9d45-0d6a2f78a1e0');


INSERT INTO `mydb`.`treino` (`treino_id_time`, `data`, `adversario`, `resultado`, `tipo_de_treino`) VALUES
(1, '2025-06-14', 'Cyber Wolves', 'Vitória', 'Scrim'),
(1, '2025-06-15', NULL, 'Derrota', 'Ranked Flex'),
(1, '2025-06-16', 'Quantum Gamers', 'Derrota', 'Scrim'),
(2, '2025-06-17', 'Shadow Specters', 'Vitória', 'Scrim'),
(2, '2025-06-18', NULL, 'Vitória', 'Ranked Flex'),
(2, '2025-06-19', NULL, 'Derrota', 'Ranked Flex'),
(3, '2025-06-20', 'Atomic Titans', 'Vitória', 'Scrim'),
(3, '2025-06-21', 'Nighthawk Esports', 'Derrota', 'Scrim'),
(3, '2025-06-22', NULL, 'Vitória', 'Ranked Flex');


INSERT INTO `mydb`.`treino_has_conta_league`
(treino_id_treino, conta_league_id_conta_league, campeao_id_campeao, abates, assistencias, mortes)
VALUES
-- Treino 1
(1, 1, 4, 5, 7, 2),
(1, 2, 8, 2, 10, 3),
(1, 3, 5, 7, 4, 4),
(1, 4, 10, 6, 6, 1),
(1, 5, 9, 1, 12, 3),

-- Treino 2
(2, 1, 6, 4, 5, 5),
(2, 2, 28, 5, 2, 6),
(2, 3, 15, 3, 3, 4),
(2, 4, 11, 7, 4, 2),
(2, 5, 18, 0, 9, 4),

-- Treino 3
(3, 1, 1, 6, 3, 2),
(3, 2, 17, 4, 5, 5),
(3, 3, 3, 8, 1, 6),
(3, 4, 20, 3, 6, 2),
(3, 5, 19, 1, 8, 3),

-- Treino 4
(4, 6, 13, 7, 4, 1),
(4, 7, 14, 6, 3, 2),
(4, 8, 16, 9, 2, 3),
(4, 9, 24, 8, 5, 2),
(4, 10, 30, 2, 9, 1),

-- Treino 5
(5, 6, 12, 4, 6, 2),
(5, 7, 21, 5, 4, 3),
(5, 8, 22, 3, 8, 2),
(5, 9, 25, 7, 2, 4),
(5, 10, 26, 6, 3, 3),

-- Treino 6
(6, 6, 27, 5, 5, 5),
(6, 7, 23, 6, 4, 2),
(6, 8, 7, 4, 6, 3),
(6, 9, 11, 3, 5, 5),
(6, 10, 9, 2, 7, 4),

-- Treino 7
(7, 11, 1, 8, 3, 2),
(7, 12, 8, 5, 6, 3),
(7, 13, 15, 7, 4, 2),
(7, 14, 24, 6, 5, 2),
(7, 15, 18, 2, 10, 1),

-- Treino 8
(8, 11, 2, 4, 7, 4),
(8, 12, 17, 3, 6, 5),
(8, 13, 5, 6, 3, 4),
(8, 14, 20, 5, 2, 3),
(8, 15, 30, 1, 8, 5),

-- Treino 9
(9, 11, 6, 7, 4, 3),
(9, 12, 16, 5, 6, 2),
(9, 13, 3, 8, 1, 3),
(9, 14, 27, 6, 3, 2),
(9, 15, 19, 2, 9, 4);

