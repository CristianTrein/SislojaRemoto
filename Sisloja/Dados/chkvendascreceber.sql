Select * from creceber
where (Select count(0) from doctos where doctos.documento=creceber.documento)=0
