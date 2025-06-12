-- Usando o schema 'mydb'
USE `mydb`;

-- Atualizando o e-mail do usuário Ricardo Gomes
UPDATE `mydb`.`usuario`
SET `email` = 'ricardo.g.novo@example.com'
WHERE `id_usuario` = 3;

-- Alterando o e-mail da usuária Ana Martins
UPDATE `mydb`.`usuario`
SET `email` = 'a.martins.tech@example.com'
WHERE `id_usuario` = 5;

-- Alterando o e-mail do jogador Gabriel Souza
UPDATE `mydb`.`usuario`
SET `email` = 'gabriel.adc.pro@example.com'
WHERE `id_usuario` = 10;

-- Atualizando o nome no jogo da conta associada ao usuário Felipe Costa
UPDATE `mydb`.`conta_league`
SET `nome_no_jogo` = 'LipeX'
WHERE `conta_league_id_usuario` = 8;

-- Alterando o nome no jogo da conta associada ao usuário Vitor Mendes
UPDATE `mydb`.`conta_league`
SET `nome_no_jogo` = 'VM_Midlaner'
WHERE `conta_league_id_usuario` = 14;

-- Alterando o nome no jogo da conta associada ao usuário Caio Santana
UPDATE `mydb`.`conta_league`
SET `nome_no_jogo` = 'SantanaADC'
WHERE `conta_league_id_usuario` = 20;