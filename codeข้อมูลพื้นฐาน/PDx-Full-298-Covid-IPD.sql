select distinct
q1.DX as ลำดับกลุ่มโรค
,case when q1.DX = '1' then 'โรคบิดมีตัว (Amoebiasis)'
when q1.DX = '2' then 'โรคลําไส้อักเสบอื่นๆ(Other intestinal infectious disease)'
when q1.DX = '3' then 'โรคบิดจากเชื้อซิเกลลา(Shigellosis)'
when q1.DX = '4' then 'โรคบิดมีตัว(Amoebiasis)'
when q1.DX = '5' then 'อาการท้องร่วงกระเพาะและลําไส้อักเสบซึ่งสันนิษฐานว่าเกิดจากการติดเชื้อ(Diarrhoea and gastroenteritis of presumed infectious origin)'
when q1.DX = '6' then 'โรคลําไส้อักเสบอื่นๆ(Other intestinal infectious diseases)'
when q1.DX = '7' then 'วัณโรคทางเดินหายใจ(Respiratory tuberculosis)'
when q1.DX = '8' then 'วัณโรคอื่นๆ(Other tuberculosis)'
when q1.DX = '9' then 'กาฬโรค(Plague)'
when q1.DX = '10' then 'โรคติดเชื้อบูรเซลลา(Brucellosis)'
when q1.DX = '11' then 'โรคเรื้อน(Leprosy)'
when q1.DX = '12' then 'บาดทะยักในเด็กแรกเกิด(Tetanus neonatorum)'
when q1.DX = '13' then 'บาดทะยักอื่นๆ(Other tetanus)'
when q1.DX = '14' then 'โรคคอตีบ(Diphtheria)'
when q1.DX = '15' then 'โรคไอกรน(Whooping cough)'
when q1.DX = '16' then 'การติดเชื้อเมนิงโกคอคคัส(Meningococcal infection)'
when q1.DX = '17' then 'โลหิตเป็นพิษ(Septicaemia)'
when q1.DX = '18' then 'โรคจากแบคทีเรียอื่นๆ(Other bacterial diseases)'
when q1.DX = '19' then 'ซิฟิลิสแต่กําเนิด(Congenital syphilis)'
when q1.DX = '20' then 'ซิฟิลิสระยะเริ่ม(Early syphilis)'
when q1.DX = '21' then 'ซิฟิลิสอื่นๆ(Other syphilis)'
when q1.DX = '22' then 'การติดเชื้อหนองใน(Gonococcal infection)'
when q1.DX = '23' then 'โรคติดต่อทางเพศสัมพันธืจากเชื้อคลามัยเดีย(Sexually transmitted chlamydial diseases)'
when q1.DX = '24' then 'โรคติดเชื้ออื่นๆที่ติดต่อทางเพศสัมพันธ์เป๊นส่วนมาก(Other infections with a predominantly sexual mode of transmission)'
when q1.DX = '25' then 'โรคไข้กลับซ้ำ(Relapsing fevers)'
when q1.DX = '26' then 'ริดสีดวงตา(Trachoma)'
when q1.DX = '27' then 'ไข้รากสาดใหญ่(Typhus fever)'
when q1.DX = '28' then 'โรคโปลิโอเฉียบพลัน(Acute poliomyelitis)'
when q1.DX = '29' then 'โรคพิษสุนัขบ้า(Rabies)'
when q1.DX = '30' then 'สมองอักเสบจากเชื้อไวรัส(Viral encephalitis)'
when q1.DX = '31' then 'ไข้เหลือง(Yellow fever)'
when q1.DX = '32' then 'ไข้จากไวรัสที่นําโดยแมลงและไข้เลือดออกที่เกิดจากไวรัสอื่นๆ(Other arthropod-borne viral fevers and viral haemorrhagic fevers)'
when q1.DX = '33' then 'เริม(Herpesviral infections)'
when q1.DX = '34' then 'อีสุกอีใสและงูสวัส(Varicella and zoster)'
when q1.DX = '35' then 'หัด(Measles)'
when q1.DX = '36' then 'หัดเยอรมัน(Rubella)'
when q1.DX = '37' then 'ตับอักเสบเฉียบพลันชนิดบี(Acute hepatitis B)'
when q1.DX = '38' then 'ตับอักเสบจากไวรัสอื่นๆ(Other viral hepatitis)'
when q1.DX = '39' then 'ภูมิคุ้มกันบกพร่องเนื่องจากไวรัส(HIV)(Human immunodeficiency virus [HIV] disease)'
when q1.DX = '40' then 'คางทูม(Mumps)'
when q1.DX = '41' then 'โรคจากไวรัสอื่น(Other viral diseases)'
when q1.DX = '42' then 'โรคติดเชื้อรา(Mycoses)'
when q1.DX = '43' then 'มาลาเรีย(Malaria)'
when q1.DX = '44' then 'โรคลิซมาเนีย(Leishmaniasis)'
when q1.DX = '45' then 'โรคทริปาโนโซม(Trypanosomiasis)'
when q1.DX = '46' then 'โรคติดเชื้อซิสโตโซม(Schistosomiasis )'
when q1.DX = '47' then 'โรคพยาธิใบไม้อื่นๆ(Other fluke infections)'
when q1.DX = '48' then 'โรคพยาธิเอคคิโนคอคคัส(Echinococcosis)'
when q1.DX = '49' then 'โรคพยาธิดราคันคูลัส(Dracunculiasis)'
when q1.DX = '50' then 'โรคพยาธิออนโคเซอร์คา(Onchocerciasis)' 
when q1.DX = '51' then 'โรคพยาธิฟิลาเรีย(Filariasis)'
when q1.DX = '52' then 'โรคพยาธิปากขอ(Hookworm diseases)'
when q1.DX = '53' then 'โรคพยาธิตัวตืดอื่นๆ(Other helminthiases)'
when q1.DX = '54' then 'ผลตามหลังวัณโรค(Sequelae of tuberculosis)'
when q1.DX = '55' then 'ผลตามหลังโรคโปลิโอ(Sequelae of poliomyelitis)'
when q1.DX = '56' then 'ผลตามหลังโรคเรื้อน(Sequelae of leprosy)'
when q1.DX = '57' then 'โรคติดเชื้อและปรสิตอื่นๆ(Other infectious and parasitic diseases)'
when q1.DX = '58' then 'เนื้องอกร้ายของริมฝีปาก ช่องปากและคอหอย(Malignant neoplasm of lip, oral cavity and pharynx)'
when q1.DX = '59' then 'เนื้องอกร้ายที่กระเพาะอาหาร(Malignant neoplasm of oesophagus)'
when q1.DX = '60' then 'เนื้องอกร้ายที่กระเพาะอาหาร(Malignant neoplasm of stomach)'
when q1.DX = '61' then 'เนื้องอกร้ายของลําไส้ใหญ่(Malignant neoplasm of colon)'
when q1.DX = '62' then 'โรคติดเชื้อและปรสิตอื่นๆ(Other infectious and parasitic diseases)'
when q1.DX = '63' then 'เนื้องอกร้ายที่รอยต่อลําไส้ใหญ่เร็คดัมและซิกมอยด์ เร็คดัม ทวารหนักและช่องทวารหนัก(Other infectious and parasitic diseases anal canal)'
when q1.DX = '64' then 'เนื้องอกร้ายที่ตับและท่อน้ำดีในตับ(Malignant neoplasm of liver and intrahepatic bile ducts)'
when q1.DX = '65' then 'เนื้องอกร้ายที่อวัยวะย่อยอาหารอื่นๆ(Other malignant neoplasms of digestive organs )'
when q1.DX = '66' then 'เนื้องอกร้ายที่กล่องเสียง(Malignant neoplasms of larynx)'
when q1.DX = '67' then 'เนื้องอกร้ายที่หลอดคอ หลอดลม และปอด(Malignant neoplasm of trachea, bronchus and lung)'
when q1.DX = '68' then 'เนื้องอกร้ายที่อวัยวะหายใจและอวัยวะที่ช่องอก(Other malignant neoplasms of respiratory and intrathoracic organs )'
when q1.DX = '69' then 'เนื้องอกร้ายที่กระดูกและกระดูกอ่อนผิวข้อ(Malignant neoplasm of bone and articular cartilage)'
when q1.DX = '70' then 'เนื้องอกร้ายที่เมลาโนมาของผิวหนัง(Malignant melanoma of skin)'
when q1.DX = '71' then 'เนื้องอกร้ายที่ผิวหนังอื่นๆ(Other malignant neoplasms of skin)'
when q1.DX = '72' then 'เนื้องอกร้ายที่เมโสชีเรียลและเนื้อเยื่ออ่อน(Malignant neoplasms of mesothelial and soft tissue)'
when q1.DX = '73' then 'เนื้องอกร้ายที่เต้านม(Malignant neoplasm of breast)'
when q1.DX = '74' then 'เนื้องอกร้ายที่ปากมดลูก(Malignant neoplasm of cervix uteri)'
when q1.DX = '75' then 'เนื้องอกร้ายอื่นๆที่มิได้ระบุส่วนของมดลูก(Malignant neoplasm of other and unspecified parts of uterus)'
when q1.DX = '76' then 'เนื้องอกร?ายของอวัยวะสืบพันธุ์หญิง(Other malignant neoplasms of female genital organs )'
when q1.DX = '77' then 'เนื้องอกร้ายที่ต่อมลูกหมาก(Malignant neoplasm of prostate)'
when q1.DX = '78' then 'เนื้องอกร้ายของอวัยวะสืบพันธุ์ชาย(Other malignant neoplasms of male genital organs)'
when q1.DX = '79' then 'เนื้องอกร้ายที่กระเพาะปัสสาวะ(Malignant neoplasm of bladder)'
when q1.DX = '80' then 'เนื้องอกร้ายอื่นๆที่ท่อป้สสาวะ(Other malignant neoplasm of urinary tract)'
when q1.DX = '81' then 'เนื้องอกร้ายของตาและส่วนประกอบ(Malignant neoplasm of eye and adnexa)'
when q1.DX = '82' then 'เนื้องอกร้ายของสมอง(Malignant neoplasm of brain)'
when q1.DX = '83' then 'เนื้องอกร้ายที่ส่วนอื่นๆของระบบประสาทส่วนกลาง(Malignant neoplasm of other parts of central nervous system)'
when q1.DX = '84' then 'เนื้องอกอื่นๆและที่ไม่ทราบสาเหตุ เนื้องอกทุติยภูมิที่มิได้ระบุรายละเอียดและเกิดขึ้นหลายแห่ง(Malignant neoplasm of other, ill-defined, secondary, unspecified and multiple sites)'
when q1.DX = '85' then 'โรคฮอดกินส์(Hodgkin is disease )'
when q1.DX = '86' then 'เนื้องอกร้ายลิมโฟมาที่มิใช่โรคฮอดกินส์(Non-Hodgkin is lymphoma)'
when q1.DX = '87' then 'ลิวคีเมีย(Leukaemia)'
when q1.DX = '88' then 'เนื้องอกร้ายอื่นๆของลิมฟอยด์อื่นๆระบบสร้างเม็ดเลือดและเนื้อเยื่อ(Other malignant neoplasms of lymphoid, haematopoietic and related tissue )'
when q1.DX = '89' then 'มะเร็งจํากัดเฉพาะที่ของปากมดลูก(Carcinoma in situ of cervix uteri)'
when q1.DX = '90' then 'เนื้องอกไม่ร้ายของผิวหนัง(Benign neoplasm of skin)'
when q1.DX = '91' then 'เนื้องอกไม่ร้ายของเต้านม(Benign neoplasm of breast)'
when q1.DX = '92' then 'ไลโอไมโอมาที่ มดลูก(Leiomyoma of uterus)'
when q1.DX = '93' then 'เนื้องอกไม่ร้ายที่รังไข่(Benign neoplasm of ovary)'
when q1.DX = '94' then 'เนื้อองอกไม่ร้ายที่ระบบปัสสาวะ(Benign neoplasm of urinary organs)'
when q1.DX = '95' then 'เนื้องอกไม่ร้ายของสมองและส่วนอื่นของระบบประสาทส่วนกลาง(Benign neoplasm of brain and other parts of central nervous system)'
when q1.DX = '96' then 'เนื้องอกไม่ร้ายจํากัดเฉพาะที่อื่นๆและเนื้องอกบางชนิดที่ไม่ทราบพฤติกรรม(Other in situ and benign neoplasms and neoplasms of uncertain and unknown behaviour )'
when q1.DX = '97' then 'โลหิตจางจากการขาดธาตุเหล็ก(Iron deficiency anaemia)'
when q1.DX = '98' then 'โลหิตจางอื่นๆ(Other anaemias)'
when q1.DX = '99' then 'ภาวะเลือดออกอื่นๆโรคเลือดและอวัยวะที่สร?างเลือด(Haemorrhagic conditions and other diseases of blood and blood forming organs )'
when q1.DX = '100' then 'ความผิดปกติที่เกี่ยวกับกลไกของภูมิคุ้มกัน(Certain disorders involving the immune mechanism)'
when q1.DX = '101' then 'การขาดไอโอดีนที่มีความสัมพันธ์กับต่อมธัยรอยด(Iodine-deficiency-related thyroid disorders)'
when q1.DX = '102' then 'โรคพิษธัยรอยด์(Thyrotoxicosis)'
when q1.DX = '103' then 'ความผิดปกติของต่อมธัยรอยด์อื่นๆ(Other disorders of thyroid)'
when q1.DX = '104' then 'เบาหวาน(Diabetes mellitus)'
when q1.DX = '105' then 'ทุพโภชนาการ 1(Malnutrition)'
when q1.DX = '106' then 'การขาดวิตามินเอ(Vitamin A deficiency)'
when q1.DX = '107' then 'การขาดวิตามินอื่นๆ(Other vitamin deficiencies)'
when q1.DX = '108' then 'ผลที่ตามมาของภาวะทุพโภชนาการและภาวะพร้องโภชนาการอื่นๆ(Sequelae of malnutrition and other nutritional deficiencies)'
when q1.DX = '109' then 'โรคอ้วน(Obesity)'
when q1.DX = '110' then 'ความผิดปกติของต่อมธัยรอยด์อื่นๆ(Volume depletion)'
when q1.DX = '111' then 'ความผิดปกติของต่อมไร้ท่อ โภชนาการและเมตะบอลิกอื่นๆ(Other endocrine, nutritional and metabolic disorders )'
when q1.DX = '112' then 'สมองเสื่อม(Dementia)'
when q1.DX = '113' then 'ความผิดปกติของพฤติกรรมและจิตประสาทที่เกิดจากการเสพอัลกอฮอล(Mental and behavioural disorders due to use of alcohol)'
when q1.DX = '114' then 'ความผิดปกติทางพฤติกรรมและจิตประสาทที่เกิดดจากการใช้วัตถุออกฤทธิต่อจิตประสาทอื่นๆ(Mental and behavioural disorders due to other psychoactive substance use)'
when q1.DX = '115' then 'จิตเภท พฤติกรรมแบบจิตเภทและความหลงผิด(Schizophrenia, schizotypal, and delusional disorders)'
when q1.DX = '116' then 'ความผิดปกติทางอารมณ์(Mood [affective] disorders)'
when q1.DX = '117' then 'โรคประสาท อาการทางกายที่เกิดจากจิตใจและความเครียด(Neurotic, stress-related, and somatoform disorders)'
when q1.DX = '118' then 'ภาวะปัญญาอ่อน(Mental retardation)'
when q1.DX = '119' then 'ความผิดปกติทางจิตและพฤติกรรมอื่นๆ(Other mental and behavioural disorders)'
when q1.DX = '120' then 'การอักเสบของระบบประสาทส่วนกลาง(Inflammatory diseases of the central nervous system)'
when q1.DX = '121' then 'โรคพาคินซัน(Parkinson s disease)'
when q1.DX = '122' then 'โรคแอลไซเมอร์(Alzheimer s disease )'
when q1.DX = '123' then 'มัลติเปิล สเคลอโรสิส(Multiple sclerosis)'
when q1.DX = '124' then 'ลมบ้าหมู(Epilepsy)'
when q1.DX = '125' then 'โรคไมเกรนและกลุ่มอาการปวดศีรษะอื่นๆ(Migraine and other headache syndromes)'
when q1.DX = '126' then 'โรคเลือดไปเลี้ยงสมองน้อยชั่วคราวและกลุ่มอาการต่อเนื่อง(Transient cerebral ischaemic attacks and related syndromes)'
when q1.DX = '127' then 'ความผิดปกติของเส้นประสาท รากประสาทและปมประสาท(Nerve, nerve root and plexus disorders)'
when q1.DX = '128' then 'สมองพิการและกลุ่มอาการอัมพาตอื่นๆ(Cerebral palsy and other paralytic syndromes)'
when q1.DX = '129' then 'โรคของระบบประสาทอื่นๆ(Other diseases of the nervous system)'
when q1.DX = '130' then 'การอักเสบของหนังตา(Inflammation of eyelid)'
when q1.DX = '131' then 'เยื่อบุตาอ้กเสบและความผิดปกติของเยื่อบุตาอื่นๆ(Conjunctivitis and other disorders of conjunctiva)'
when q1.DX = '132' then 'กระจกตาอักเสบและความผิดปกติของตาขาวและกระจกตาอื่นๆ(Keratitis and other disorders of sclera and cornea)'
when q1.DX = '133' then 'ต้อกระจกและความผิดปกติของเลนส์สีอื่นๆ(Cataract and other disorders of lens)'
when q1.DX = '134' then 'จอประสาทตาหลุดออกและรอยฉีกของจอประสาทตา(Retinal detachments and breaks)'
when q1.DX = '135' then 'ต้อหิน(Glaucoma)'
when q1.DX = '136' then 'ตาเหล่(Strabismus)'
when q1.DX = '137' then 'ความผิดปกติของสายตาและการเพ่งมอง(Disorders of refraction and accommodation)'
when q1.DX = '138' then 'ตาบอดและสายตาเลือนลาง(Blindness and low vision)'
when q1.DX = '139' then 'โรคของตาและส่วนประกอบของตาอื่นๆ(Other diseases of the eye and adnexa)'
when q1.DX = '140' then 'หูชั้นกลางอักเสบและความผิดปกติของหูชั้นกลางและปุ่มกกหูอื่นๆ(Otitis media and other disorders of middle ear and mastoid)'
when q1.DX = '141' then 'การสูญเสียการได้ยิน(Hearing loss)'
when q1.DX = '142' then 'โรคของหูและปุ่มกกหูอื่นๆ(Other diseases of the ear and mastoid process)'
when q1.DX = '143' then 'ไข้รูมาติกเฉียบพลัน(Acute rheumatic fever)'
when q1.DX = '144' then 'โรคหัวใจรูมาติกเรื้อรัง(Chronic rheumatic heart disease)'
when q1.DX = '145' then 'ความดันโลหิตสูงที่ไม่มีสาเหตุนํา(Essential (primary) hypertension)'
when q1.DX = '146' then 'โรคความดันโลหิตสูงอื่นๆ(Other hypertensive diseases)'
when q1.DX = '147' then 'กล้ามเนื้อหัวใจตายเฉียบพลัน(Acute myocardial infarction)'
when q1.DX = '148' then 'โรคหัวใจขาดเลือดอื่นๆ(Other ischaemic heart diseases)'
when q1.DX = '149' then 'ก้อนเลือดอุดตนในหลอดเลือดใหญ่ของปอด(Other ischaemic heart diseases)'
when q1.DX = '150' then 'ความผิดปกติของการนํากระแสไฟฟ้าหัวใจและหัวใจเต้นผิดจังหวะ(Conduction disorders and cardiac arrhythmias )'
when q1.DX = '151' then 'หัวใจล้มเหลว(Heart failure)'
when q1.DX = '152' then 'โรคหัวใจอื่นๆ(Other heart diseases)'
when q1.DX = '153' then 'เลือดออกในสมอง(Intracranial haemorrhage)'
when q1.DX = '154' then 'เนื้อสมองตาย(Cerebral infarction)'
when q1.DX = '155' then 'เป็นลมหมดสติที่ไม่จัดกลุ่มว่าเป็นจากเลือดออกในสมองหรือเนื้อสมองตายจากการขาดเลือด(Stroke, not specified as haemorrhage or infarction)'
when q1.DX = '156' then 'โรคหลอดเลือดในสมองอื่นๆ(Other cerebrovascular diseases)'
when q1.DX = '157' then 'อะเธอโรสเคลอโรสิส(Atherosclerosis)'
when q1.DX = '158' then 'โรคหลอดเลือดส่วนปลายอื่นๆ(Other peripheral vascular diseases)'
when q1.DX = '159' then 'ลิ่มเลือดและก้อนเลือดอุดตันทหลอดเลือดแดง(Arterial embolism and thrombosis)'
when q1.DX = '160' then 'โรคของหลอดเลือดแดงหลอดเลือดแดงย่อยและแคปิลารีอื่นๆ(Other diseases of arteries, arterioles and capillaries)'
when q1.DX = '161' then 'หลอดเลือดดําอักเสบ หลอดเลือดดําอักเสบมีลิ่มเลือดก้อนเลือดและลิ่มเลือดในหลอดเลือดดํา(Phlebitis, thrombophlebitis, venous embolism and thrombosis)'
when q1.DX = '162' then 'หลอดเลือดดําขอดของระยางส่วนล่าง(Varicose veins of lower extremities)'
when q1.DX = '163' then 'ริดสีดวงทวาร(Haemorrhoids)'
when q1.DX = '164' then 'โรคอื่น ๆของระบบไหลเวียนโลหิต(Other diseases of the circulatory system)'
when q1.DX = '165' then 'คออักเสบเฉียบพลันและต่อมทอนซิลอักเสบเฉียบพลัน(Acute pharyngitis and acute tonsillitis)'
when q1.DX = '166' then 'กล่องเสียงและหลอดลมใหญ่อักเสบเฉียบพลัน(Acute laryngitis and tracheitis)'
when q1.DX = '167' then 'การติดเชื้อของทางเดินหายใจส่วนบนแบบเฉียบพลันอื่นๆ(Other acute upper respiratory infections)'
when q1.DX = '168' then 'ไข้หวัดใหญ่(Influenza)'
when q1.DX = '169' then 'ปอดบวม(Pneumonia)'
when q1.DX = '170' then 'หลอดลมอักเสบเฉียบพลันและหลอดลมเล็กอักเสบเฉียบพลัน(Acute bronchitis and acute bronchiolitis)'
when q1.DX = '171' then 'ไซนัสอักเสบเรื้อรัง(Chronic sinusitis)'
when q1.DX = '172' then 'โรคอื่นของจมูกและไซนัส(Other diseases of nose and nasal sinuses)'
when q1.DX = '173' then 'โรคเรื้อรังของต่อมทอนซิลและต่อมน้ำเหลืองในคอ(Chronic disease of tonsils and adenoids)'
when q1.DX = '174' then 'โรคอื่นๆของระบบหายใจส่วนบน(Other diseases of upper respiratory tract)'
when q1.DX = '175' then 'โรคหลอดลมอักเสบ ถุงลมโป่งพองและปอดชนิดอุดกั้นแบบเรื้อรังอื่น(Bronchitis, emphysema and other chronic obstructive pulmonary diseases)'
when q1.DX = '176' then 'โรคหืด(Asthma)'
when q1.DX = '177' then 'โรคหลอดลมเล็กโป่งพอง(Bronchiectasis)'
when q1.DX = '178' then 'โรคฝุ่นสะสมในปอด(Pneumoconiosis)'
when q1.DX = '179' then 'โรคอื่นๆของระบบทางเดินหายใจ(Other diseases of the respiratory system)'
when q1.DX = '180' then 'ฟันผุ(Dental caries)'
when q1.DX = '181' then 'ความผิดปกติอื่นๆของฟันและโครงสร้าง(Other disorders of teeth and supporting structures)'
when q1.DX = '182' then 'โรคอื่นๆของช่องปาก ต่อมน้ำลายและขากรรไกร(Other diseases of the oral cavity, salivary glands and jaws)'
when q1.DX = '183' then 'แผลเปลื่อยของกระเพาะอาหารดูโอเดนัม(Gastric and duodenal ulcer)'
when q1.DX = '184' then 'กระเพาะอาหารอักเสบและดูโอเดนัมอักเสบ(Gastritis and duodenitis)'
when q1.DX = '185' then 'โรคอื่นๆของหลอดอาหาร กระเพาะและดูโอเดนัม(Other diseases of oesophagus, stomach and duodenum )'
when q1.DX = '186' then 'โรคของไส้ติ่ง(Diseases of appendix)'
when q1.DX = '187' then 'โรคอื่นๆของหลอดอาหาร กระเพาะและดูโอเดนัม(Inguinal hernia)'
when q1.DX = '188' then 'ไส้เลื่อนอื่นๆ(Other hernia)'
when q1.DX = '189' then 'โรคโครนและลําไส้ใหญ่อักเสบแผลเปลื่อย(Crohn s disease and ulcerative colitis)'
when q1.DX = '190' then 'ลําไส้ไม่ทํางานและลําไส้เกิดอุดตันแบบไม่มีไส้เลื่อน(Paralytic ileus and intestinal obstruction without hernia)'
when q1.DX = '191' then 'โรคติ่งเนื้อของลําไส้(Diverticular disease of intestine)'
when q1.DX = '192' then 'โรคอื่นๆของลําไส้และเยื่อบุช่องท้อง(Other diseases of intestines and peritoneum)'
when q1.DX = '193' then 'โรคตับเกี่ยวกับอัลกอฮอล์(Alcoholic liver disease)'
when q1.DX = '194' then 'โรคอื่นๆของตับ(Other diseases of liver)'
when q1.DX = '195' then 'โรคนิ่วในระบบน้ำดีและถุงน้ำดีอักเสบ(Cholelithiasis and cholecystitis)'
when q1.DX = '196' then 'ตับอ่อนอักเสบเฉียบพลันและโรคอื่นๆของตับอ่อน(Acute pancreatitis and other diseases of the pancreas)'
when q1.DX = '197' then 'โรคอื่นๆของระบบย่อยอาหาร(Other diseases of the digestive system)'
when q1.DX = '198' then 'โรคอักเสบติดเชื้อของผิวหนังและเนื้อเยื่อใต้ผิวหนัง(Infections of the skin and subcutaneous tissue)'
when q1.DX = '199' then 'โรคอื่นๆของผิวหนังและเนื้อเยื่อใต้ผิวหนัง(Other diseases of the skin and subcutaneous)'
when q1.DX = '200' then 'ข้ออักเสบรูห์มาตอยและข้ออักเสบหลายข้อ(Rheumatoid arthritis and other inflammatory polyarthropathies)'
when q1.DX = '201' then 'โรคข้อเสื่อม(Arthrosis)'
when q1.DX = '202' then 'ความพิการของแขนขา(Acquired deformities of limbs)'
when q1.DX = '203'  then 'โความผิดปกติอื่นๆของข้อ(Other disorders of joints)'
when q1.DX = '204' then 'ความผิดปกติของระบบเนื้อเยื่อประสาน(Systemic connective tissue disorders)'
when q1.DX = '205' then 'กระดูกสันหลังและหมอนรองกระดูกสันหลังอื่นๆผิดปกติ(Cervical and other intervertebral disc disorders)'
when q1.DX = '206'  then 'พยาธิสภาพของหลังส่วนอื่นๆ(Other dorsopathies)'
when q1.DX = '207' then 'เนื้อเยื่อผิดปกติ(Soft tissue disorders)'
when q1.DX = '208' then 'ความผิดปกติของความหนาแน่นของเนื้อกระดูกและโครงสร้าง(Disorders of bone density and structure)'
when q1.DX = '209' then 'กระดูกอักเสบ(Osteomyelitis)'
when q1.DX = '210' then 'โรคอื่นๆของระบบกล้ามเนื้อและเนื้อเยื่อประสาน(Other diseases of the musculoskeletal system and connective tissue)'
when q1.DX = '211' then 'กลุ่มอาการไตอักเสบเฉียบพลันและชนิดกําเริบเร็ว(Acute and rapidly progressive nephritic syndromes)'
when q1.DX = '212' then 'โรคอื่นๆของหลอดอาหาร กระเพาะและดูโอเดนัม(Other diseases of oesophagus, stomach and duodenum)'
when q1.DX = '213' then 'โรคของท่อและเนื้อเยื่อระหว่างท่อในไต(Renal tubulo-interstitial diseases)'
when q1.DX = '214' then 'ไตวาย(Renal failure)'
when q1.DX = '215' then 'นิ่วในระบบทางเดินปัสสาวะ(Urolithiasis)'
when q1.DX = '216' then 'กระเพาะปัสสาวะอักเสบ(Cystitis)'
when q1.DX = '217' then 'โรคอื่นๆของระบบทางเดินปัสสาวะ(Other diseases of the urinary system)'
when q1.DX = '218' then 'ต่อมลูกหมากโตจากการเพิ่มจำนวนเซล(Hyperplasia of prostate)'
when q1.DX = '219' then 'ความผิดปกติอื่นๆของต่อมลูกหมาก(Other disorders of prostate)'
when q1.DX = '220' then 'ถุงน้ำและถุงที่มีอสุจิที่อัณฑะ(Hydrocele and spermatocele)'
when q1.DX = '221' then 'หนังหุ่มปลายองคชาติยาวเกินไป ปลายตีบรูเปิดไม่ได้หรือเปิดลําบาก(Redundant prepuce, phimosis and paraphimosis)'
when q1.DX = '222' then 'โรคอื่นๆของอวัยวะสืบพันธุ์ชาย(Other diseases of male genital organs)'
when q1.DX = '223' then 'ความผิดปกติของเต้านม(Disorders of the breast)'
when q1.DX = '224' then 'ปีกมดลูกและรังไข่อักเสบ(Salpingitis and oophoritis)'
when q1.DX = '225' then 'ปากมดลูกอักเสบ(Inflammatory disease of cervix uteri)'
when q1.DX = '226' then 'การอักเสบอื่นๆของอวัยวะในอุ้งเชิงกรานสตรี(Other inflammatory diseases of female pelvic organs)'
when q1.DX = '227' then 'เยื่อบุมดลูกอยู่ผิดที่(Endometriosis)'
when q1.DX = '228' then 'การหย่อนตัวออกมาของอวัยวะสืบพันธุ์สตรี(Female genital prolapse)'
when q1.DX = '229' then 'ความผิดปกติอื่นที่ไม่ใช้การอักเสบของรังไข่ท่อรังไข่และเอ็นยึดมดลูก(Noninflammatory disorders of ovary, fallopian tube and broad ligament)'
when q1.DX = '230' then 'ความผิดปกติของระดู(Disorders of menstruation)'
when q1.DX = '231' then 'การหมดประจําเดือนและความผิดปกติอื่นในระยะหมดประจําเดือน(Menopausal and other perimenopausal disorders)'
when q1.DX = '232' then 'ภาวะมีบุตรยากในสตรี(Female infertility)'
when q1.DX = '233' then 'ความผิดปกติอื่นๆของท่อทางเดินปัสสาวะและสืบพันธุ์(Other disorders of genitourinary tract)'
when q1.DX = '234' then 'แท้งเอง(Spontaneous abortion)'
when q1.DX = '235' then 'การทําแท้งโดยเหตุผลทางการแพทย์(Medical abortion)'
when q1.DX = '236' then 'การตั้งครรภ์อื่นๆที่สิ้นสุดโดยการแท้ง(Other pregnancies with abortive outcome)'
when q1.DX = '237' then 'การบวม การมีโปรตีนในปัสสาวะ และความดันโลหิตสูงขณะตั้งครรภ์ระยะคลอด และระยะหลังคลอด(Oedema, proteinuria and hypertensive disorders in pregnancy,childbirth and the puerperium)'
when q1.DX = '238' then 'รกเกาะต่ำ รกลอกตัวก่อนกําหนด และตกเลือดก่อนคลอด(Placenta praevia, premature separation of placenta and antepartum haemorrhage)'
when q1.DX = '239' then 'การดูแล มารดาอื่น ๆที่มีปัญหาเกี่ยวกับทารกในครรภ์และถุงน้ำคร่ำ และปัญหาที่อาจจะเกิดได้ในระยะคลอด (Other maternal care related to fetus and amniotic cavity and possible delivery problems)'
when q1.DX = '240' then 'การคลอดติดขัด(Obstructed labour)'
when q1.DX = '241' then 'ตกเลือดหลังคลอด(Postpartum haemorrhage)'
when q1.DX = '242' then 'ภาวะแทรกซ้อนอื่นๆของการตั้งครรภ์และการคลอด(Other complications of pregnancy and delivery)'
when q1.DX = '243' then 'การคลอดของครรภ์เดี่ยว(Single spontaneous delivery)'
when q1.DX = '244' then 'ภาวะแทรกซ้อนที่ส่วนใหญ่พบในระยะหลังคลอด และภาวะทางสูติกรรมอื่นๆ ที่มิได้ระบุรายละเอียด(Complications predominantly related to the puerperium and other obstetric conditions, not elsewhere classified)'
when q1.DX = '245' then 'ทารกในครรภ์และแรกเกิดที่ได้รับผลจากปัจจัยทางมารดาและโรคแทรกในระยะตั้งครรภ์เจ็บครรภ์และคลอด(Fetus and newborn affected by maternal factors and by complications of pregnancy, labour and delivery )'
when q1.DX = '246' then 'ทารกในครรภ์โตช้า ทารกในครรภ์ขาดสารอาหาร และความผิดปกติเกี่ยวกับการตั้งครรภ์ระยะสั้นและน้ำหนักทารกแรกเกิดน้อย(Slow fetal growth, fetal malnutrition and disorders related to short gestation and low birth weight)'
when q1.DX = '247' then 'บาดเจ็บจากการคลอด(Birth trauma)'
when q1.DX = '248' then 'ขาดออกซิเจนขณะอยู่ในโพรงมดลูก และภาวะแอสฟิกเซียเมื่อแรกเกิด(Intrauterine hypoxia and birth asphyxia)'
when q1.DX = '249' then 'ภาวะหายใจผิดปกติอื่นๆในระยะปริกําเนิด(Other respiratory disorders originating in the perinatal period )'
when q1.DX = '250' then 'การติดเชื้อแต่กําเนิดและโรคปาราสิต(Congenital infectious and parasitic diseases)'
when q1.DX = '251' then 'การติดเชื้อเฉพาะอื่นๆในระยะปริกําเนิด(Other infections specific to the perinatal period)'
when q1.DX = '252' then 'โรคเม็ดเลือดแตกของทารกในครรภ์และแรกเกิด(Haemolytic disease of fetus and newborn )'
when q1.DX = '253' then 'บาดเจ็บจากการคลอด(Other conditions originating in the perinatal period)'
when q1.DX = '254' then 'กระดูกสันหลังแยก(Spina bifida)'
when q1.DX = '255' then 'ความผิดปกติอื่นๆแต่กําเนิดของระบบประสาท(Other congenital malformations of the nervous system)'
when q1.DX = '256' then 'ความผิดปกติแต่กําเนิดของระบบไหลเวียนโลหิต(Congenital malformations of the circulatory system)'
when q1.DX = '257' then 'ปากแหว่งและเพดานโหว่(Cleft lip and cleft palate)'
when q1.DX = '258' then 'ลําไส้เล็กไม่มีตันและตีบ(Absence,atresia and stenosis of small intestine)'
when q1.DX = '259' then 'ความผิดปกติแต่กําเนิดอื่นๆของระบบย่อยอาหาร(Other congenital malformations of the digestive system)'
when q1.DX = '260' then 'อัณฑะไม่ลงถุง(Undescended testicle)'
when q1.DX = '261' then 'ความผิดปกติอื่นๆของระบบสืบพันธุ์และทางเดินปัสสาวะ(Other malformations of the genitourinary system)'
when q1.DX = '262' then 'ความพิการแต่กําเนิดของสะโพก(Congenital deformities of hip)'
when q1.DX = '263' then 'ความพิการแต่กําเนิดของเท้า(Congenital deformities of feet)'
when q1.DX = '264' then 'ความผิดปกติและความพิการแต่กําเนิดอื่นๆของระบบกล้ามเนื้อและโครงร่าง(Other congenital malformations and deformations of the musculoskeletal system)'
when q1.DX = '265' then 'ความผิดปกติแต่กําเนิดอื่นๆ(Other congenital malformations)'
when q1.DX = '266' then 'ความผิดปกติของโครโมโซมที่มิได้มีรหัสระบุไว้ที่อื่น(Chromosomal abnormalities, not elsewhere classified)'
when q1.DX = '267' then 'ปวดท้องและปวดอุ้งเชิงกราน (Abdominal and pelvic pain)'
when q1.DX = '268' then 'ไข้ไม่ทราบสาเหตุ(Fever of unknown origin)'
when q1.DX = '269' then 'ชราภาพ(Senility)'
when q1.DX = '270' then 'อาการ อาการแสดงและสิ่งผิดปกติที่พบจากการตรวจทางคลินิกและตรวจทาง ห้องปฏิบัติการที่มิได้มีรหัสระบุไว้(Other symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified)'
when q1.DX = '271' then 'กระดูกแตกหักบริเวณกระโหลกศีรษะและกระดูกหน้า(Fracture of skull and facial bones)'
when q1.DX = '272' then 'กระดูกคอ กระดูกซี่โครง หรือกระดูกเชิงกรานหัก(Fracture of neck, thorax or pelvis)'
when q1.DX = '273' then 'กระดูกต้นขาแตก หัก ร้าว(Fracture of femur)'
when q1.DX = '274' then 'กระดูกแตกหักของแขนขาอื่นๆ(Fractures of other limb bones)'
when q1.DX = '275' then 'กระดูกแตกหักหลายบริเวณในร่างกาย(Fractures involving multiple body regions)'
when q1.DX = '276' then 'กระดูกเคลื่อน เคล็ด ขัด บริเวณร้างกายหลายแห่งที่ระบุเฉพาะ(Dislocations, sprains and strains of specified and multiple body regions)'
when q1.DX = '277' then 'การบาดเจ็บของตาและเบ้าตา(Injury of eye and orbit)'
when q1.DX = '278' then 'การบาดเจ็บภายในกระโหลกศีรษะ(Intracranial injury)'
when q1.DX = '279' then 'การบาดเจ็บของอวัยวะภายในอื่นๆ(Injury of other internal organs)'
when q1.DX = '280' then 'การบาดเจ็บจากการบดอัดและการบาดเจ็บที่เกิดดจากตัดขาบรเวณร่างกายหลายแห่งที่ระบุเฉพาะ(Crushing injuries and traumatic amputations of specified and multiple body regions )'
when q1.DX = '281' then 'การบาดเจ็บระบุเฉพาะอื่นๆ,ไม่ระบุเฉพาะและหลายบริเวณในร่างกาย(Other injuries of specified, unspecified and multiple body regions)'
when q1.DX = '282' then 'ผลของวัตถุแปลกปลอมผ่านเข้าทางทวารธรรมชาติของร่างกาย(Effects of foreign body entering through natural orifice)'
when q1.DX = '283' then 'แผลถูกความร้อนและถูกสารกัดกร่อน(Burns and corrosions)'
when q1.DX = '284' then 'การเป็นพิษจากยา เครื่องยาและชีววัตถุ(Poisoning by drugs and biological substances)'
when q1.DX = '285' then 'การเป็นพิษจากสารที่โดยส่วนใหญ่แล้วไม่ได้ใช้เป็นยา(Toxic effects of substances chiefly nonmedicinal as to source)'
when q1.DX = '286' then 'กลุ่มอาการจากการทารุณ(Maltreatment syndrome)'
when q1.DX = '287' then 'อื่นๆและที่มิได้ระบุผลของสาเหตุภายนอก(Other and unspecified effects of external causes)'
when q1.DX = '288' then 'ภาวะแทรกซ้อนระยะแรกของการบาดเจ็บบางชนิด และภาวะแทรกซ้อนของการรักษาทางศัลยกรรมและอายุรกรรมที่มิได้มีรหัสระบุไว้ที่อื่น(Certain early complications of trauma and complications,of surgical and medical care not elsewhere classified)'
when q1.DX = '289' then 'ผลระยะล่าของการบาดเจ็บ การเป็นพิษและผลที่ตามมาจากสาเหตุภายนอกอื่นๆ(Sequelae of injuries, poisoning and of other consequences of external causes)'
when q1.DX = '290' then 'บุคคลขอรับบริการเพื่อการตรวจและชันสูตร(Persons encountering health services for examination and investigation)'
when q1.DX = '291' then 'การติดเชื้อไวรัสโดยไม่มีอาการ(Asymptomatic human immunodeficiency virus [HIV] infection status)'
when q1.DX = '292' then 'บุคคลที่มีอาการที่น่าจะเป็นอันตรายต่อสุขภาพที่เกี่ยวเนื่องกับโรคติดต่อ(Other persons with potential health hazards related to communicable disease)'
when q1.DX = '293' then 'การรับบริการคุมกําเนิด(Contraceptive management)'
when q1.DX = '294' then 'การตรวจคัดกรองก้อนการคลอด และการให้คําแนะนําเกี่ยวกับการตั้งครรภ์อื่นๆ(Antenatal screening and other supervision of pregnancy)'
when q1.DX = '295' then 'การเกิดของทารกตามสถานที่เกิด(Liveborn infants according to place of birth)'
when q1.DX = '296' then 'การดูแลและการตรวจหลังคลอด(Postpartum care and examination)'
when q1.DX = '297' then 'บุคคลขอรับบริการสุขภาพ เพื่อหัตถการหรือการบริการสุขภาพที่ระบุเฉพาะ(Persons encountering health services for specific procedures and health care)'
when q1.DX = '298' then 'บุคคลขอรับบริการสุขภาพด้วยเหตุผลอื่น(Persons encountering health services for other reasons)'
when q1.DX = '299' then 'โควิด(Covid)'
else '' end as ชื่อโรค
--,sum(q1.จำนวน) as จำนวน
,case when q1.DX between '1' and '298' then sum(q1.จำนวน) when q1.DX = '299' then sum(q1.จำนวนโควิด) else 0 end as จำนวน   

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
,count(q2.diag_icd10_number) as จำนวน
,count(q3.diag_icd10_number1) as จำนวนโควิด

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
group by ลำดับกลุ่มโรค
order by ลำดับกลุ่มโรค ASC