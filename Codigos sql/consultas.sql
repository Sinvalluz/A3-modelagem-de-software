-- Consultar uma unica tabela

-- Busca todos os usuários da tabela usuario
select * from `mydb`.`usuario`;

-- Retorna somente o nome, email e rota dos usuários que tem o cargo jogador
SELECT nome , email , rota FROM `mydb`.`usuario` WHERE cargo = 'Jogador';

-- 	Consulta utilizando junção entre múltiplas tabelas (3 pontos)
-- Listar o desempenho dos jogadores do time "Principal" no primeiro treino registrado, combinando informações das tabelas usuario, time, campeao, conta_league, treino e treino_has_conta_league.
SELECT
  t.nome_do_time AS 'Time',
  tr.data AS 'Data do Treino',
  u.nome AS 'Nome do Jogador',
  c.nome AS 'Campeão',
  thcl.abates AS 'Abates',
  thcl.mortes AS 'Mortes',
  thcl.assistencias AS 'Assistências'
FROM `mydb`.`treino_has_conta_league` AS thcl
JOIN `mydb`.`conta_league` AS cl
  ON thcl.conta_league_id_conta_league = cl.id_conta_league
JOIN `mydb`.`usuario` AS u
  ON cl.conta_league_id_usuario = u.id_usuario
JOIN `mydb`.`time` AS t
  ON u.usuario_id_time = t.id_time
JOIN `mydb`.`campeao` AS c
  ON thcl.campeao_id_campeao = c.id_campeao
JOIN `mydb`.`treino` AS tr
  ON thcl.treino_id_treino = tr.id_treino
WHERE
  tr.id_treino = 1;
  
  -- Contagem de registros utilizando agrupamento (3 pontos)
  -- Gera um resumo do número de vitórias e derrotas para cada time.
  SELECT
  t.nome_do_time AS 'Time',
  tr.resultado AS 'Resultado',
  COUNT(tr.id_treino) AS 'Quantidade'
FROM `mydb`.`treino` AS tr
JOIN `mydb`.`time` AS t
  ON tr.treino_id_time = t.id_time
GROUP BY
  t.nome_do_time,
  tr.resultado
ORDER BY
  t.nome_do_time,
  tr.resultado;