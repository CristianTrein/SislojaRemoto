Select * from caixa
where (Select count(0) from doctos where doctos.documento=caixa.documento)=0
