select distinct
q1.DX as �ӴѺ������ä
,case when q1.DX = '1' then '������ä�Դ������л��Ե�ҧ��Դ'
when q1.DX = '2' then '����ҵ��ä'
when q1.DX = '3' then '�ҡ�÷�ͧ��ǧ ���������������ѡ�ʺ����ѳ��ɰҹ����Դ�ҡ��õԴ����'
when q1.DX = '4' then '�ä�Դ������� � �ͧ���'
when q1.DX = '5' then '�ѳ�ä�ҧ�Թ����'
when q1.DX = '6' then '�ѳ�ä��� �'
when q1.DX = '7' then '����ä'
when q1.DX = '8' then '�Ҵ���ѡ'
when q1.DX = '9' then '�ä�͵պ'
when q1.DX = '10' then '�ä�͡ù'
when q1.DX = '11' then '��õԴ�������ԧ⡤ͤ���'
when q1.DX = '12' then '���Ե�繾��'
when q1.DX = '13' then '��õԴ���ͷ���ҹ�ҧ�����������ѹ������ǹ�˭�'
when q1.DX = '14' then '�ä�������º��ѹ (�����)'
when q1.DX = '15' then '�ä����عѢ���'
when q1.DX = '16' then '������ͧ'
when q1.DX = '17' then '���Ե�繾��(Septicaemia)'
when q1.DX = '18' then '�Ѵ'
when q1.DX = '19' then '�ä�Ѻ�ѡ�ʺ�ҡ���������'
when q1.DX = '20' then '�ä���Ԥ����ѹ�����ͧ���ͧ�ҡ�����'
when q1.DX = '21' then '��������'
when q1.DX = '22' then '�ä�ԫ�����'
when q1.DX = '23' then '�ä��Ի����'
when q1.DX = '24' then '�ä�Դ���ͫ����� (�������������)'
when q1.DX = '25' then '�ä�Դ������л��Ե������������'
when q1.DX = '26' then '�ä���ͧ͡'
when q1.DX = '27' then '���ͧ͡���¢ͧ����ջҡ ��ͧ�ҡ��Ф����'
when q1.DX = '28' then '���ͧ͡���·����ʹ�����'
when q1.DX = '29' then '���ͧ͡���·������������'
when q1.DX = '30' then '���ͧ͡���·��������˭� ��礵����з���˹ѡ'
when q1.DX = '31' then '���ͧ͡���·��Ѻ��з�͹�Ӵ�㹵Ѻ'
when q1.DX = '32' then '���ͧ͡���·��Ѻ��͹'
when q1.DX = '33' then '���ͧ͡���·����ͧ���§'
when q1.DX = '34' then '���ͧ͡���·����ʹ�� ��ʹ���˭���лʹ'
when q1.DX = '35' then '���ͧ͡����������Ңͧ���˹ѧ'
when q1.DX = '36' then '���ͧ͡���·����ҹ� ���/˭ԧ'
when q1.DX = '37' then '���ͧ͡���·��ҡ���١'
when q1.DX = '38' then '���ͧ͡�������� ��з�������к���ǹ�ͧ���١'
when q1.DX = '39' then '���ͧ͡���·���ѧ��'
when q1.DX = '40' then '���ͧ͡���·������١��ҡ'
when q1.DX = '41' then '���ͧ͡���·������л������'
when q1.DX = '42' then '���ͧ͡���·�������������ͧ ��ͧ �����ǹ��� � �ͧ�к�����ҷ��ǹ��ҧ '
when q1.DX = '43' then '���ͧ͡���������ҷ��������ä�ʹ�Թ��'
when q1.DX = '44' then '���ͧ͡������ŵ������������� ������ͧ͡��Դ���¢ͧ����������'
when q1.DX = '45' then '��Ǥ�����'
when q1.DX = '46' then '���ͧ͡��Դ���·�����������'
when q1.DX = '47' then '���ͧ͡������������ '
when q1.DX = '48' then '�ä���ʹ �����з�����ҧ���ʹ��Ф����Դ���Է������ǡѺ���Ԥ����ѹ�ҧ��Դ'
when q1.DX = '49' then '���Ե�ҧ'
when q1.DX = '50' then '�ä���ʹ������������ҧ���ʹ��Ф����Դ���Է������ǡѺ��䡢ͧ���Ԥ����ѹ�ҧ��Դ������������' 
when q1.DX = '51' then '�ä��������� ����ҡ��������к��ԫ��'
when q1.DX = '52' then '����ҹ'
when q1.DX = '53' then '���зؾ����ҡ��'
when q1.DX = '54' then '�ä��������� ����ҡ��������к���ԫ����������������'
when q1.DX = '55' then '�ä�ҧ�Ե�Ǫ��Ф����Դ���Ԣͧ�ĵԡ���'
when q1.DX = '56' then '�����Դ���Էҧ�Ե��оĵԡ������ͧ�ҡ������ѵ���͡ķ����ͨԵ����ҷ'
when q1.DX = '57' then '�ä�ҧ�Ե�Ǫ��Ф����Դ���Ԣͧ�ĵԡ���������������'
when q1.DX = '58' then '�ä�к�����ҷ'
when q1.DX = '59' then '�����������ͧ�ѡ�ʺ'
when q1.DX = '60' then '�ä���������'
when q1.DX = '61' then '�ä�к�����ҷ������������'
when q1.DX = '62' then '�ä�ͧ�������ǹ��Сͺ�ͧ��'
when q1.DX = '63' then '�ä�ͧ����л�������'
when q1.DX = '64' then '�ä�к�������¹���Ե'
when q1.DX = '65' then '�����ҵԡ��º��ѹ����ä�������ҵԡ������ѧ'
when q1.DX = '66' then '�����ѹ���Ե�٧'
when q1.DX = '67' then '�ä���㨢Ҵ���ʹ'
when q1.DX = '68' then '�ä�������'
when q1.DX = '69' then '�ä��ʹ���ʹ���ͧ'
when q1.DX = '70' then '���������������'
when q1.DX = '71' then '�ä�к�������¹���Ե������������'
when q1.DX = '72' then '�ä�к��ҧ�Թ����'
when q1.DX = '73' then '����Ѵ�˭�'
when q1.DX = '74' then '�ʹ���'
when q1.DX = '75' then '�ä�ͧ�ҧ�Թ������ǹ��ҧ��º��ѹ��� �'
when q1.DX = '76' then '�ä�ͧ�к��ҧ�Թ���㨷�����������'
when q1.DX = '77' then '�ä�ͧ�к��ҧ�Թ���㨷�����������'
when q1.DX = '78' then '�ä�к����������'
when q1.DX = '79' then '������¡������������д���ഹ���'
when q1.DX = '80' then '�ä�ͧ�Ѻ'
when q1.DX = '81' then '�ä�к���������÷�����������'
when q1.DX = '82' then '�ä�ͧ���˹ѧ����������������˹ѧ'
when q1.DX = '83' then '�ä�к���������������ç��ҧ����������������Ǿѹ'
when q1.DX = '84' then '�ä�ͧ�к��׺�ѹ����л������'
when q1.DX = '85' then '�ä�ͧ˹��������ä�ͧ��������������ҧ�����'
when q1.DX = '86' then '�ä�ͧ�к��׺�ѹ�����зҧ�Թ������з�����������'
when q1.DX = '87' then '��õ�駤���� ��ä�ʹ ���������ѧ��ʹ'
when q1.DX = '88' then '��õ�駤����������ش�¡���� '
when q1.DX = '89' then '��õ�����ͧ�ҡ ��ä�ʹ�µç��� �'
when q1.DX = '90' then '��õ�����ͧ�ҡ ��ä�ʹ ��������µç'
when q1.DX = '91' then '��õ�駤���� ��ä�ʹ���������ѧ��ʹ������������'
when q1.DX = '92' then '���кҧ���ҧ����Դ����л�ԡ��Դ'
when q1.DX = '93' then '�����Դ���Ԥ����ԡ������Դ���������Դ����'
when q1.DX = '94' then '�ҡ���ʴ������觼Դ���Է�辺�ҡ��õ�Ǩ'
when q1.DX = '95' then '���˵���¹͡�ͧ��û�����е��'
when q1.DX = '96' then '�ѵ��˵ء�â���'
when q1.DX = '97' then '��þ�Ѵ��'
when q1.DX = '98' then '�غѵ��˵ء�õ����  ��С�è����'
when q1.DX = '99' then '��������ʤ�ѹ ��������'
when q1.DX = '100' then '����繾�����غѵ��˵بҡ��������ʡѺ����繾��'
when q1.DX = '101' then '�����ਵ�ҷ����µ��ͧ'
when q1.DX = '102' then '��÷����¼�����'
when q1.DX = '103' then '���˵بҡ��¹͡��� � ������'
else '' end as �����ä
,sum(q1.�ӹǹ) as �ӹǹ 

from
(select distinct
b_icd10.icd10_number as icd10_number
,case when b_icd10.icd10_number between 'A00%' and 'B99%' then 1 
when b_icd10.icd10_number like 'A00%' then 2
when b_icd10.icd10_number like 'A09%' then 3
when b_icd10.icd10_number between 'A01%' and 'A08%' then 4
when b_icd10.icd10_number between 'A15%' and 'A16%' then 5
when b_icd10.icd10_number between 'A17%' and 'A19%' then 6
when b_icd10.icd10_number like 'A20%' then 7
when b_icd10.icd10_number between 'A33%' and 'A35%' then 8
when b_icd10.icd10_number like 'A36%' then 9
when b_icd10.icd10_number like 'A37%' then 10
when b_icd10.icd10_number like 'A39%' then 11
when b_icd10.icd10_number between 'A40' and 'A41' then 12
when b_icd10.icd10_number between 'A50' and 'A64' then 13
when b_icd10.icd10_number like 'A80%' then 14
when b_icd10.icd10_number like 'A82%' then 15
when b_icd10.icd10_number like 'A95%' then 16
when (b_icd10.icd10_number between 'A90%' and 'A94%' or (b_icd10.icd10_number between 'A96%' and 'A99')) then 17
when b_icd10.icd10_number like 'B05%' then 18
when b_icd10.icd10_number between 'B15%' and 'B19%' then 19
when b_icd10.icd10_number between 'B20%' and 'B24%' then 20
when b_icd10.icd10_number between 'B50%' and 'B54%' then 21
when b_icd10.icd10_number like 'B55%' then 22
when b_icd10.icd10_number between 'B56%' and 'B57%' then 23
when b_icd10.icd10_number like 'B65%' then 24
when (b_icd10.icd10_number like 'A38%' or (b_icd10.icd10_number like 'A81%') or (b_icd10.icd10_number like 'B99%') 
or (b_icd10.icd10_number between 'A21%' and 'A32%') or (b_icd10.icd10_number between 'A42%' and 'A49%') 
or (b_icd10.icd10_number between 'A65%' and 'A79%') or (b_icd10.icd10_number between 'A83%' and 'A89%') 
or (b_icd10.icd10_number between 'B00%' and 'B04%') or (b_icd10.icd10_number between 'B06%' and 'B09%')
or (b_icd10.icd10_number between 'B25%' and 'B49%') or (b_icd10.icd10_number between 'B58%' and 'B64%')  
or (b_icd10.icd10_number between 'B66%' and 'B94%')) then 25
when b_icd10.icd10_number between 'B00%' and 'D48%' then 26
when b_icd10.icd10_number between 'C00%' and 'C14%' then 27
when b_icd10.icd10_number like 'C15%' then 28
when b_icd10.icd10_number like 'C16%' then 29
when b_icd10.icd10_number between 'C18%' and 'C21%' then 30
when b_icd10.icd10_number like 'C22%' then 31
when b_icd10.icd10_number like 'C25%' then 32
when b_icd10.icd10_number like 'C32%' then 33
when b_icd10.icd10_number between 'C33%' and 'C34%' then 34
when b_icd10.icd10_number like 'C43%' then 35
when b_icd10.icd10_number like 'C50%' then 36
when b_icd10.icd10_number like 'C53%' then 37
when b_icd10.icd10_number between 'C54%' and 'C55%' then 38
when b_icd10.icd10_number like 'C56%' then 39
when b_icd10.icd10_number like 'C61%' then 40
when b_icd10.icd10_number like 'C67%' then 41
when b_icd10.icd10_number between 'C70%' and 'C72%' then 42
when b_icd10.icd10_number between 'C82%' and 'C85%' then 43
when b_icd10.icd10_number like 'C90%' then 44
when b_icd10.icd10_number between 'C91%' and 'C95%' then 45
when (b_icd10.icd10_number like 'C17%' or (b_icd10.icd10_number like 'C88%') or (b_icd10.icd10_number between 'C23%' and 'C24%') 
or (b_icd10.icd10_number between 'C26%' and 'C31%') or (b_icd10.icd10_number between 'C37%' and 'C41%') 
or (b_icd10.icd10_number between 'C44%' and 'C49%') or (b_icd10.icd10_number between 'C51%' and 'C52%') 
or (b_icd10.icd10_number between 'C57%' and 'C60%') or (b_icd10.icd10_number between 'C62%' and 'C66%')
or (b_icd10.icd10_number between 'C68%' and 'C69%') or (b_icd10.icd10_number between 'C73%' and 'C81%')
or (b_icd10.icd10_number between 'C96%' and 'C97%')) then 46
when b_icd10.icd10_number between 'D00%' and 'D48%' then 47
when b_icd10.icd10_number between 'D50%' and 'D89%' then 48
when b_icd10.icd10_number between 'D50%' and 'D64%' then 49
when b_icd10.icd10_number between 'D65%' and 'D89%' then 50 
when b_icd10.icd10_number between 'E00%' and 'E88%' then 51
when b_icd10.icd10_number between 'E10%' and 'E14%' then 52
when b_icd10.icd10_number between 'E40%' and 'E46%' then 53
when ((b_icd10.icd10_number between 'E00%' and 'E07%') or (b_icd10.icd10_number between 'E15%' and 'E34%')
or (b_icd10.icd10_number between 'E50%' and 'E88%')) then 54
when b_icd10.icd10_number between 'F01%' and 'F99%' then 55
when b_icd10.icd10_number between 'F10%' and 'F19%' then 56
when (b_icd10.icd10_number between 'F01%' and 'F09%' or (b_icd10.icd10_number between 'F20%' and 'F99%')) then 57
when b_icd10.icd10_number between 'G00%' and 'G98%' then 58
when (b_icd10.icd10_number like 'G00%' or (b_icd10.icd10_number like 'G03%')) then 59
when b_icd10.icd10_number like 'G30%' then 60
when (b_icd10.icd10_number between 'G04%' and 'G25%' or (b_icd10.icd10_number between 'G31%' and 'F98%')) then 61
when b_icd10.icd10_number between 'H00%' and 'H59%' then 62
when b_icd10.icd10_number between 'H60%' and 'H93%' then 63
when b_icd10.icd10_number between 'I00%' and 'I99%' then 64
when b_icd10.icd10_number between 'I10%' and 'I09%' then 65
when b_icd10.icd10_number between 'I10%' and 'I13%' then 66
when b_icd10.icd10_number between 'I20%' and 'I25%' then 67
when b_icd10.icd10_number between 'I26%' and 'I51%' then 68
when b_icd10.icd10_number between 'I60%' and 'I69%' then 69
when b_icd10.icd10_number like 'I70%' then 70
when b_icd10.icd10_number between 'I71%' and 'I99%' then 71
when b_icd10.icd10_number between 'J00%' and 'J08%' then 72
when b_icd10.icd10_number between 'J10%' and 'J11%' then 73
when b_icd10.icd10_number between 'J12%' and 'J18%' then 74
when b_icd10.icd10_number between 'J20%' and 'J22%' then 75
when b_icd10.icd10_number between 'J40%' and 'J47%' then 76
when(b_icd10.icd10_number between 'J00%' and 'J06%' or (b_icd10.icd10_number between 'J30%' and 'J39%')
or (b_icd10.icd10_number between 'J60%' and 'J98%')) then 77
when b_icd10.icd10_number between 'K00%' and 'K92%' then 78
when b_icd10.icd10_number between 'K25%' and 'K27%' then 79
when b_icd10.icd10_number between 'K70%' and 'K76%' then 80
when(b_icd10.icd10_number between 'K00%' and 'K22%' or (b_icd10.icd10_number between 'K28%' and 'K66%')
or (b_icd10.icd10_number between 'K80%' and 'K92%')) then 81
when b_icd10.icd10_number between 'L00%' and 'L98%' then 82
when b_icd10.icd10_number between 'M00%' and 'M99%' then 83
when b_icd10.icd10_number between 'N00%' and 'N99%' then 84
when b_icd10.icd10_number between 'N00%' and 'N15%' then 85
when b_icd10.icd10_number between 'N17%' and 'N98%' then 86
when b_icd10.icd10_number between 'O00%' and 'O99%' then 87
when b_icd10.icd10_number between 'O00%' and 'O07%' then 88
when b_icd10.icd10_number between 'O10%' and 'O92%' then 89
when b_icd10.icd10_number between 'O98%' and 'O99%' then 90
when b_icd10.icd10_number between 'O95%' and 'O97%' then 91
when b_icd10.icd10_number between 'P00%' and 'P96%' then 92
when b_icd10.icd10_number between 'Q00%' and 'Q99%' then 93
when b_icd10.icd10_number between 'R00%' and 'R99%' then 94
when b_icd10.icd10_number between 'V01%' and 'Y89%' then 95
when b_icd10.icd10_number between 'V01%' and 'V99%' then 96
when b_icd10.icd10_number between 'W00%' and 'W19%' then 97
when b_icd10.icd10_number between 'W65%' and 'W74%' then 98
when b_icd10.icd10_number between 'X00%' and 'X09%' then 99
when b_icd10.icd10_number between 'X40%' and 'X49%' then 100
when b_icd10.icd10_number between 'X60%' and 'X84%' then 101
when b_icd10.icd10_number between 'X85%' and 'Y09%' then 102
when (b_icd10.icd10_number between 'W20%' and 'W64%' or (b_icd10.icd10_number between 'W75%' and 'W99%') 
or (b_icd10.icd10_number between 'X10%' and 'X39%') or (b_icd10.icd10_number between 'Y10%' and 'Y89%')) then 103
else 0 end as DX
,count(q2.diag_icd10_number) as �ӹǹ

from b_icd10  
left join(SELECT 
distinct(t_visit.visit_hn) as HN
,t_visit.visit_vn as VN
,t_patient.f_sex_id as sex
,t_visit.b_visit_ward_id as ward
,t_death.death_site as ʶҹ����� 
,t_visit.f_visit_type_id as ������
,t_death.death_cause as diag_icd10_number
,substring(t_death.death_date_time,6,2) AS �ѹ���

from t_death 
left join t_visit on (t_death.t_visit_id = t_visit.t_visit_id and death_active = '1')
inner join t_patient on t_patient.t_patient_id = t_visit.t_patient_id

where
substring(t_death.death_date_time,1,10) Between substring('2558-10-01',1,10) and substring('2559-09-30',1,10) 
and t_visit.f_visit_status_id <>'4'
and t_visit.f_visit_type_id = '1'

group by sex,�ѹ���--,HN,VN
,ward,ʶҹ�����,������,diag_icd10_number,VN,HN
) as q2
on b_icd10.icd10_number = q2.diag_icd10_number

group by b_icd10.icd10_number
order by icd10_number ASC
) as q1
where q1.DX <> '0'
group by �ӴѺ������ä
order by �ӴѺ������ä ASC