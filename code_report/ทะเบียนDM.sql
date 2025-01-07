SELECT 
t_patient.patient_hn as hn
,f_patient_prefix.patient_prefix_description as คำนำหน้า
,t_patient.patient_firstname as ชื่อ
,t_patient.patient_lastname AS นามสกุล
,t_patient_ncd.patient_ncd_number as NCD_number
,t_patient_ncd.patient_ncd_record_date_time as วันที่เริ่ม

FROM t_patient_ncd
LEFT JOIN t_patient on t_patient_ncd.t_patient_id = t_patient.t_patient_id
left join f_patient_prefix on t_patient.f_patient_prefix_id = f_patient_prefix.f_patient_prefix_id
WHERE substring(t_patient_ncd.patient_ncd_record_date_time,1,10)  Between substring('2562-01-01',1,10) and substring('2567-12-31',1,10)
and patient_ncd_number like '%DM%'
ORDER BY t_patient_ncd.patient_ncd_record_date_time asc
