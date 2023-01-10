   SELECT	SUM(DATEDIFF(HOUR,B.horario_inicio,B.horario_fim)) AS horas_trabalhadas
     FROM	producao.Ficha AS A
LEFT JOIN	producao.FichaProduto AS B ON B.numero_ficha = A.numero_ficha
LEFT JOIN	producao.Inspetor AS C ON C.matricula_inspetor = A.matricula_inspetor
    WHERE	A.data_inspecao = '2022-12-16'
      AND	C.nome = 'Trancoso'


   SELECT	SUM(DATEDIFF(HOUR,B.horario_inicio,B.horario_fim)) AS horas_trabalhadas
     FROM	producao.Ficha AS A
LEFT JOIN	producao.FichaProduto AS B ON B.numero_ficha = A.numero_ficha
LEFT JOIN	producao.Inspetor AS C ON C.matricula_inspetor = A.matricula_inspetor
    WHERE	A.data_inspecao BETWEEN '2022-12-01' AND '2022-12-22'
      AND	C.nome = 'Trancoso'


   SELECT	A.descricao, COUNT(1) AS total_defeitos
     FROM	producao.Avaliacao AS A
LEFT JOIN	producao.FichaProduto AS B ON B.codigo_avaliacao = A.codigo_avaliacao
LEFT JOIN	producao.Ficha AS C ON C.numero_ficha = B.numero_ficha
    WHERE	C.data_inspecao BETWEEN '2022-12-01' AND '2022-12-22'
      AND	A.codigo_avaliacao != 'OK'
 GROUP BY	A.descricao
 ORDER BY   	2 DESC


   SELECT	A.nome AS inspetores, COUNT(1) AS avaliacoes_TR
     FROM	producao.Inspetor AS A
LEFT JOIN	producao.Ficha AS B ON B.matricula_inspetor = A.matricula_inspetor
LEFT JOIN	producao.FichaProduto AS C ON C.numero_ficha = B.numero_ficha
    WHERE	C.codigo_avaliacao = 'TR'
 GROUP BY	A.nome
 ORDER BY   	2 DESC


    SELECT	B.id_produto AS produtos_recondicionados
     FROM	producao.TipoProduto AS A
LEFT JOIN	producao.Produto AS B ON B.id_tipo_produto = A.id_tipo_produto
LEFT JOIN	producao.FichaProduto AS C ON C.id_produto = B.id_produto
    WHERE	C.codigo_avaliacao = 'TR'
       OR	C.codigo_avaliacao = 'PT'
       OR	C.codigo_avaliacao = 'PE'
       OR	C.codigo_avaliacao = 'EL'
      AND	C.codigo_avaliacao = 'OK'
 GROUP BY	B.id_produto