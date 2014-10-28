Select clifor,nome, sum(doctos.valortotal) VALORTOTAL, count(movimento.controle) NUMCOMPRAS, min(doctos.data) PRIMCOMPRA,max(doctos.data) ULTCOMPRA, (select count(0) from crecebidas where cliente=clifor) CRECEBIDAS,  (select count(0) from creceber where cliente=clifor) CRECEBER  from doctos,movimento
where movimento.docto=doctos.documento 
Group by clifor,nome
order by 2
