Select crecebidas.cliente,clientes.nome,sum(crecebidas.valor) VALOR from crecebidas,clientes
where clientes.codigo=crecebidas.cliente and crecebidas.pagamento>=:p0 and crecebidas.pagamento<=:p1
group by crecebidas.cliente,clientes.nome
order by 3 desc

