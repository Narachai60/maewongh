SELECT 
    --t_visit.visit_begin_visit_time AS visit_date,
    t_visit.visit_hn,
    f_patient_prefix.patient_prefix_description AS คำนำหน้า,
    t_patient.patient_firstname AS ชื่อ,
    t_patient.patient_lastname AS นามสกุล,
    MAX(CASE WHEN t_diag_icd10.diag_icd10_number LIKE '%C22%' THEN t_diag_icd10.diag_icd10_number ELSE '' END) AS C22,
    MAX(CASE WHEN t_diag_icd10.diag_icd10_number LIKE '%C23%' THEN t_diag_icd10.diag_icd10_number ELSE '' END) AS C23,
    MAX(CASE WHEN t_diag_icd10.diag_icd10_number LIKE '%C25%' THEN t_diag_icd10.diag_icd10_number ELSE '' END) AS C25
FROM 
    t_visit
LEFT JOIN 
    t_diag_icd10 ON t_visit.t_visit_id = t_diag_icd10.diag_icd10_vn
LEFT JOIN 
    t_patient ON t_visit.t_patient_id = t_patient.t_patient_id
LEFT JOIN 
    f_patient_prefix ON t_patient.f_patient_prefix_id = f_patient_prefix.f_patient_prefix_id
WHERE 
    (t_diag_icd10.diag_icd10_number LIKE '%C22%'
    OR t_diag_icd10.diag_icd10_number LIKE '%C23%'
    OR t_diag_icd10.diag_icd10_number LIKE '%C25%'
		)
		and substring(t_visit.visit_begin_visit_time,1,10)  Between substring('2562-10-01',1,10) and substring('2563-09-31',1,10)
GROUP BY 
    --t_visit.visit_begin_visit_time,
    t_visit.visit_hn,
    f_patient_prefix.patient_prefix_description,
    t_patient.patient_firstname,
    t_patient.patient_lastname;
