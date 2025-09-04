select distinct
q1.DX as �ӴѺ������ä
,case when q1.DX = '1' then '�ä�Դ�յ�� (Amoebiasis)'
when q1.DX = '2' then '�ä�������ѡ�ʺ����(Other intestinal infectious disease)'
when q1.DX = '3' then '�ä�Դ�ҡ���ͫ�����(Shigellosis)'
when q1.DX = '4' then '�ä�Դ�յ��(Amoebiasis)'
when q1.DX = '5' then '�ҡ�÷�ͧ��ǧ����������������ѡ�ʺ����ѹ��ɰҹ����Դ�ҡ��õԴ����(Diarrhoea and gastroenteritis of presumed infectious origin)'
when q1.DX = '6' then '�ä�������ѡ�ʺ����(Other intestinal infectious diseases)'
when q1.DX = '7' then '�ѳ�ä�ҧ�Թ����(Respiratory tuberculosis)'
when q1.DX = '8' then '�ѳ�ä����(Other tuberculosis)'
when q1.DX = '9' then '����ä(Plague)'
when q1.DX = '10' then '�ä�Դ���ͺ������(Brucellosis)'
when q1.DX = '11' then '�ä����͹(Leprosy)'
when q1.DX = '12' then '�Ҵ���ѡ����á�Դ(Tetanus neonatorum)'
when q1.DX = '13' then '�Ҵ���ѡ����(Other tetanus)'
when q1.DX = '14' then '�ä�͵պ(Diphtheria)'
when q1.DX = '15' then '�ä�͡ù(Whooping cough)'
when q1.DX = '16' then '��õԴ�������ԧ⡤ͤ���(Meningococcal infection)'
when q1.DX = '17' then '���Ե�繾��(Septicaemia)'
when q1.DX = '18' then '�ä�ҡẤ����������(Other bacterial diseases)'
when q1.DX = '19' then '�Կ���������Դ(Congenital syphilis)'
when q1.DX = '20' then '�Կ�������������(Early syphilis)'
when q1.DX = '21' then '�Կ��������(Other syphilis)'
when q1.DX = '22' then '��õԴ����˹ͧ�(Gonococcal infection)'
when q1.DX = '23' then '�ä�Դ��ͷҧ������ѹ�רҡ���ͤ��������(Sexually transmitted chlamydial diseases)'
when q1.DX = '24' then '�ä�Դ����������Դ��ͷҧ������ѹ������ǹ�ҡ(Other infections with a predominantly sexual mode of transmission)'
when q1.DX = '25' then '�ä���Ѻ���(Relapsing fevers)'
when q1.DX = '26' then '�Դ�մǧ��(Trachoma)'
when q1.DX = '27' then '���ҡ�Ҵ�˭�(Typhus fever)'
when q1.DX = '28' then '�ä�������º��ѹ(Acute poliomyelitis)'
when q1.DX = '29' then '�ä����عѢ���(Rabies)'
when q1.DX = '30' then '��ͧ�ѡ�ʺ�ҡ���������(Viral encephalitis)'
when q1.DX = '31' then '������ͧ(Yellow fever)'
when q1.DX = '32' then '��ҡ����ʷ��������ŧ��������ʹ�͡����Դ�ҡ���������(Other arthropod-borne viral fevers and viral haemorrhagic fevers)'
when q1.DX = '33' then '����(Herpesviral infections)'
when q1.DX = '34' then '���ء������Ч�����(Varicella and zoster)'
when q1.DX = '35' then '�Ѵ(Measles)'
when q1.DX = '36' then '�Ѵ�����ѹ(Rubella)'
when q1.DX = '37' then '�Ѻ�ѡ�ʺ��º��ѹ��Դ��(Acute hepatitis B)'
when q1.DX = '38' then '�Ѻ�ѡ�ʺ�ҡ���������(Other viral hepatitis)'
when q1.DX = '39' then '���Ԥ����ѹ�����ͧ���ͧ�ҡ�����(HIV)(Human immunodeficiency virus [HIV] disease)'
when q1.DX = '40' then '�ҧ���(Mumps)'
when q1.DX = '41' then '�ä�ҡ��������(Other viral diseases)'
when q1.DX = '42' then '�ä�Դ������(Mycoses)'
when q1.DX = '43' then '��������(Malaria)'
when q1.DX = '44' then '�ä�ԫ�����(Leishmaniasis)'
when q1.DX = '45' then '�ä��Ի����(Trypanosomiasis)'
when q1.DX = '46' then '�ä�Դ���ͫ�����(Schistosomiasis )'
when q1.DX = '47' then '�ä��Ҹ���������(Other fluke infections)'
when q1.DX = '48' then '�ä��Ҹ��ͤ��⹤ͤ���(Echinococcosis)'
when q1.DX = '49' then '�ä��ҸԴ�Ҥѹ�����(Dracunculiasis)'
when q1.DX = '50' then '�ä��Ҹ��͹������(Onchocerciasis)' 
when q1.DX = '51' then '�ä��ҸԿ�������(Filariasis)'
when q1.DX = '52' then '�ä��ҸԻҡ��(Hookworm diseases)'
when q1.DX = '53' then '�ä��ҸԵ�ǵ״����(Other helminthiases)'
when q1.DX = '54' then '�ŵ����ѧ�ѳ�ä(Sequelae of tuberculosis)'
when q1.DX = '55' then '�ŵ����ѧ�ä�����(Sequelae of poliomyelitis)'
when q1.DX = '56' then '�ŵ����ѧ�ä����͹(Sequelae of leprosy)'
when q1.DX = '57' then '�ä�Դ������л��Ե����(Other infectious and parasitic diseases)'
when q1.DX = '58' then '���ͧ͡���¢ͧ����ջҡ ��ͧ�ҡ��Ф����(Malignant neoplasm of lip, oral cavity and pharynx)'
when q1.DX = '59' then '���ͧ͡���·������������(Malignant neoplasm of oesophagus)'
when q1.DX = '60' then '���ͧ͡���·������������(Malignant neoplasm of stomach)'
when q1.DX = '61' then '���ͧ͡���¢ͧ�������˭�(Malignant neoplasm of colon)'
when q1.DX = '62' then '�ä�Դ������л��Ե����(Other infectious and parasitic diseases)'
when q1.DX = '63' then '���ͧ͡���·����µ���������˭���礴����Ыԡ��´� ��礴�� ����˹ѡ��Ъ�ͧ����˹ѡ(Other infectious and parasitic diseases anal canal)'
when q1.DX = '64' then '���ͧ͡���·��Ѻ��з�͹�Ӵ�㹵Ѻ(Malignant neoplasm of liver and intrahepatic bile ducts)'
when q1.DX = '65' then '���ͧ͡���·���������������������(Other malignant neoplasms of digestive organs )'
when q1.DX = '66' then '���ͧ͡���·����ͧ���§(Malignant neoplasms of larynx)'
when q1.DX = '67' then '���ͧ͡���·����ʹ�� ��ʹ�� ��лʹ(Malignant neoplasm of trachea, bronchus and lung)'
when q1.DX = '68' then '���ͧ͡���·��������������������з���ͧ͡(Other malignant neoplasms of respiratory and intrathoracic organs )'
when q1.DX = '69' then '���ͧ͡���·���д١��С�д١��͹��Ǣ��(Malignant neoplasm of bone and articular cartilage)'
when q1.DX = '70' then '���ͧ͡���·��������Ңͧ���˹ѧ(Malignant melanoma of skin)'
when q1.DX = '71' then '���ͧ͡���·����˹ѧ����(Other malignant neoplasms of skin)'
when q1.DX = '72' then '���ͧ͡���·�����ʪ��������������������͹(Malignant neoplasms of mesothelial and soft tissue)'
when q1.DX = '73' then '���ͧ͡���·����ҹ�(Malignant neoplasm of breast)'
when q1.DX = '74' then '���ͧ͡���·��ҡ���١(Malignant neoplasm of cervix uteri)'
when q1.DX = '75' then '���ͧ͡���������������к���ǹ�ͧ���١(Malignant neoplasm of other and unspecified parts of uterus)'
when q1.DX = '76' then '���ͧ͡�?�¢ͧ�������׺�ѹ���˭ԧ(Other malignant neoplasms of female genital organs )'
when q1.DX = '77' then '���ͧ͡���·������١��ҡ(Malignant neoplasm of prostate)'
when q1.DX = '78' then '���ͧ͡���¢ͧ�������׺�ѹ�����(Other malignant neoplasms of male genital organs)'
when q1.DX = '79' then '���ͧ͡���·������л������(Malignant neoplasm of bladder)'
when q1.DX = '80' then '���ͧ͡�����������ͻ������(Other malignant neoplasm of urinary tract)'
when q1.DX = '81' then '���ͧ͡���¢ͧ�������ǹ��Сͺ(Malignant neoplasm of eye and adnexa)'
when q1.DX = '82' then '���ͧ͡���¢ͧ��ͧ(Malignant neoplasm of brain)'
when q1.DX = '83' then '���ͧ͡���·����ǹ����ͧ�к�����ҷ��ǹ��ҧ(Malignant neoplasm of other parts of central nervous system)'
when q1.DX = '84' then '���ͧ͡������з������Һ���˵� ���ͧ͡�ص�����Է�������к���������´����Դ����������(Malignant neoplasm of other, ill-defined, secondary, unspecified and multiple sites)'
when q1.DX = '85' then '�ä�ʹ�Թ��(Hodgkin is disease )'
when q1.DX = '86' then '���ͧ͡���������ҷ�������ä�ʹ�Թ��(Non-Hodgkin is lymphoma)'
when q1.DX = '87' then '��Ǥ�����(Leukaemia)'
when q1.DX = '88' then '���ͧ͡��������ͧ�����´������к����ҧ������ʹ������������(Other malignant neoplasms of lymphoid, haematopoietic and related tissue )'
when q1.DX = '89' then '����秨�ҡѴ੾�з��ͧ�ҡ���١(Carcinoma in situ of cervix uteri)'
when q1.DX = '90' then '���ͧ͡������¢ͧ���˹ѧ(Benign neoplasm of skin)'
when q1.DX = '91' then '���ͧ͡������¢ͧ��ҹ�(Benign neoplasm of breast)'
when q1.DX = '92' then '���������ҷ�� ���١(Leiomyoma of uterus)'
when q1.DX = '93' then '���ͧ͡������·���ѧ��(Benign neoplasm of ovary)'
when q1.DX = '94' then '����ͧ͡������·���к��������(Benign neoplasm of urinary organs)'
when q1.DX = '95' then '���ͧ͡������¢ͧ��ͧ�����ǹ��蹢ͧ�к�����ҷ��ǹ��ҧ(Benign neoplasm of brain and other parts of central nervous system)'
when q1.DX = '96' then '���ͧ͡������¨�ҡѴ੾�з������������ͧ͡�ҧ��Դ�������Һ�ĵԡ���(Other in situ and benign neoplasms and neoplasms of uncertain and unknown behaviour )'
when q1.DX = '97' then '���Ե�ҧ�ҡ��âҴ�ҵ�����(Iron deficiency anaemia)'
when q1.DX = '98' then '���Ե�ҧ����(Other anaemias)'
when q1.DX = '99' then '�������ʹ�͡�����ä���ʹ��������з����?ҧ���ʹ(Haemorrhagic conditions and other diseases of blood and blood forming organs )'
when q1.DX = '100' then '�����Դ���Է������ǡѺ��䡢ͧ���Ԥ����ѹ(Certain disorders involving the immune mechanism)'
when q1.DX = '101' then '��âҴ���ʹչ����դ�������ѹ��Ѻ���������´(Iodine-deficiency-related thyroid disorders)'
when q1.DX = '102' then '�ä��ɸ����´�(Thyrotoxicosis)'
when q1.DX = '103' then '�����Դ���Ԣͧ���������´�����(Other disorders of thyroid)'
when q1.DX = '104' then '����ҹ(Diabetes mellitus)'
when q1.DX = '105' then '�ؾ����ҡ�� 1(Malnutrition)'
when q1.DX = '106' then '��âҴ�Ե��Թ��(Vitamin A deficiency)'
when q1.DX = '107' then '��âҴ�Ե��Թ����(Other vitamin deficiencies)'
when q1.DX = '108' then '�ŷ�����Ңͧ���зؾ����ҡ��������о��ͧ����ҡ������(Sequelae of malnutrition and other nutritional deficiencies)'
when q1.DX = '109' then '�ä��ǹ(Obesity)'
when q1.DX = '110' then '�����Դ���Ԣͧ���������´�����(Volume depletion)'
when q1.DX = '111' then '�����Դ���Ԣͧ��������� ����ҡ��������к��ԡ����(Other endocrine, nutritional and metabolic disorders )'
when q1.DX = '112' then '��ͧ������(Dementia)'
when q1.DX = '113' then '�����Դ���Ԣͧ�ĵԡ�����ШԵ����ҷ����Դ�ҡ����ʾ��š����(Mental and behavioural disorders due to use of alcohol)'
when q1.DX = '114' then '�����Դ���Էҧ�ĵԡ�����ШԵ����ҷ����Դ��ҡ������ѵ���͡ķ�Ե�ͨԵ����ҷ����(Mental and behavioural disorders due to other psychoactive substance use)'
when q1.DX = '115' then '�Ե��� �ĵԡ���Ẻ�Ե�����Ф����ŧ�Դ(Schizophrenia, schizotypal, and delusional disorders)'
when q1.DX = '116' then '�����Դ���Էҧ������(Mood [affective] disorders)'
when q1.DX = '117' then '�ä����ҷ �ҡ�÷ҧ��·���Դ�ҡ�Ե���Ф������´(Neurotic, stress-related, and somatoform disorders)'
when q1.DX = '118' then '���лѭ����͹(Mental retardation)'
when q1.DX = '119' then '�����Դ���Էҧ�Ե��оĵԡ�������(Other mental and behavioural disorders)'
when q1.DX = '120' then '����ѡ�ʺ�ͧ�к�����ҷ��ǹ��ҧ(Inflammatory diseases of the central nervous system)'
when q1.DX = '121' then '�ä�ҤԹ�ѹ(Parkinson s disease)'
when q1.DX = '122' then '�ä���������(Alzheimer s disease )'
when q1.DX = '123' then '��ŵ���� ���������(Multiple sclerosis)'
when q1.DX = '124' then '��������(Epilepsy)'
when q1.DX = '125' then '�ä���ù��С�����ҡ�ûǴ���������(Migraine and other headache syndromes)'
when q1.DX = '126' then '�ä���ʹ�����§��ͧ���ª��Ǥ�����С�����ҡ�õ�����ͧ(Transient cerebral ischaemic attacks and related syndromes)'
when q1.DX = '127' then '�����Դ���Ԣͧ��鹻���ҷ �ҡ����ҷ��л�����ҷ(Nerve, nerve root and plexus disorders)'
when q1.DX = '128' then '��ͧ�ԡ����С�����ҡ������ҵ����(Cerebral palsy and other paralytic syndromes)'
when q1.DX = '129' then '�ä�ͧ�к�����ҷ����(Other diseases of the nervous system)'
when q1.DX = '130' then '����ѡ�ʺ�ͧ˹ѧ��(Inflammation of eyelid)'
when q1.DX = '131' then '����ͺص����ʺ��Ф����Դ���Ԣͧ����ͺص�����(Conjunctivitis and other disorders of conjunctiva)'
when q1.DX = '132' then '��Ш����ѡ�ʺ��Ф����Դ���Ԣͧ�Ң����С�Ш�������(Keratitis and other disorders of sclera and cornea)'
when q1.DX = '133' then '��͡�Ш���Ф����Դ���Ԣͧ�Ź��������(Cataract and other disorders of lens)'
when q1.DX = '134' then '�ͻ���ҷ����ش�͡�����©ա�ͧ�ͻ���ҷ��(Retinal detachments and breaks)'
when q1.DX = '135' then '����Թ(Glaucoma)'
when q1.DX = '136' then '������(Strabismus)'
when q1.DX = '137' then '�����Դ���Ԣͧ��µ���С�����ͧ(Disorders of refraction and accommodation)'
when q1.DX = '138' then '�Һʹ�����µ����͹�ҧ(Blindness and low vision)'
when q1.DX = '139' then '�ä�ͧ�������ǹ��Сͺ�ͧ������(Other diseases of the eye and adnexa)'
when q1.DX = '140' then '�٪�鹡�ҧ�ѡ�ʺ��Ф����Դ���Ԣͧ�٪�鹡�ҧ��л�����������(Otitis media and other disorders of middle ear and mastoid)'
when q1.DX = '141' then '����٭���¡�����Թ(Hearing loss)'
when q1.DX = '142' then '�ä�ͧ����л�����������(Other diseases of the ear and mastoid process)'
when q1.DX = '143' then '�����ҵԡ��º��ѹ(Acute rheumatic fever)'
when q1.DX = '144' then '�ä�������ҵԡ������ѧ(Chronic rheumatic heart disease)'
when q1.DX = '145' then '�����ѹ���Ե�٧�����������˵ع��(Essential (primary) hypertension)'
when q1.DX = '146' then '�ä�����ѹ���Ե�٧����(Other hypertensive diseases)'
when q1.DX = '147' then '������������㨵����º��ѹ(Acute myocardial infarction)'
when q1.DX = '148' then '�ä���㨢Ҵ���ʹ����(Other ischaemic heart diseases)'
when q1.DX = '149' then '��͹���ʹ�ش�����ʹ���ʹ�˭�ͧ�ʹ(Other ischaemic heart diseases)'
when q1.DX = '150' then '�����Դ���Ԣͧ��ù�ҡ����俿��������������鹼Դ�ѧ���(Conduction disorders and cardiac arrhythmias )'
when q1.DX = '151' then '�����������(Heart failure)'
when q1.DX = '152' then '�ä��������(Other heart diseases)'
when q1.DX = '153' then '���ʹ�͡���ͧ(Intracranial haemorrhage)'
when q1.DX = '154' then '������ͧ���(Cerebral infarction)'
when q1.DX = '155' then '�������ʵԷ�����Ѵ���������繨ҡ���ʹ�͡���ͧ����������ͧ��¨ҡ��âҴ���ʹ(Stroke, not specified as haemorrhage or infarction)'
when q1.DX = '156' then '�ä��ʹ���ʹ���ͧ����(Other cerebrovascular diseases)'
when q1.DX = '157' then '���������������(Atherosclerosis)'
when q1.DX = '158' then '�ä��ʹ���ʹ��ǹ��������(Other peripheral vascular diseases)'
when q1.DX = '159' then '�������ʹ��С�͹���ʹ�ش�ѹ���ʹ���ʹᴧ(Arterial embolism and thrombosis)'
when q1.DX = '160' then '�ä�ͧ��ʹ���ʹᴧ��ʹ���ʹᴧ�������᤻���������(Other diseases of arteries, arterioles and capillaries)'
when q1.DX = '161' then '��ʹ���ʹ����ѡ�ʺ ��ʹ���ʹ����ѡ�ʺ���������ʹ��͹���ʹ����������ʹ���ʹ���ʹ���(Phlebitis, thrombophlebitis, venous embolism and thrombosis)'
when q1.DX = '162' then '��ʹ���ʹ��Ңʹ�ͧ���ҧ��ǹ��ҧ(Varicose veins of lower extremities)'
when q1.DX = '163' then '�Դ�մǧ����(Haemorrhoids)'
when q1.DX = '164' then '�ä��� �ͧ�к�������¹���Ե(Other diseases of the circulatory system)'
when q1.DX = '165' then '���ѡ�ʺ��º��ѹ��е����͹����ѡ�ʺ��º��ѹ(Acute pharyngitis and acute tonsillitis)'
when q1.DX = '166' then '���ͧ���§�����ʹ���˭��ѡ�ʺ��º��ѹ(Acute laryngitis and tracheitis)'
when q1.DX = '167' then '��õԴ���ͧ͢�ҧ�Թ������ǹ��Ẻ��º��ѹ����(Other acute upper respiratory infections)'
when q1.DX = '168' then '����Ѵ�˭�(Influenza)'
when q1.DX = '169' then '�ʹ���(Pneumonia)'
when q1.DX = '170' then '��ʹ���ѡ�ʺ��º��ѹ�����ʹ������ѡ�ʺ��º��ѹ(Acute bronchitis and acute bronchiolitis)'
when q1.DX = '171' then '䫹���ѡ�ʺ������ѧ(Chronic sinusitis)'
when q1.DX = '172' then '�ä��蹢ͧ��١���䫹��(Other diseases of nose and nasal sinuses)'
when q1.DX = '173' then '�ä������ѧ�ͧ�����͹�����е����������ͧ㹤�(Chronic disease of tonsils and adenoids)'
when q1.DX = '174' then '�ä����ͧ�к�������ǹ��(Other diseases of upper respiratory tract)'
when q1.DX = '175' then '�ä��ʹ���ѡ�ʺ �ا���觾ͧ��лʹ��Դ�ش���Ẻ������ѧ���(Bronchitis, emphysema and other chronic obstructive pulmonary diseases)'
when q1.DX = '176' then '�ä�״(Asthma)'
when q1.DX = '177' then '�ä��ʹ������觾ͧ(Bronchiectasis)'
when q1.DX = '178' then '�ä�������㹻ʹ(Pneumoconiosis)'
when q1.DX = '179' then '�ä����ͧ�к��ҧ�Թ����(Other diseases of the respiratory system)'
when q1.DX = '180' then '�ѹ��(Dental caries)'
when q1.DX = '181' then '�����Դ��������ͧ�ѹ����ç���ҧ(Other disorders of teeth and supporting structures)'
when q1.DX = '182' then '�ä����ͧ��ͧ�ҡ ������������Тҡ����(Other diseases of the oral cavity, salivary glands and jaws)'
when q1.DX = '183' then '�������¢ͧ����������ô���ഹ��(Gastric and duodenal ulcer)'
when q1.DX = '184' then '������������ѡ�ʺ��д���ഹ���ѡ�ʺ(Gastritis and duodenitis)'
when q1.DX = '185' then '�ä����ͧ��ʹ����� ��������д���ഹ��(Other diseases of oesophagus, stomach and duodenum )'
when q1.DX = '186' then '�ä�ͧ�����(Diseases of appendix)'
when q1.DX = '187' then '�ä����ͧ��ʹ����� ��������д���ഹ��(Inguinal hernia)'
when q1.DX = '188' then '�������͹����(Other hernia)'
when q1.DX = '189' then '�ä�ù����������˭��ѡ�ʺ��������(Crohn s disease and ulcerative colitis)'
when q1.DX = '190' then '����������ҧҹ����������Դ�ش�ѹẺ������������͹(Paralytic ileus and intestinal obstruction without hernia)'
when q1.DX = '191' then '�ä������ͧ͢������(Diverticular disease of intestine)'
when q1.DX = '192' then '�ä����ͧ�������������ͺت�ͧ��ͧ(Other diseases of intestines and peritoneum)'
when q1.DX = '193' then '�ä�Ѻ����ǡѺ��š�����(Alcoholic liver disease)'
when q1.DX = '194' then '�ä����ͧ�Ѻ(Other diseases of liver)'
when q1.DX = '195' then '�ä������к���Ӵ���жا��Ӵ��ѡ�ʺ(Cholelithiasis and cholecystitis)'
when q1.DX = '196' then '�Ѻ��͹�ѡ�ʺ��º��ѹ����ä����ͧ�Ѻ��͹(Acute pancreatitis and other diseases of the pancreas)'
when q1.DX = '197' then '�ä����ͧ�к����������(Other diseases of the digestive system)'
when q1.DX = '198' then '�ä�ѡ�ʺ�Դ���ͧ͢���˹ѧ����������������˹ѧ(Infections of the skin and subcutaneous tissue)'
when q1.DX = '199' then '�ä����ͧ���˹ѧ����������������˹ѧ(Other diseases of the skin and subcutaneous)'
when q1.DX = '200' then '����ѡ�ʺ�����ҵ����Т���ѡ�ʺ���¢��(Rheumatoid arthritis and other inflammatory polyarthropathies)'
when q1.DX = '201' then '�ä���������(Arthrosis)'
when q1.DX = '202' then '�����ԡ�âͧᢹ��(Acquired deformities of limbs)'
when q1.DX = '203'  then '�����Դ��������ͧ���(Other disorders of joints)'
when q1.DX = '204' then '�����Դ���Ԣͧ�к���������ͻ���ҹ(Systemic connective tissue disorders)'
when q1.DX = '205' then '��д١�ѹ��ѧ�����͹�ͧ��д١�ѹ��ѧ����Դ����(Cervical and other intervertebral disc disorders)'
when q1.DX = '206'  then '��Ҹ���Ҿ�ͧ��ѧ��ǹ����(Other dorsopathies)'
when q1.DX = '207' then '��������ͼԴ����(Soft tissue disorders)'
when q1.DX = '208' then '�����Դ���Ԣͧ����˹��蹢ͧ���͡�д١����ç���ҧ(Disorders of bone density and structure)'
when q1.DX = '209' then '��д١�ѡ�ʺ(Osteomyelitis)'
when q1.DX = '210' then '�ä����ͧ�к���������������������ͻ���ҹ(Other diseases of the musculoskeletal system and connective tissue)'
when q1.DX = '211' then '������ҡ����ѡ�ʺ��º��ѹ��Ъ�Դ�����Ժ����(Acute and rapidly progressive nephritic syndromes)'
when q1.DX = '212' then '�ä����ͧ��ʹ����� ��������д���ഹ��(Other diseases of oesophagus, stomach and duodenum)'
when q1.DX = '213' then '�ä�ͧ��������������������ҧ�����(Renal tubulo-interstitial diseases)'
when q1.DX = '214' then '����(Renal failure)'
when q1.DX = '215' then '������к��ҧ�Թ�������(Urolithiasis)'
when q1.DX = '216' then '�����л�������ѡ�ʺ(Cystitis)'
when q1.DX = '217' then '�ä����ͧ�к��ҧ�Թ�������(Other diseases of the urinary system)'
when q1.DX = '218' then '�����١��ҡ⵨ҡ��������ӹǹ��(Hyperplasia of prostate)'
when q1.DX = '219' then '�����Դ��������ͧ�����١��ҡ(Other disorders of prostate)'
when q1.DX = '220' then '�ا�����жا�������بԷ���ѳ��(Hydrocele and spermatocele)'
when q1.DX = '221' then '˹ѧ��������ͧ��ҵ�����Թ� ���µպ���Դ����������Դ��Һҡ(Redundant prepuce, phimosis and paraphimosis)'
when q1.DX = '222' then '�ä����ͧ�������׺�ѹ�����(Other diseases of male genital organs)'
when q1.DX = '223' then '�����Դ���Ԣͧ��ҹ�(Disorders of the breast)'
when q1.DX = '224' then '�ա���١����ѧ���ѡ�ʺ(Salpingitis and oophoritis)'
when q1.DX = '225' then '�ҡ���١�ѡ�ʺ(Inflammatory disease of cervix uteri)'
when q1.DX = '226' then '����ѡ�ʺ����ͧ�����������ԧ��ҹʵ��(Other inflammatory diseases of female pelvic organs)'
when q1.DX = '227' then '����ͺ����١����Դ���(Endometriosis)'
when q1.DX = '228' then '������͹����͡�Ңͧ�������׺�ѹ���ʵ��(Female genital prolapse)'
when q1.DX = '229' then '�����Դ������蹷����������ѡ�ʺ�ͧ�ѧ�����ѧ���������ִ���١(Noninflammatory disorders of ovary, fallopian tube and broad ligament)'
when q1.DX = '230' then '�����Դ���Ԣͧ�д�(Disorders of menstruation)'
when q1.DX = '231' then '��������Ш����͹��Ф����Դ�����������������Ш����͹(Menopausal and other perimenopausal disorders)'
when q1.DX = '232' then '�����պص��ҡ�ʵ��(Female infertility)'
when q1.DX = '233' then '�����Դ��������ͧ��ͷҧ�Թ�����������׺�ѹ���(Other disorders of genitourinary tract)'
when q1.DX = '234' then '���ͧ(Spontaneous abortion)'
when q1.DX = '235' then '��÷�������˵ؼŷҧ���ᾷ��(Medical abortion)'
when q1.DX = '236' then '��õ�駤��������������ش�¡����(Other pregnancies with abortive outcome)'
when q1.DX = '237' then '��ú�� ������õչ㹻������ ��Ф����ѹ���Ե�٧��е�駤�������Ф�ʹ ���������ѧ��ʹ(Oedema, proteinuria and hypertensive disorders in pregnancy,childbirth and the puerperium)'
when q1.DX = '238' then 'á��е�� á�͡��ǡ�͹���˹� ��е����ʹ��͹��ʹ(Placenta praevia, premature separation of placenta and antepartum haemorrhage)'
when q1.DX = '239' then '��ô��� ��ô���� ����ջѭ������ǡѺ��á㹤������жا��Ӥ��� ��лѭ�ҷ���Ҩ���Դ������Ф�ʹ (Other maternal care related to fetus and amniotic cavity and possible delivery problems)'
when q1.DX = '240' then '��ä�ʹ�Դ�Ѵ(Obstructed labour)'
when q1.DX = '241' then '�����ʹ��ѧ��ʹ(Postpartum haemorrhage)'
when q1.DX = '242' then '�����á��͹����ͧ��õ�駤������С�ä�ʹ(Other complications of pregnancy and delivery)'
when q1.DX = '243' then '��ä�ʹ�ͧ����������(Single spontaneous delivery)'
when q1.DX = '244' then '�����á��͹�����ǹ�˭辺�������ѧ��ʹ ������зҧ�ٵԡ������� ��������к���������´(Complications predominantly related to the puerperium and other obstetric conditions, not elsewhere classified)'
when q1.DX = '245' then '��á㹤��������á�Դ������Ѻ�Ũҡ�Ѩ��·ҧ��ô�����ä�á����е�駤�����纤������Ф�ʹ(Fetus and newborn affected by maternal factors and by complications of pregnancy, labour and delivery )'
when q1.DX = '246' then '��á㹤����⵪�� ��á㹤����Ҵ�������� ��Ф����Դ��������ǡѺ��õ�駤�������������й��˹ѡ��á�á�Դ����(Slow fetal growth, fetal malnutrition and disorders related to short gestation and low birth weight)'
when q1.DX = '247' then '�Ҵ�纨ҡ��ä�ʹ(Birth trauma)'
when q1.DX = '248' then '�Ҵ�͡��ਹ���������ç���١ ���������ʿԡ���������á�Դ(Intrauterine hypoxia and birth asphyxia)'
when q1.DX = '249' then '�������㨼Դ������������л�ԡ���Դ(Other respiratory disorders originating in the perinatal period )'
when q1.DX = '250' then '��õԴ���������Դ����ä�����Ե(Congenital infectious and parasitic diseases)'
when q1.DX = '251' then '��õԴ����੾����������л�ԡ���Դ(Other infections specific to the perinatal period)'
when q1.DX = '252' then '�ä������ʹᵡ�ͧ��á㹤��������á�Դ(Haemolytic disease of fetus and newborn )'
when q1.DX = '253' then '�Ҵ�纨ҡ��ä�ʹ(Other conditions originating in the perinatal period)'
when q1.DX = '254' then '��д١�ѹ��ѧ�¡(Spina bifida)'
when q1.DX = '255' then '�����Դ�������������Դ�ͧ�к�����ҷ(Other congenital malformations of the nervous system)'
when q1.DX = '256' then '�����Դ���������Դ�ͧ�к�������¹���Ե(Congenital malformations of the circulatory system)'
when q1.DX = '257' then '�ҡ�������ྴҹ����(Cleft lip and cleft palate)'
when q1.DX = '258' then '�������������յѹ��еպ(Absence,atresia and stenosis of small intestine)'
when q1.DX = '259' then '�����Դ���������Դ����ͧ�к����������(Other congenital malformations of the digestive system)'
when q1.DX = '260' then '�ѳ�����ŧ�ا(Undescended testicle)'
when q1.DX = '261' then '�����Դ��������ͧ�к��׺�ѹ�����зҧ�Թ�������(Other malformations of the genitourinary system)'
when q1.DX = '262' then '�����ԡ�������Դ�ͧ��⾡(Congenital deformities of hip)'
when q1.DX = '263' then '�����ԡ�������Դ�ͧ���(Congenital deformities of feet)'
when q1.DX = '264' then '�����Դ������Ф����ԡ�������Դ����ͧ�к��������������ç��ҧ(Other congenital malformations and deformations of the musculoskeletal system)'
when q1.DX = '265' then '�����Դ���������Դ����(Other congenital malformations)'
when q1.DX = '266' then '�����Դ���Ԣͧ��������������������к���������(Chromosomal abnormalities, not elsewhere classified)'
when q1.DX = '267' then '�Ǵ��ͧ��лǴ����ԧ��ҹ (Abdominal and pelvic pain)'
when q1.DX = '268' then '������Һ���˵�(Fever of unknown origin)'
when q1.DX = '269' then '����Ҿ(Senility)'
when q1.DX = '270' then '�ҡ�� �ҡ���ʴ������觼Դ���Է�辺�ҡ��õ�Ǩ�ҧ��Թԡ��е�Ǩ�ҧ ��ͧ��Ժѵԡ�÷�������������к����(Other symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified)'
when q1.DX = '271' then '��д١ᵡ�ѡ����ǳ�����š�������С�д١˹��(Fracture of skull and facial bones)'
when q1.DX = '272' then '��д١�� ��д١����ç ���͡�д١�ԧ��ҹ�ѡ(Fracture of neck, thorax or pelvis)'
when q1.DX = '273' then '��д١�鹢�ᵡ �ѡ ����(Fracture of femur)'
when q1.DX = '274' then '��д١ᵡ�ѡ�ͧᢹ������(Fractures of other limb bones)'
when q1.DX = '275' then '��д١ᵡ�ѡ���º���ǳ���ҧ���(Fractures involving multiple body regions)'
when q1.DX = '276' then '��д١����͹ ��� �Ѵ ����ǳ��ҧ���������觷���к�੾��(Dislocations, sprains and strains of specified and multiple body regions)'
when q1.DX = '277' then '��úҴ�红ͧ�������ҵ�(Injury of eye and orbit)'
when q1.DX = '278' then '��úҴ�����㹡����š�����(Intracranial injury)'
when q1.DX = '279' then '��úҴ�红ͧ��������������(Injury of other internal organs)'
when q1.DX = '280' then '��úҴ�纨ҡ��ú��Ѵ��С�úҴ�纷���Դ��ҡ�Ѵ�Һ��ǳ��ҧ���������觷���к�੾��(Crushing injuries and traumatic amputations of specified and multiple body regions )'
when q1.DX = '281' then '��úҴ���к�੾������,����к�੾��������º���ǳ���ҧ���(Other injuries of specified, unspecified and multiple body regions)'
when q1.DX = '282' then '�Ţͧ�ѵ���š������ҹ��ҷҧ���ø����ҵԢͧ��ҧ���(Effects of foreign body entering through natural orifice)'
when q1.DX = '283' then '�Ŷ١������͹��ж١��áѴ���͹(Burns and corrosions)'
when q1.DX = '284' then '����繾�ɨҡ�� ����ͧ����Ъ���ѵ��(Poisoning by drugs and biological substances)'
when q1.DX = '285' then '����繾�ɨҡ��÷������ǹ�˭����������������(Toxic effects of substances chiefly nonmedicinal as to source)'
when q1.DX = '286' then '������ҡ�èҡ��÷��س(Maltreatment syndrome)'
when q1.DX = '287' then '������з�������кؼŢͧ���˵���¹͡(Other and unspecified effects of external causes)'
when q1.DX = '288' then '�����á��͹�����á�ͧ��úҴ�纺ҧ��Դ ��������á��͹�ͧ����ѡ�ҷҧ���¡����������á�����������������к���������(Certain early complications of trauma and complications,of surgical and medical care not elsewhere classified)'
when q1.DX = '289' then '��������Ңͧ��úҴ�� ����繾����мŷ�����Ҩҡ���˵���¹͡����(Sequelae of injuries, poisoning and of other consequences of external causes)'
when q1.DX = '290' then '�ؤ�Ţ��Ѻ��ԡ�����͡�õ�Ǩ��Ъѹ�ٵ�(Persons encountering health services for examination and investigation)'
when q1.DX = '291' then '��õԴ�����������������ҡ��(Asymptomatic human immunodeficiency virus [HIV] infection status)'
when q1.DX = '292' then '�ؤ�ŷ�����ҡ�÷���Ҩ����ѹ���µ���آ�Ҿ�����������ͧ�Ѻ�ä�Դ���(Other persons with potential health hazards related to communicable disease)'
when q1.DX = '293' then '����Ѻ��ԡ�ä������Դ(Contraceptive management)'
when q1.DX = '294' then '��õ�Ǩ�Ѵ��ͧ��͹��ä�ʹ ��С��������й������ǡѺ��õ�駤��������(Antenatal screening and other supervision of pregnancy)'
when q1.DX = '295' then '����Դ�ͧ��á���ʶҹ����Դ(Liveborn infants according to place of birth)'
when q1.DX = '296' then '��ô�����С�õ�Ǩ��ѧ��ʹ(Postpartum care and examination)'
when q1.DX = '297' then '�ؤ�Ţ��Ѻ��ԡ���آ�Ҿ �����ѵ�������͡�ú�ԡ���آ�Ҿ����к�੾��(Persons encountering health services for specific procedures and health care)'
when q1.DX = '298' then '�ؤ�Ţ��Ѻ��ԡ���آ�Ҿ�����˵ؼ����(Persons encountering health services for other reasons)'
when q1.DX = '299' then '��Դ(Covid)'
else '' end as �����ä
--,sum(q1.�ӹǹ) as �ӹǹ
,case when q1.DX between '1' and '298' then sum(q1.�ӹǹ) when q1.DX = '299' then sum(q1.�ӹǹ��Դ) else 0 end as �ӹǹ   

from
(select distinct
b_icd10.icd10_number as icd10_number
,case when b_icd10.icd10_number like 'A00%' then 1 
when b_icd10.icd10_number like 'A01%' then 2
when b_icd10.icd10_number like 'A03%' then 3
when b_icd10.icd10_number like 'A06%' then 4
when b_icd10.icd10_number like 'A09%' then 5
when (b_icd10.icd10_number like 'A02%' or (b_icd10.icd10_number between 'A04' and 'A05.9') 
or (b_icd10.icd10_number between 'A07' and 'A08.9')) then 6
when b_icd10.icd10_number between 'A15' and 'A16.9' then 7
when b_icd10.icd10_number between 'A17' and 'A19.9' then 8
when b_icd10.icd10_number like 'A20%' then 9
when b_icd10.icd10_number like 'A23%' then 10
when b_icd10.icd10_number like 'A30%' then 11
when b_icd10.icd10_number like 'A33%' then 12
when b_icd10.icd10_number between 'A34' and 'A35.9' then 13
when b_icd10.icd10_number like 'A36%' then 14
when b_icd10.icd10_number like 'A37%' then 15
when b_icd10.icd10_number like 'A39%' then 16
when b_icd10.icd10_number between 'A40' and 'A41.9' then 17
when (b_icd10.icd10_number like 'A38%' or (b_icd10.icd10_number between 'A21' and 'A22.9') 
or (b_icd10.icd10_number between 'A24' and 'A28.9') or (b_icd10.icd10_number between 'A31' and 'A32.9')
or (b_icd10.icd10_number between 'A42' and 'A49.9')) then 18
when b_icd10.icd10_number like 'A50%' then 19
when b_icd10.icd10_number like 'A51%' then 20
when b_icd10.icd10_number between 'A52' and 'A53.9' then 21
when b_icd10.icd10_number like 'A54%' then 22
when b_icd10.icd10_number between 'A55' and 'A56.9' then 23
when b_icd10.icd10_number between 'A57' and 'A64.9' then 24
when b_icd10.icd10_number like 'A68%' then 25
when b_icd10.icd10_number like 'A71%' then 26
when b_icd10.icd10_number like 'A75%' then 27
when b_icd10.icd10_number like 'A80%' then 28
when b_icd10.icd10_number like 'A82%' then 29
when b_icd10.icd10_number between 'A83' and 'A86.9' then 30
when b_icd10.icd10_number like 'A95%' then 31
when ((b_icd10.icd10_number between 'A90' and 'A94.9') 
or (b_icd10.icd10_number between 'A96' and 'A99.9')) then 32
when b_icd10.icd10_number like 'B00%' then 33
when b_icd10.icd10_number between 'B01' and 'B02.9' then 34
when b_icd10.icd10_number like 'B05%' then 35
when b_icd10.icd10_number like 'B06%' then 36
when b_icd10.icd10_number like 'B16%' then 37
when (b_icd10.icd10_number like 'B15%' or (b_icd10.icd10_number between 'B17' and 'B19.9')) then 38
when b_icd10.icd10_number between 'B20' and 'B24.9' then 39
when b_icd10.icd10_number like 'B26%' then 40
when (b_icd10.icd10_number like 'A81%' or (b_icd10.icd10_number between 'A87' and 'A89.9')
or (b_icd10.icd10_number between 'B03' and 'B04.9') or (b_icd10.icd10_number between 'B07' and 'B09.9')
or (b_icd10.icd10_number between 'B27' and 'B34.9') or (b_icd10.icd10_number like 'B25%')) then 41
when b_icd10.icd10_number between 'B35' and 'B49.9' then 42
when b_icd10.icd10_number between 'B50' and 'B54.9' then 43
when b_icd10.icd10_number like 'B55%' then 44
when b_icd10.icd10_number between 'B56' and 'B57.9' then 45
when b_icd10.icd10_number like 'B65%' then 46
when b_icd10.icd10_number like 'B66%' then 47
when b_icd10.icd10_number like 'B67%' then 48
when b_icd10.icd10_number like 'B72%' then 49
when b_icd10.icd10_number like 'B73%' then 50 
when b_icd10.icd10_number like 'B74%' then 51
when b_icd10.icd10_number like 'B76%' then 52
when (b_icd10.icd10_number like 'B75%' or (b_icd10.icd10_number between 'B68' and 'B71.9')
or (b_icd10.icd10_number between 'B77' and 'B83.9')) then 53
when b_icd10.icd10_number like 'B90%' then 54
when b_icd10.icd10_number like 'B91%' then 55
when b_icd10.icd10_number like 'B92%' then 56
when (b_icd10.icd10_number like 'A74%' or (b_icd10.icd10_number like 'B94%') or (b_icd10.icd10_number like 'B99%')
or (b_icd10.icd10_number between 'A65' and 'A67.9') or (b_icd10.icd10_number between 'A69' and 'A70.9')
or (b_icd10.icd10_number between 'A77' and 'A79.9') or (b_icd10.icd10_number like 'A74%') or (b_icd10.icd10_number between 'B58' and 'B60.9')
or (b_icd10.icd10_number between 'B85' and 'B89.9') or (b_icd10.icd10_number like 'B64%') or (b_icd10.icd10_number like 'B94%')
or (b_icd10.icd10_number like 'B99%')) then 57
when b_icd10.icd10_number between 'C00' and 'C14.9' then 58
when b_icd10.icd10_number like 'C15%' then 59
when b_icd10.icd10_number like 'C16%' then 60
when b_icd10.icd10_number like 'C18%' then 61
when b_icd10.icd10_number between 'C19' and 'C21.9' then 62
when b_icd10.icd10_number like 'C22%' then 63
when b_icd10.icd10_number like 'C25%' then 64
when (b_icd10.icd10_number like 'C17%' or (b_icd10.icd10_number like 'C26%')
or (b_icd10.icd10_number between 'C23' and 'C24.9')) then 65
when b_icd10.icd10_number like 'C32%' then 66
when b_icd10.icd10_number between 'C33' and 'C34.9' then 67
when (b_icd10.icd10_number between 'C30' and 'C31.9' or (b_icd10.icd10_number between 'C37' and 'C39.9')) then 68
when b_icd10.icd10_number between 'C40' and 'C41.9' then 69
when b_icd10.icd10_number like 'C43%' then 70
when b_icd10.icd10_number like 'C44%' then 71
when b_icd10.icd10_number between 'C45' and 'C49.9' then 72
when b_icd10.icd10_number like 'C50%' then 73
when b_icd10.icd10_number like 'C53%' then 74
when b_icd10.icd10_number between 'C54' and 'C55.9' then 75
when (b_icd10.icd10_number between 'C51' and 'C52.9' or (b_icd10.icd10_number between 'C56' and 'C58.9')) then 76
when b_icd10.icd10_number like 'C61%' then 77
when (b_icd10.icd10_number like 'C60%' or (b_icd10.icd10_number between 'C62' and 'C63.9')) then 78
when b_icd10.icd10_number like 'C67%' then 79
when (b_icd10.icd10_number like 'C68%' or (b_icd10.icd10_number between 'C64' and 'C66.9')) then 80
when b_icd10.icd10_number like 'C69%' then 81
when b_icd10.icd10_number like 'C71%' then 82
when (b_icd10.icd10_number like 'C70%' or (b_icd10.icd10_number like 'C72%')) then 83
when (b_icd10.icd10_number like 'C97%' or (b_icd10.icd10_number between 'C73' and 'C80.9')) then 84
when b_icd10.icd10_number like 'C81%' then 85
when b_icd10.icd10_number between 'C82' and 'C85.9' then 86
when b_icd10.icd10_number between 'C91' and 'C95.9' then 87
when (b_icd10.icd10_number like 'C96%' or (b_icd10.icd10_number like 'C88%') or (b_icd10.icd10_number like 'C80%')) then 88
when b_icd10.icd10_number like 'D06%' then 89
when b_icd10.icd10_number between 'D22' and 'D23.9' then 90
when b_icd10.icd10_number like 'D24%' then 91
when b_icd10.icd10_number like 'D25%' then 92
when b_icd10.icd10_number like 'D27%' then 93
when b_icd10.icd10_number like 'D30%' then 94
when b_icd10.icd10_number like 'D33%' then 95
when (b_icd10.icd10_number like 'D26%' or (b_icd10.icd10_number between 'D00' and 'D05.9') 
or (b_icd10.icd10_number like 'D07%') or (b_icd10.icd10_number between 'D09' and 'D21.9') or (b_icd10.icd10_number between 'D28' and 'D29.9')
or (b_icd10.icd10_number between 'D31' and 'D32.9') or (b_icd10.icd10_number between 'D34' and 'D48.9')) then 96
when b_icd10.icd10_number like 'D50%' then 97
when ((b_icd10.icd10_number between 'D51' and 'D53.9') or (b_icd10.icd10_number between 'D55' and 'D64.9')) then 98
when b_icd10.icd10_number between 'D64' and 'D77.9' then 99
when ((b_icd10.icd10_number between 'D80' and 'D84.9') or (b_icd10.icd10_number like 'D86%') or (b_icd10.icd10_number like 'D89%')) then 100
when b_icd10.icd10_number between 'E00' and 'E02.9' then 101
when b_icd10.icd10_number like 'E05%' then 102
when (b_icd10.icd10_number between 'E03' and 'E04.9' or (b_icd10.icd10_number between 'E06' and 'E07.9')) then 103
when b_icd10.icd10_number between 'E10' and 'E14.9' then 104
when b_icd10.icd10_number between 'E40' and 'E46.9' then 105
when b_icd10.icd10_number like 'E50%' then 106
when b_icd10.icd10_number between 'E51' and 'E56.9' then 107
when b_icd10.icd10_number like 'E64%' then 108
when b_icd10.icd10_number like 'E66%' then 109
when b_icd10.icd10_number like 'E86%' then 110
when (b_icd10.icd10_number like 'E65%' or (b_icd10.icd10_number between 'E15' and 'E16.9') 
or (b_icd10.icd10_number between 'E20' and 'E32.9')or (b_icd10.icd10_number between 'E34' and 'E35.9')
or (b_icd10.icd10_number between 'E58' and 'E61.9') or (b_icd10.icd10_number like 'E63%') or (b_icd10.icd10_number like 'E65%')
or (b_icd10.icd10_number between 'E67' and 'E68.9') or (b_icd10.icd10_number between 'E70' and 'E80.9')
or (b_icd10.icd10_number between 'E83' and 'E85.9') or (b_icd10.icd10_number between 'E87' and 'E90.9')) then 111
when b_icd10.icd10_number between 'F00' and 'F03.9' then 112
when b_icd10.icd10_number like 'F10%' then 113
when b_icd10.icd10_number between 'F11' and 'F19.9' then 114
when ((b_icd10.icd10_number between 'F20' and 'F25.9') or (b_icd10.icd10_number between 'F28' and 'F29.9')) then 115
when ((b_icd10.icd10_number between 'F30' and 'F34.9') or (b_icd10.icd10_number between 'F38' and 'F39.9'))  then 116
when ((b_icd10.icd10_number between 'F40' and 'F45.9') or b_icd10.icd10_number like 'F48%')  then 117
when ((b_icd10.icd10_number between 'F70' and 'F73.9') or (b_icd10.icd10_number between 'F78' and 'F79.9')) then 118
when ((b_icd10.icd10_number between 'F04' and 'F07.9') or (b_icd10.icd10_number like 'F09%') or (b_icd10.icd10_number between 'F50' and 'F55.9')
or (b_icd10.icd10_number between 'F59' and 'F66.9') or (b_icd10.icd10_number between 'F68' and 'F69.9') 
or (b_icd10.icd10_number between 'F80' and 'F84.9') or (b_icd10.icd10_number between 'F88' and 'F95.9')
or (b_icd10.icd10_number between 'F98' and 'F99.9')) then 119
when b_icd10.icd10_number between 'G00' and 'G09.9' then 120
when b_icd10.icd10_number like 'G20%' then 121
when b_icd10.icd10_number like 'G30%' then 122
when b_icd10.icd10_number like 'G35%' then 123
when b_icd10.icd10_number between 'G40' and 'G41.9' then 124
when b_icd10.icd10_number between 'G43' and 'G44.9' then 125
when b_icd10.icd10_number like 'G45%' then 126
when b_icd10.icd10_number between 'G50' and 'G59.9' then 127
when b_icd10.icd10_number between 'G80' and 'G83.9' then 128
when (b_icd10.icd10_number between 'G10' and 'G13.9' or (b_icd10.icd10_number between 'G21' and 'G26.9')
or (b_icd10.icd10_number between 'G31' and 'G32.9') or (b_icd10.icd10_number between 'G36' and 'G37.9')
or (b_icd10.icd10_number between 'G40' and 'G47.9') or (b_icd10.icd10_number between 'G60' and 'G73.9')
or (b_icd10.icd10_number between 'G10' and 'G13.9') or (b_icd10.icd10_number between 'G21' and 'G26.9')
or (b_icd10.icd10_number between 'G31' and 'G32.9') or (b_icd10.icd10_number between 'G36' and 'G37.9')
or (b_icd10.icd10_number between 'G46' and 'G47.9') or (b_icd10.icd10_number between 'G60' and 'G64.9')
or (b_icd10.icd10_number between 'G70' and 'G73.9') or (b_icd10.icd10_number between 'G90' and 'G99.9')) then 129
when b_icd10.icd10_number between 'H00' and 'H01.9' then 130
when ((b_icd10.icd10_number between 'H10' and 'H11.9') or b_icd10.icd10_number like 'H13%')  then 131
when b_icd10.icd10_number between 'H15' and 'H19.9' then 132
when b_icd10.icd10_number between 'H25' and 'H28.9' then 133
when b_icd10.icd10_number like 'H33%' then 134
when (b_icd10.icd10_number like 'H40%' or (b_icd10.icd10_number like 'H42%')) then 135
when b_icd10.icd10_number between 'H49' and 'H50.9' then 136
when b_icd10.icd10_number like 'H52%' then 137
when b_icd10.icd10_number like 'H54%' then 138
when (b_icd10.icd10_number like 'H51%' or(b_icd10.icd10_number like 'H53%')or(b_icd10.icd10_number like 'H55%') 
or (b_icd10.icd10_number between 'H02' and 'H06.9') or (b_icd10.icd10_number between 'H30' and 'H32.9')
or (b_icd10.icd10_number between 'H34' and 'H36.9')or (b_icd10.icd10_number between 'H43' and 'H48.9') 
or (b_icd10.icd10_number between 'H57' and 'H59.9')
or (b_icd10.icd10_number between 'H20' and 'H22.9')) then 139
when b_icd10.icd10_number between 'H65' and 'H75.9' then 140
when b_icd10.icd10_number between 'H90' and 'H91.9' then 141
when (b_icd10.icd10_number between 'H60' and 'H62.9' or (b_icd10.icd10_number between 'H80' and 'H83.9')
or (b_icd10.icd10_number between 'H92' and 'H95.9')) then 142
when b_icd10.icd10_number between 'I00' and 'I02.9' then 143
when b_icd10.icd10_number between 'I05' and 'I09.9' then 144
when b_icd10.icd10_number like 'I10%' then 145
when ((b_icd10.icd10_number between 'I11' and 'I13.9') or b_icd10.icd10_number like 'I15%')  then 146
when b_icd10.icd10_number between 'I21' and 'I22.9' then 147
when (b_icd10.icd10_number like 'I20%' or (b_icd10.icd10_number between 'I23' and 'I25.9')) then 148
when b_icd10.icd10_number like 'I26%' then 149
when b_icd10.icd10_number between 'I44' and 'I49.9' then 150
when b_icd10.icd10_number like 'I50%' then 151
when (b_icd10.icd10_number between 'I27' and 'I28.9' or (b_icd10.icd10_number between 'I30' and 'I43.9')
or (b_icd10.icd10_number between 'I51' and 'I52.9')) then 152
when b_icd10.icd10_number between 'I60' and 'I62.9' then 153
when b_icd10.icd10_number like 'I63%' then 154
when b_icd10.icd10_number like 'I64%' then 155
when b_icd10.icd10_number between 'I65' and 'I69.9' then 156
when b_icd10.icd10_number like 'I70%' then 157
when b_icd10.icd10_number like 'I73%' then 158
when b_icd10.icd10_number like 'I74%' then 159
when (b_icd10.icd10_number between 'I71' and 'I72.9' or (b_icd10.icd10_number between 'I77' and 'I79.9')) then 160
when b_icd10.icd10_number between 'I80' and 'I82.9' then 161
when b_icd10.icd10_number like 'I83%' then 162
when b_icd10.icd10_number like 'I84%' then 163
when ((b_icd10.icd10_number between 'I85' and 'I89.9') or (b_icd10.icd10_number between 'I97' and 'I99.9') or b_icd10.icd10_number like 'I95%') then 164
when b_icd10.icd10_number between 'J02' and 'J03.9' then 165
when b_icd10.icd10_number like 'J04%' then 166
when (b_icd10.icd10_number between 'J00' and 'J01.9' or (b_icd10.icd10_number between 'J05' and 'J06.9')) then 167
when b_icd10.icd10_number between 'J10' and 'J11.9' then 168
when b_icd10.icd10_number between 'J12' and 'J18.9' then 169
when b_icd10.icd10_number between 'J20' and 'J21.9' then 170
when b_icd10.icd10_number like 'J32%' then 171
when (b_icd10.icd10_number between 'J30' and 'J31.9' or (b_icd10.icd10_number between 'J33' and 'J34.9')) then 172
when b_icd10.icd10_number like 'J35%' then 173
when b_icd10.icd10_number between 'J36' and 'J39.9' then 174
when b_icd10.icd10_number between 'J40' and 'J44.9' then 175
when b_icd10.icd10_number between 'J45' and 'J46.9' then 176
when b_icd10.icd10_number like 'J47%' then 177
when b_icd10.icd10_number between 'J60' and 'J65.9' then 178
when (b_icd10.icd10_number like 'J22%' or (b_icd10.icd10_number between 'J66' and 'J70.9')
or (b_icd10.icd10_number between 'J80' and 'J82.9') or (b_icd10.icd10_number between 'J84' and 'J86.9')
or (b_icd10.icd10_number between 'J90' and 'J96.9') or (b_icd10.icd10_number between 'J98' and 'J99.9')) then 179
when b_icd10.icd10_number like 'K02%' then 180
when (b_icd10.icd10_number between 'K00' and 'K01.9' or (b_icd10.icd10_number between 'K03' and 'K08.9')) then 181
when b_icd10.icd10_number between 'K09' and 'K14.9' then 182
when b_icd10.icd10_number between 'K25' and 'K27.9' then 183
when b_icd10.icd10_number like 'K29%' then 184
when (b_icd10.icd10_number like 'K28%' or (b_icd10.icd10_number between 'K20' and 'K23.9') 
or (b_icd10.icd10_number between 'K30' and 'K31.9')) then 185
when b_icd10.icd10_number between 'K35' and 'K38.9' then 186
when b_icd10.icd10_number like 'K40%' then 187
when b_icd10.icd10_number between 'K41' and 'K46.9' then 188
when b_icd10.icd10_number between 'K50' and 'K51.9' then 189
when b_icd10.icd10_number like 'K56%' then 190
when b_icd10.icd10_number like 'K57%' then 191
when ((b_icd10.icd10_number like 'K52%') or(b_icd10.icd10_number like 'K55%') or (b_icd10.icd10_number between 'K58' and 'K63.9')
or (b_icd10.icd10_number between 'K65' and 'K67.9'))  then 192
when b_icd10.icd10_number like 'K70%' then 193
when b_icd10.icd10_number between 'K71' and 'K77.9' then 194
when b_icd10.icd10_number between 'K80' and 'K81.9' then 195
when b_icd10.icd10_number between 'K85' and 'K86.9' then 196
when (b_icd10.icd10_number between 'K82' and 'K83.9' or (b_icd10.icd10_number between 'K90' and 'K93.9') or b_icd10.icd10_number like 'K87%')  then 197
when ((b_icd10.icd10_number between 'L00' and 'L05.9') or b_icd10.icd10_number like 'L08%')  then 198
when ((b_icd10.icd10_number between 'L10' and 'L14.9') or (b_icd10.icd10_number between 'L20' and 'L30.9')
or (b_icd10.icd10_number between 'L40' and 'L45.9') or (b_icd10.icd10_number between 'L50' and 'L60.9')
or (b_icd10.icd10_number between 'L62' and 'L68.9') or (b_icd10.icd10_number between 'L70' and 'L75.9')
or (b_icd10.icd10_number between 'L80' and 'L95.9') or (b_icd10.icd10_number between 'L97' and 'L99.9'))  then 199
when b_icd10.icd10_number between 'M05' and 'M14.9' then 200
when b_icd10.icd10_number between 'M15' and 'M19.9' then 201
when b_icd10.icd10_number between 'M20' and 'M21.9' then 202
when (b_icd10.icd10_number between 'M00' and 'M03.9' or (b_icd10.icd10_number between 'M22' and 'M25.9'))  then 203
when b_icd10.icd10_number between 'M30' and 'M36.9' then 204
when b_icd10.icd10_number between 'M50' and 'M51.9' then 205
when (b_icd10.icd10_number between 'M40' and 'M49.9' or (b_icd10.icd10_number between 'M53' and 'M54.9'))  then 206
when b_icd10.icd10_number between 'M60' and 'M79.9' then 207
when b_icd10.icd10_number between 'M80' and 'M85.9' then 208
when b_icd10.icd10_number like 'M86%' then 209
when b_icd10.icd10_number between 'M87' and 'M99.9' then 210
when b_icd10.icd10_number between 'N00' and 'N01.9' then 211
when b_icd10.icd10_number between 'N02' and 'N08.9' then 212
when b_icd10.icd10_number between 'N10' and 'N16.9' then 213
when b_icd10.icd10_number between 'N17' and 'N19.9' then 214
when b_icd10.icd10_number between 'N20' and 'N23.9' then 215
when b_icd10.icd10_number like 'N30%' then 216
when (b_icd10.icd10_number between 'N25' and 'N29.9' or (b_icd10.icd10_number between 'N31' and 'N39.9'))  then 217
when b_icd10.icd10_number like 'N40%' then 218
when b_icd10.icd10_number between 'N41' and 'N42.9' then 219
when b_icd10.icd10_number like 'N43%' then 220
when b_icd10.icd10_number like 'N47%' then 221
when (b_icd10.icd10_number between 'N44' and 'N46.9' or (b_icd10.icd10_number between 'N48' and 'N51.9'))  then 222
when b_icd10.icd10_number between 'N60' and 'N64.9' then 223
when b_icd10.icd10_number like 'N70%' then 224
when b_icd10.icd10_number like 'N72%' then 225
when (b_icd10.icd10_number like 'N71%' or (b_icd10.icd10_number between 'N73' and 'N77.9')) then 226
when b_icd10.icd10_number like 'N80%' then 227
when b_icd10.icd10_number like 'N81%' then 228
when b_icd10.icd10_number like 'N83%' then 229
when b_icd10.icd10_number between 'N91' and 'N92.9' then 230
when b_icd10.icd10_number like 'N95%' then 231
when b_icd10.icd10_number like 'N97%' then 232
when (b_icd10.icd10_number like 'N82%' or (b_icd10.icd10_number like 'N96%') 
or (b_icd10.icd10_number between 'N84' and 'N90.9') or (b_icd10.icd10_number between 'N93' and 'N94.9') 
or (b_icd10.icd10_number between 'N98' and 'N99.9')) then 233
when b_icd10.icd10_number like 'O03%' then 234
when b_icd10.icd10_number like 'O04%' then 235
when (b_icd10.icd10_number between 'O00' and 'O02.9' or (b_icd10.icd10_number between 'O05' and 'O08.9'))  then 236
when b_icd10.icd10_number between 'O10' and 'O16.9' then 237
when b_icd10.icd10_number between 'O44' and 'O46.9' then 238
when (b_icd10.icd10_number between 'O30' and 'O36.9' or (b_icd10.icd10_number between 'O40' and 'O43.9')
or (b_icd10.icd10_number between 'O47' and 'O48.9'))  then 239
when b_icd10.icd10_number between 'O64' and 'O66.9' then 240
when b_icd10.icd10_number like 'O72%' then 241
when (b_icd10.icd10_number between 'O20' and 'O29.9' or (b_icd10.icd10_number between 'O60' and 'O63.9')
or (b_icd10.icd10_number between 'O67' and 'O71.9') or (b_icd10.icd10_number between 'O73' and 'O75.9')
or (b_icd10.icd10_number between 'O81' and 'O84.9'))  then 242
when b_icd10.icd10_number like 'O80%' then 243
when b_icd10.icd10_number between 'O85' and 'O99.9' then 244
when b_icd10.icd10_number between 'P00' and 'P04.9' then 245
when b_icd10.icd10_number between 'P05' and 'P07.9' then 246
when b_icd10.icd10_number between 'P10' and 'P15.9' then 247
when b_icd10.icd10_number between 'P20' and 'P21.9' then 248
when b_icd10.icd10_number between 'P22' and 'P28.9' then 249
when b_icd10.icd10_number between 'P35' and 'P37.9' then 250
when b_icd10.icd10_number between 'P38' and 'P39.9' then 251
when b_icd10.icd10_number like 'P55%' then 252
when (b_icd10.icd10_number like 'P08%' or (b_icd10.icd10_number like 'P29%') or (b_icd10.icd10_number like 'P83%') 
or (b_icd10.icd10_number between 'P50' and 'P54.9')
or (b_icd10.icd10_number between 'P56' and 'P61.9')
or (b_icd10.icd10_number between 'P70' and 'P78.9')
or (b_icd10.icd10_number between 'P80' and 'P81.9')
or (b_icd10.icd10_number between 'P90' and 'P96.9'))  then 253
when b_icd10.icd10_number like 'Q05%' then 254
when (b_icd10.icd10_number between 'Q00' and 'Q04.9' or (b_icd10.icd10_number between 'Q06' and 'Q07.9'))  then 255
when b_icd10.icd10_number between 'Q20' and 'Q28.9' then 256
when b_icd10.icd10_number between 'Q35' and 'Q37.9' then 257
when b_icd10.icd10_number like 'Q41%' then 258
when (b_icd10.icd10_number between 'Q38' and 'Q40.9' or (b_icd10.icd10_number between 'Q42' and 'Q45.9'))  then 259
when b_icd10.icd10_number like 'Q53%' then 260
when (b_icd10.icd10_number between 'Q50' and 'Q52.9' or (b_icd10.icd10_number between 'Q54' and 'Q56.9')
or (b_icd10.icd10_number between 'Q60' and 'Q64.9'))  then 261
when b_icd10.icd10_number like 'Q65%' then 262
when b_icd10.icd10_number like 'Q66%' then 263
when b_icd10.icd10_number between 'Q67' and 'Q79.9' then 264
when (b_icd10.icd10_number between 'Q10' and 'Q18.9' or (b_icd10.icd10_number between 'Q30' and 'Q34.9')
or (b_icd10.icd10_number between 'Q80' and 'Q87.9') or b_icd10.icd10_number like 'Q89%' )  then 265
when ((b_icd10.icd10_number between 'Q90' and 'Q93.9') or (b_icd10.icd10_number between 'Q95' and 'Q99.9'))  then 266
when b_icd10.icd10_number like 'R10%' then 267
when b_icd10.icd10_number like 'R50%' then 268
when b_icd10.icd10_number like 'R54%' then 269
when (b_icd10.icd10_number between 'R00' and 'R07.9' or (b_icd10.icd10_number between 'R11' and 'R23.9')
or (b_icd10.icd10_number between 'R25' and 'R36.9') or (b_icd10.icd10_number between 'R39' and 'R49.9') 
or (b_icd10.icd10_number between 'R51' and 'R53.9') or (b_icd10.icd10_number between 'R55' and 'R65.9') 
or (b_icd10.icd10_number between 'R68' and 'R87.9') or (b_icd10.icd10_number between 'R89' and 'R69.9')
or (b_icd10.icd10_number between 'R98' and 'R99.9') or b_icd10.icd10_number like 'R09%' )  then 270
when b_icd10.icd10_number like 'S02%' then 271
when b_icd10.icd10_number like 'S22%' OR b_icd10.icd10_number like 'S32%'  OR b_icd10.icd10_number like 'T08%'  then 272
when b_icd10.icd10_number like 'S72%' then 273
when b_icd10.icd10_number like 'S42%' OR b_icd10.icd10_number like 'S52%' OR b_icd10.icd10_number like 'S62%'  OR b_icd10.icd10_number like 'S82%'  OR b_icd10.icd10_number like 'S92%'  OR b_icd10.icd10_number like 'T10%'  OR b_icd10.icd10_number like 'T12%' then 274
when b_icd10.icd10_number like 'T02%' then 275
when b_icd10.icd10_number like 'S03%' OR b_icd10.icd10_number like 'S23%'  OR b_icd10.icd10_number like 'S33%'  OR b_icd10.icd10_number like 'S43%'  OR b_icd10.icd10_number like 'S53%'  OR b_icd10.icd10_number like 'S63%'  OR b_icd10.icd10_number like 'S73%'  OR b_icd10.icd10_number like 'S83%'  OR b_icd10.icd10_number like 'S93%'  OR b_icd10.icd10_number like 'T03%'  then 276
when b_icd10.icd10_number like 'S05%' then 277
when b_icd10.icd10_number like 'S60%' then 278
when (b_icd10.icd10_number between 'S26' and 'S27.9' or (b_icd10.icd10_number between 'S36' and 'S37.9')) then 279 
when (b_icd10.icd10_number between 'S07' and 'S08.9' or (b_icd10.icd10_number like 'S28%') or (b_icd10.icd10_number like 'S38%')
or (b_icd10.icd10_number between 'S47' and 'S48.9') or (b_icd10.icd10_number between 'S57' and 'S58.9') 
or (b_icd10.icd10_number between 'S67' and 'S68.9') or (b_icd10.icd10_number between 'S77' and 'S78.9') 
or (b_icd10.icd10_number between 'S87' and 'S88.9') or (b_icd10.icd10_number between 'S97' and 'S98.9') 
or (b_icd10.icd10_number between 'T04' and 'T05.9'))  then 280
when (b_icd10.icd10_number like 'S04%' or (b_icd10.icd10_number like 'S99%') or (b_icd10.icd10_number like 'T09%')
or (b_icd10.icd10_number like 'T11%')    
or (b_icd10.icd10_number between 'S00' and 'S01.9') or (b_icd10.icd10_number between 'S09' and 'S21.9') 
or (b_icd10.icd10_number between 'S24' and 'S25.9') or (b_icd10.icd10_number between 'S29' and 'S31.9') 
or (b_icd10.icd10_number between 'S34' and 'S35.9') or (b_icd10.icd10_number between 'S39' and 'S41.9') 
or (b_icd10.icd10_number between 'S44' and 'S46.9') or (b_icd10.icd10_number between 'S49' and 'S51.9')
or (b_icd10.icd10_number between 'S54' and 'S56.9') or (b_icd10.icd10_number between 'S59' and 'S61.9') 
or (b_icd10.icd10_number between 'S64' and 'S66.9') or (b_icd10.icd10_number between 'S69' and 'S71.9') 
or (b_icd10.icd10_number between 'S74' and 'S76.9') or (b_icd10.icd10_number between 'S79' and 'S81.9') 
or (b_icd10.icd10_number between 'S84' and 'S86.9') or (b_icd10.icd10_number between 'S89' and 'S91.9') 
or (b_icd10.icd10_number between 'S94' and 'S96.9') or (b_icd10.icd10_number between 'T00' and 'T01.9')
or (b_icd10.icd10_number between 'T06' and 'T07.9') or (b_icd10.icd10_number between 'T13' and 'T14.9'))  then 281
when b_icd10.icd10_number between 'T15' and 'T19.9' then 282
when b_icd10.icd10_number between 'T20' and 'T32.9' then 283
when b_icd10.icd10_number between 'T36' and 'T50.9' then 284
when b_icd10.icd10_number between 'T51' and 'T65.9' then 285
when b_icd10.icd10_number like 'T74%' then 286
when (b_icd10.icd10_number between 'T33' and 'T35.9' 
or(b_icd10.icd10_number between 'T66' and 'T71.9') or (b_icd10.icd10_number like 'T73%') 
or(b_icd10.icd10_number like 'T75%') or (b_icd10.icd10_number like 'T78%')) then 287
when b_icd10.icd10_number between 'T79' and 'T88.9' then 288
when b_icd10.icd10_number between 'T90' and 'T98.9' then 289
when b_icd10.icd10_number between 'Z00' and 'Z04.9'or (b_icd10.icd10_number between 'Z08' and 'Z13.9') then 290
when b_icd10.icd10_number like 'Z21%' then 291
when (b_icd10.icd10_number like 'Z20%' or (b_icd10.icd10_number between 'Z22' and 'Z29.9')) then 292
when b_icd10.icd10_number like 'Z30%' then 293
when b_icd10.icd10_number between 'Z34' and 'Z36.9' then 294
when b_icd10.icd10_number like 'Z38%' then 295
when b_icd10.icd10_number like 'Z37%' or (b_icd10.icd10_number between 'Z39' and 'Z39.9') then 296
when b_icd10.icd10_number between 'Z40' and 'Z54.9' then 297
when ((b_icd10.icd10_number between 'Z31' and 'Z33.9')or (b_icd10.icd10_number between 'Z55' and 'Z65.9')
or(b_icd10.icd10_number between 'Z70' and 'Z76.9') or (b_icd10.icd10_number between 'Z80' and 'Z99.9')) then 298
when b_icd10.icd10_number like 'U07.1' then 299
else 0 end as DX
,count(q2.diag_icd10_number) as �ӹǹ
,count(q3.diag_icd10_number1) as �ӹǹ��Դ

from b_icd10  
left join(select distinct
t_visit.visit_vn as VN
,t_visit.visit_hn as HN
,t_diag_icd10.diag_icd10_number as diag_icd10_number

from t_visit
inner join t_patient on t_patient.t_patient_id = t_visit.t_patient_id
left join t_diag_icd10 on (t_visit.t_visit_id = t_diag_icd10.diag_icd10_vn and diag_icd10_active = '1'
and t_diag_icd10.f_diag_icd10_type_id = '1')

where 
t_visit.f_visit_status_id <> '4'
and t_visit.f_visit_type_id = '1'
and substring(t_visit.visit_staff_doctor_discharge_date_time,1,10) Between substring('2563-10-01',1,10) and substring('2564-08-31',1,10)
) as q2
on b_icd10.icd10_number = q2.diag_icd10_number

left join(select distinct
t_visit.visit_vn as VN
,t_visit.visit_hn as HN
,t_diag_icd10.diag_icd10_number as diag_icd10_number1

from t_visit
inner join t_patient on t_patient.t_patient_id = t_visit.t_patient_id
left join t_diag_icd10 on (t_visit.t_visit_id = t_diag_icd10.diag_icd10_vn and diag_icd10_active = '1')

where 
t_visit.f_visit_status_id <> '4'
and t_visit.f_visit_type_id = '1'
and t_diag_icd10.diag_icd10_number like 'U07.1'
and substring(t_visit.visit_staff_doctor_discharge_date_time,1,10) Between substring('2563-10-01',1,10) and substring('2564-08-16',1,10)
) as q3
on b_icd10.icd10_number = q3.diag_icd10_number1

group by b_icd10.icd10_number
order by icd10_number ASC
) as q1
where q1.DX <> '0'
group by �ӴѺ������ä
order by �ӴѺ������ä ASC