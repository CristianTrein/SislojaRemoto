Select clifor,nome, sum(doctos.valortotal) VALORTOTAL, count(movimento.controle) NUMCOMPRAS, min(doctos.data) PRIMCOMPRA,max(doctos.data) ULTCOMPRA, sum(crecebidas.controle) PAGAS,sum(creceber.controle) APAGAR  from doctos,movimento,crecebidas,creceber
where movimento.docto=doctos.documento and crecebidas.cliente=doctos.clifor and creceber.cliente=doctos.clifor
Group by clifor,nome
order by 2
