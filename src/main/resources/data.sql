-- Добавление данных в таблику Organization
INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active)
VALUES(0, 'Happy', 'Организация1', '1234567891', '123456789', 'Адрес1Саратов','+7(999)-999-99-99', true);
INSERT INTO Organization (version, name, full_name, inn, kpp, address, phone, is_active)
VALUES(0, 'Азбука', 'Организация2', '2839509879', '987654321', 'Адрес2Саратов','+7(999)-999-99-98', true);


-- Добавление данных в таблику Office
INSERT INTO Office (version, name, address, phone, is_active, organization_id)
VALUES(0, 'Офис 1', 'Адрес1Саратов, Этаж 1', null, true, 1);
INSERT INTO Office (version, name, address, phone, is_active, organization_id)
VALUES(0, 'Офис 2', 'Адрес1Саратов, Этаж 1', '+7(999)-999-99-99#2', true, 1);
INSERT INTO Office (version, name, address, phone, is_active, organization_id)
VALUES(0, 'Офис 1', 'Адрес2Саратов, этаж 2', '+7(999)-999-99-98#2', true, 2);
INSERT INTO Office (version, name, address, phone, is_active, organization_id)
VALUES(0, 'Офис 2', 'Адрес2Саратов, этаж 2', '+7(999)-999-99-98#2', true, 2);


-- Добавление данных в таблику Document
INSERT INTO Document_type (code, name)
VALUES(3, 'Свидетельство о рождении');
INSERT INTO Document_type (code, name)
VALUES(7, 'Военный билет');
INSERT INTO Document_type (code, name)
VALUES(21, 'Паспорт РФ');
INSERT INTO Document_type (code, name)
VALUES(8, 'Временное удостоверение, выданное взамен военного билета');
INSERT INTO Document_type (code, name)
VALUES(12, 'Вид на жительство в Российской Федерации');
INSERT INTO Document_type (code, name)
VALUES(13, 'Удостоверение беженца');
INSERT INTO Document_type (code, name)
VALUES(14, 'Временное удостоверение личности гражданина Российской Федерации');
INSERT INTO Document_type (code, name)
VALUES(15, 'Разрешение на временное проживание в Российской Федерации');
INSERT INTO Document_type (code, name)
VALUES(16, 'Свидетельство о предоставлении временного убежища на территории Российской Федерации');
INSERT INTO Document_type (code, name)
VALUES(22, 'Загранпаспорт гражданина Российской Федерации');
INSERT INTO Document_type (code, name)
VALUES(23, 'Свидетельство о рождении, выданное уполномоченным органом иностранного государства');
INSERT INTO Document_type (code, name)
VALUES(24, 'Удостоверение личности военнослужащего Российской Федерации');
INSERT INTO Document_type (code, name)
VALUES(27, 'Военный билет офицера запаса');
INSERT INTO Document_type (code, name)
VALUES(91, 'Иной документ');


-- Добавление данных в таблику Citizenship
INSERT INTO Citizenship (code, name)
VALUES(004, 'Афганистан');
INSERT INTO Citizenship (code, name)
VALUES(044, 'Багамы');
INSERT INTO Citizenship (code, name)
VALUES(068, 'Боливия');
INSERT INTO Citizenship (code, name)
VALUES(100, 'Болгария');
INSERT INTO Citizenship (code, name)
VALUES(124, 'Канада');
INSERT INTO Citizenship (code, name)
VALUES(156, 'Китай');
INSERT INTO Citizenship (code, name)
VALUES(191, 'Хорватия');
INSERT INTO Citizenship (code, name)
VALUES(276, 'Германия');
INSERT INTO Citizenship (code, name)
VALUES(643, 'Российская Федерация');


-- Добавление данных в таблику User
INSERT INTO User (version, first_name, second_name, middle_name, position, phone, citizenship_id, is_identified, office_id)
VALUES (0, 'Семен', 'Семенов', 'Семенович', 'Бухгалтер', '89990000001',9,true, 1 );
INSERT INTO User (version, first_name, second_name, middle_name, position, phone, citizenship_id, is_identified, office_id)
VALUES (0, 'Иванов', 'Иван', 'Иванович', 'Продавец', '89990000002',9,true, 2 );
INSERT INTO User (version, first_name, second_name, middle_name, position, phone, citizenship_id, is_identified, office_id)
VALUES (0, 'Виктор', 'Ильин', 'Петрович', 'Директор', '89990000003',9,true, 3 );
INSERT INTO User (version, first_name, second_name, middle_name, position, phone, citizenship_id, is_identified, office_id)
VALUES (0, 'Василий', 'Мендельштам', 'Викторович', 'Директор', '89990000004',9,true, 1 );
INSERT INTO User (version, first_name, second_name, middle_name, position, phone, citizenship_id, is_identified, office_id)
VALUES (0, 'Анна', 'Меньшикова', 'Дмитриевна', 'Бухгалтер', '89990000005',9,true, 3 );
INSERT INTO User (version, first_name, second_name, middle_name, position, phone, citizenship_id, is_identified, office_id)
VALUES (0, 'Антон', 'Шпак', 'Семенович', 'Разнорабочий', '89990000006',9,true, 4 );


-- Добавление данных в таблику User_document
INSERT INTO User_document (version, doc_number, doc_date, doc_id, user_id)
VALUES (0, '6300123321', '2000-01-01', 3, 1);
INSERT INTO User_document (version, doc_number, doc_date, doc_id, user_id)
VALUES (0, '6004188321', '1991-10-13', 3, 2);
INSERT INTO User_document (version, doc_number, doc_date, doc_id, user_id)
VALUES (0, '6230124421', '1967-02-28', 3, 3);
INSERT INTO User_document (version, doc_number, doc_date, doc_id, user_id)
VALUES (0, '6203122321', '1988-05-21', 3, 4);
INSERT INTO User_document (version, doc_number, doc_date, doc_id, user_id)
VALUES (0, '6505123351', '1978-01-17', 3, 5);
INSERT INTO User_document (version, doc_number, doc_date, doc_id, user_id)
VALUES (0, '6909993399', '1977-12-18', 3, 6);
