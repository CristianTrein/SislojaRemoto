Select * from crecebidas
where (Select count(0) from doctos where doctos.documento=crecebidas.documento)=0
