Select clifor,nome, sum(doctos.valortotal) VALORTOTAL, count(movimento.controle) NUMCOMPRAS, min(doctos.data) PRIMCOMPRA,max(doctos.data) ULTCOMPRA   from doctos,movimento
where movimento.docto=doctos.documento 
Group by clifor,nome
order by 2
