SELECT *
FROM t_visit
WHERE t_visit.f_visit_status_id <> '4'
--AND f_visit_service_type_id = '5'
and f_visit_type_id = '0'
and SUBSTRING(t_visit.visit_begin_visit_time,1,10) between substring('2567-12-01',1,10) and substring('2567-12-31',1,10)