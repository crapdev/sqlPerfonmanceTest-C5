-- Query 1
select te.full_name, count(*) as 'Cantidad de órdenes atendidas por técnico'
from riwi_orders ord
join riwi_technicians te on ord.id_technician = te.id
group by te.full_name;


-- Query 2
select c.name, count(*) as 'servicios realizados por ciudad'
from riwi_orders ord
join riwi_cities c on ord.id_city = c.id
group by c.name;


-- Query 3
select st.name, count(*) as 'servicios realizados por tipo de servicio'
from riwi_orders ord
join riwi_servicetypes st on ord.id_servicetype = st.id
group by st.name
order by count(*) desc;


-- Query 4
select eq.name, count(*) as 'cantidad de mantenimientos por equipo'
from riwi_orders ord
join riwi_equipments eq on ord.id_equipments = eq.id
group by eq.name
order by count(*) desc;

-- Query 5
select c.name, count(*) as 'número de órdenes de servicio por cliente'
from riwi_orders ord
join riwi_clients c on ord.id_client = c.id
group by c.name
order by count(*) desc;


-- Query 6
select bc.name, count(*) as 'Cantidad de órdenes gestionadas por sede'
from riwi_orders ord
join riwi_branches bc on ord.id_branch = bc.id
group by bc.name
order by count(*) desc;