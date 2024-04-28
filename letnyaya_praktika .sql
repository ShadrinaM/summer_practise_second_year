/*ВЕСЬ КОД ДЛЯ SQL*/


/*sql develiper*/
/*
CREATE TABLE Realtors (
    Realtor_ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    Full_Name VARCHAR2(100) NOT NULL,
    Commission_Percentage NUMBER NOT NULL,
    Phone VARCHAR2(15) NOT NULL,
    Email VARCHAR2(100) NOT NULL,
    CONSTRAINT CHECK_PHONE_Realtor CHECK (LENGTH(Phone) BETWEEN 12 AND 15 AND SUBSTR(Phone, 1, 1) = '+'),
    CONSTRAINT CHECK_EMAIL CHECK (REGEXP_LIKE(email, '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')),
    CONSTRAINT PK_Realtor_ID PRIMARY KEY (Realtor_ID)
);
CREATE TABLE Apartments (
    Apartment_ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    Street VARCHAR2(100),
    House_Number NUMBER,
    Apartment_Number NUMBER,
    Floor NUMBER,
    Area NUMBER,
    Rooms_Count NUMBER,
    Price NUMBER,
    CONSTRAINT PK_Apartment_ID PRIMARY KEY (Apartment_ID)
);
CREATE TABLE Buyers (
    Buyer_ID NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    Full_Name VARCHAR2(100),
    Budget NUMBER,
    Preferences VARCHAR2(200),
    Phone VARCHAR2(20),

    Email VARCHAR2(100),
    Passport_Data VARCHAR2(100),
    CONSTRAINT PK_Buyer_ID PRIMARY KEY (Buyer_ID),
    CONSTRAINT CHECK_PHONE_Buyers CHECK (LENGTH(Phone) BETWEEN 12 AND 15 AND SUBSTR(Phone, 1, 1) = '+')
);
CREATE TABLE Deals (
    Deal_ID NUMBER PRIMARY KEY,
    Deal_Date DATE,
    Deal_Price NUMBER,
    Apartment_ID NUMBER,
    Buyer_ID NUMBER,
    Realtor_ID NUMBER,
    CONSTRAINT Apartment_ID_FK FOREIGN KEY (Apartment_ID) REFERENCES Apartments(Apartment_ID),
    CONSTRAINT Buyer_ID_FK FOREIGN KEY (Buyer_ID) REFERENCES Buyers(Buyer_ID),
    CONSTRAINT Realtor_ID_FK FOREIGN KEY (Realtor_ID) REFERENCES Realtors(Realtor_ID)
);
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Иванов Иван Иванович', 12, '+79991234567', 'ivanov@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Петрова Анна Сергеевна', 10, '+79992223344', 'petrova@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Кузнецов Сергей Александрович', 11, '+79995556677', 'kuznetsov@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Иванова Елена Николаевна', 13, '+79996667788', 'ivanova@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Петрова Мария Владимировна', 9, '+79997778899', 'petrova_m@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Смирнов Алексей Юрьевич', 12, '+79998889900', 'smirnov@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Попова Наталья Васильевна', 14, '+79999990011', 'popova@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Васильев Владимир Алексеевич', 8, '+79990001122', 'vasiliev@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Соколова Ольга Ивановна', 10, '+79991112233', 'sokolova@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Лебедев Дмитрий Сергеевич', 15, '+79992223344', 'lebedev@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Игнатьев Ян Николаевич', 16, '+79992223344', 'ignat@mail.ru');


INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Садовая', 1, 10, 2, 60, 3, 1200000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Лесная', 25, 2, 32, 45, 2, 9500000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Центральная', 30, 3, 4, 70, 3, 1400000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Садовая', 46, 24, 1, 55, 2, 1100000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Лесная', 55, 25, 5, 80, 4, 3900000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Цветной бульвар', 6, 6, 3, 65, 3, 1300000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Набережная', 7, 7, 2, 90, 4, 1800000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Садовая', 48, 81, 4, 75, 3, 1500000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Центральная', 19, 19, 1, 40, 1, 8000000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Лесная', 10, 10, 2, 50, 2, 1000000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Лесная', 10, 10, 2, 50, 1, 950000);

INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Сидоров Петр Петрович', 1500000, '3-комнатная, центр', '+79993332211', 'sidorov@mail.ru', '1234 567890');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Кузнецова Елена Николаевна', 1000000, '2-комнатная, парковка', '+79994443322', 'kuznetsova@mail.ru', '2345 678901');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Васильева Ольга Сергеевна', 1200000, '2-комнатная, новая постройка', '+79997776655', 'vasilieva@mail.ru', '3456 789012');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Федоров Алексей Иванович', 2000000, '3-комнатная, элитный дом', '+79998887766', 'fedorov@mail.ru', '4567 890123');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Ильина Мария Александровна', 800000, '1-комнатная, близость магазинов', '+79999998877', 'ilina@mail.ru', '5678 901234');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Козлов Дмитрий Юрьевич', 1800000, '4-комнатная, тихий район', '+79990009988', 'kozlov@mail.ru', '6789 012345');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Попова Екатерина Владимировна', 1300000, '3-комнатная, на берегу реки', '+79991112233', 'popova@mail.ru', '7890 123456');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Николаев Сергей Алексеевич', 900000, '2-комнатная, рядом с парком', '+79992223344', 'nikolaev@mail.ru', '8901 234567');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Семенова Наталья Петровна', 1100000, '2-комнатная, хорошая планировка', '+79993334455', 'semenova@mail.ru', '9012 345678');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Романов Андрей Михайлович', 1600000, '4-комнатная, высокий этаж', '+79994445566', 'romanov@mail.ru', '0123 456789');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Куликова Татьяна Сергеевна', 1400000, '3-комнатная, близость школы', '+79995556677', 'kulikova@mail.ru', '1234 567890');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Борисов Владимир Игоревич', 1700000, '4-комнатная, наличие балкона', '+79996667788', 'borisov@mail.ru', '2345 678901');

INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (12342, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 12000000, 1, 1, 5);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (56521, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1200000, 1, 1, 1);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (89792, TO_DATE('2022-01-02', 'YYYY-MM-DD'), 950000, 1, 2, 2);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (32545, TO_DATE('2022-01-03', 'YYYY-MM-DD'), 1400000, 3, 3, 3);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (48678, TO_DATE('2022-01-04', 'YYYY-MM-DD'), 1100000, 4, 4, 4);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (67575, TO_DATE('2022-01-05', 'YYYY-MM-DD'), 1600000, 5, 5, 5);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (64345, TO_DATE('2022-01-06', 'YYYY-MM-DD'), 1300000, 4, 6, 6);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (70535, TO_DATE('2022-01-07', 'YYYY-MM-DD'), 1800000, 7, 7, 7);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (23458, TO_DATE('2022-01-08', 'YYYY-MM-DD'), 1500000, 8, 3, 8);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (96543, TO_DATE('2022-01-09', 'YYYY-MM-DD'), 800000, 3, 9, 9);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (14570, TO_DATE('2022-01-10', 'YYYY-MM-DD'), 1000000, 10, 10, 10);
*/



/*mysql*/
CREATE TABLE Realtors (
    Realtor_ID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name VARCHAR(100) NOT NULL,
    Commission_Percentage DECIMAL(10,2) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    CONSTRAINT CHECK_PHONE_Realtor CHECK (LENGTH(Phone) BETWEEN 12 AND 15 AND SUBSTR(Phone, 1, 1) = '+'),
    CONSTRAINT CHECK_EMAIL CHECK (Email REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
);

CREATE TABLE Apartments (
    Apartment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Street VARCHAR(100) NOT NULL,
    House_Number INT NOT NULL,
    Apartment_Number INT NOT NULL,
    Floor INT NOT NULL,
    Area DECIMAL(10,2) NOT NULL,
    Rooms_Count INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Buyers (
    Buyer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name VARCHAR(100) NOT NULL,
    Budget DECIMAL(10,2) NOT NULL,
    Preferences VARCHAR(200) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Passport_Data VARCHAR(100) NOT NULL,
    CONSTRAINT CHECK_PHONE_Buyers CHECK (LENGTH(Phone) BETWEEN 12 AND 15 AND SUBSTR(Phone, 1, 1) = '+')
);

CREATE TABLE Deals (
    Deal_ID INT AUTO_INCREMENT PRIMARY KEY,
    Deal_Date DATE NOT NULL,
    Deal_Price DECIMAL(10,2) NOT NULL,
    Apartment_ID INT NOT NULL,
    Buyer_ID INT NOT NULL,
    Realtor_ID INT NOT NULL,
    CONSTRAINT Apartment_ID_FK FOREIGN KEY (Apartment_ID) REFERENCES Apartments(Apartment_ID),
    CONSTRAINT Buyer_ID_FK FOREIGN KEY (Buyer_ID) REFERENCES Buyers(Buyer_ID),
    CONSTRAINT Realtor_ID_FK FOREIGN KEY (Realtor_ID) REFERENCES Realtors(Realtor_ID)
);


INSERT INTO Realtors (Realtor_ID, Full_Name, Commission_Percentage, Phone, Email) VALUES (1000, 'Иванов Иван Иванович', 12, '+79991234567', 'ivanov@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Петрова Анна Сергеевна', 10, '+79992223344', 'petrova@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Кузнецов Сергей Александрович', 11, '+79995556677', 'kuznetsov@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Иванова Елена Николаевна', 13, '+79996667788', 'ivanova@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Петрова Мария Владимировна', 9, '+79997778899', 'petrova_m@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Смирнов Алексей Юрьевич', 12, '+79998889900', 'smirnov@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Попова Наталья Васильевна', 14, '+79999990011', 'popova@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Васильев Владимир Алексеевич', 8, '+79990001122', 'vasiliev@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Соколова Ольга Ивановна', 10, '+79991112233', 'sokolova@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Лебедев Дмитрий Сергеевич', 15, '+79992223344', 'lebedev@mail.ru');
INSERT INTO Realtors (Full_Name, Commission_Percentage, Phone, Email) VALUES ('Игнатьев Ян Николаевич', 16, '+79992223344', 'ignat@mail.ru');
select * from Realtors;


INSERT INTO Apartments (Apartment_ID, Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES (2000, 'Садовая', 1, 10, 2, 60, 3, 1200000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Лесная', 25, 2, 32, 45, 2, 9500000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Центральная', 30, 3, 4, 70, 3, 1400000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Садовая', 46, 24, 1, 55, 2, 1100000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Лесная', 55, 25, 5, 80, 4, 3900000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Цветной бульвар', 6, 6, 3, 65, 3, 1300000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Набережная', 7, 7, 2, 90, 4, 1800000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Садовая', 48, 81, 4, 75, 3, 1500000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Центральная', 19, 19, 1, 40, 1, 8000000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Лесная', 10, 10, 2, 50, 2, 1000000);
INSERT INTO Apartments (Street, House_Number, Apartment_Number, Floor, Area, Rooms_Count, Price) VALUES ('Лесная', 10, 10, 2, 50, 1, 950000);
select * from Apartments;

INSERT INTO Buyers (Buyer_ID, Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES (3000,'Сидоров Петр Петрович', 1500000, '3-комнатная, центр', '+79993332211', 'sidorov@mail.ru', '1234 567890');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Сидоров Петр Петрович', 1500000, '3-комнатная, центр', '+79993332211', 'sidorov@mail.ru', '1234 567890');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Кузнецова Елена Николаевна', 1000000, '2-комнатная, парковка', '+79994443322', 'kuznetsova@mail.ru', '2345 678901');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Васильева Ольга Сергеевна', 1200000, '2-комнатная, новая постройка', '+79997776655', 'vasilieva@mail.ru', '3456 789012');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Федоров Алексей Иванович', 2000000, '3-комнатная, элитный дом', '+79998887766', 'fedorov@mail.ru', '4567 890123');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Ильина Мария Александровна', 800000, '1-комнатная, близость магазинов', '+79999998877', 'ilina@mail.ru', '5678 901234');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Козлов Дмитрий Юрьевич', 1800000, '4-комнатная, тихий район', '+79990009988', 'kozlov@mail.ru', '6789 012345');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Попова Екатерина Владимировна', 1300000, '3-комнатная, на берегу реки', '+79991112233', 'popova@mail.ru', '7890 123456');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Николаев Сергей Алексеевич', 900000, '2-комнатная, рядом с парком', '+79992223344', 'nikolaev@mail.ru', '8901 234567');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Семенова Наталья Петровна', 1100000, '2-комнатная, хорошая планировка', '+79993334455', 'semenova@mail.ru', '9012 345678');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Романов Андрей Михайлович', 1600000, '4-комнатная, высокий этаж', '+79994445566', 'romanov@mail.ru', '0123 456789');
INSERT INTO Buyers (Full_Name, Budget, Preferences, Phone, Email, Passport_Data) VALUES ('Куликова Татьяна Сергеевна', 1400000, '3-комнатная, близость школы', '+79995556677', 'kulikova@mail.ru', '1234 567890');
select * from Buyers;

INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (12342, '2022-01-01', 12000000, 2001, 3001, 1005);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (56521, '2022-01-01', 1200000, 2001, 3001, 1001);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (89792, '2022-01-02', 950000, 2001, 3002, 1002);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (32545, '2022-01-03', 1400000, 2003, 3003, 1003);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (48678, '2022-01-04', 1100000, 2004, 3004, 1004);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (67575, '2022-01-05', 1600000, 2005, 3005, 1005);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (64345, '2022-01-06', 1300000, 2004, 3006, 1006);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (70535, '2022-01-07', 1800000, 2007, 3007, 1007);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (23458, '2022-01-08', 1500000, 2008, 3003, 1008);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (96543, '2022-01-09', 800000, 2003, 3009, 1009);
INSERT INTO Deals (Deal_ID, Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES (14570, '2022-01-10', 1000000, 2010, 3010, 1010);
INSERT INTO Deals (Deal_Date, Deal_Price, Apartment_ID, Buyer_ID, Realtor_ID) VALUES ('2022-04-10', 2000000, 2010, 3011, 1010);
select * from Deals;



select * from Realtors;
select * from Apartments;
select * from Buyers;
select * from Deals;

DELETE FROM Deals;
DELETE FROM Buyers;
DELETE FROM Apartments;
DELETE FROM Realtors;

DROP TABLE IF EXISTS Deals CASCADE;
DROP TABLE IF EXISTS Buyers CASCADE;
DROP TABLE IF EXISTS Apartments CASCADE;
DROP TABLE IF EXISTS Realtors CASCADE;



/*
1) Выбирает из таблицы Apartments информацию от 3-комнатных квартирах, расположенных на улице "Садовая"
2) Выбирает из таблицы Realtors информацию о риэлторах, для которых фамилия начинается с буквы "И" и процент вознаграждения больше 10
3) Выбирает из табоицы Apartments информацию об 1-комнатных квартирах, цена на которые находится в диапазоне от 900000 до 1000000
4) Выбирает из таблицы Apartments информацию о квартирах с некоторым количеством комнат. Конкретное количество комнат вводится при выполнении запроса.
5) Выбирает из таблицы Apartments информацию обо всех 2-комнатных квартирах, площадь которых есть значение из некоторого диапазона. Нижняя и верхняя границы диапазона задаются при выполнении запроса.
6) Вычисляет для каждой оформленной сделки размер коммиссионного вознаграждения риэлтора. Включает поля ФИО риэлтора, Дата сделки, Цена квартиры, Процент вознаграждения, Комиссионные. Значения в поле Комиссионные вычисляются по формуле: Комиссионные: Цена квартиры*Проуент вознаграждения
7) Выполняет группировку по полю Количество комнат. Для каждой группы вычисляет среднее значение по полю Площадь квартиры.
8) Выполняет группировку по полю Площадь квартиры. Для каждой группы вычисляет наибольшее и наименьшее значение по полю Количество комнат.
*/


--1) Выбирает из таблицы Apartments информацию от 3-комнатных квартирах, расположенных на улице "Садовая"
SELECT * FROM Apartments WHERE Rooms_Count = 3 AND Street = 'Садовая';

--2) Выбирает из таблицы Realtors информацию о риэлторах, для которых фамилия начинается с буквы "И" и процент вознаграждения больше 10
SELECT * FROM Realtors WHERE Full_Name LIKE 'И%' AND Commission_Percentage > 10;

--3) Выбирает из таблицы Apartments информацию об 1-комнатных квартирах, цена на которые находится в диапазоне от 900000 до 1000000
SELECT * FROM Apartments WHERE Rooms_Count = 1 AND Price BETWEEN 900000 AND 1000000;

--4) Выбирает из таблицы Apartments информацию о квартирах с некоторым количеством комнат. Конкретное количество комнат вводится при выполнении запроса.
SELECT * FROM Apartments WHERE Rooms_Count = :number_of_rooms;
-- Здесь :number_of_rooms - это переменная, в которую нужно подставить конкретное количество комнат при выполнении запроса
SELECT * FROM Apartments WHERE Rooms_Count =3;

--5) Выбирает из таблицы Apartments информацию обо всех 2-комнатных квартирах, площадь которых есть значение из некоторого диапазона. Нижняя и верхняя границы диапазона задаются при выполнении запроса.
SELECT * FROM Apartments WHERE Rooms_Count = 2 AND Area BETWEEN :min_area AND :max_area;
-- Здесь :min_area и :max_area - это переменные, в которые нужно подставить нижнюю и верхнюю границы диапазона при выполнении запроса
SELECT * FROM Apartments WHERE Rooms_Count = 2 AND Area BETWEEN 50 AND 60;

--6) Вычисляет для каждой оформленной сделки размер коммиссионного вознаграждения риэлтора. Включает поля ФИО риэлтора, Дата сделки, Цена квартиры, Процент вознаграждения, Комиссионные. 
--Значения в поле Комиссионные вычисляются по формуле: Комиссионные: Цена квартиры*Проуент вознаграждения
SELECT r.Full_Name, d.Deal_Date, a.Price, r.Commission_Percentage, a.Price * r.Commission_Percentage / 100 AS Commission
FROM Deals d
JOIN Apartments a ON d.Apartment_ID = a.Apartment_ID
JOIN Realtors r ON d.Realtor_ID = r.Realtor_ID;

--7) Выполняет группировку по полю Количество комнат. Для каждой группы вычисляет среднее значение по полю Площадь квартиры.
SELECT Rooms_Count, AVG(Area) AS Average_Area
FROM Apartments
GROUP BY Rooms_Count;

--8) Выполняет группировку по полю Площадь квартиры. Для каждой группы вычисляет наибольшее и наименьшее значение по полю Количество комнат.
SELECT Area, MIN(Rooms_Count) AS Min_Rooms, MAX(Rooms_Count) AS Max_Rooms
FROM Apartments
GROUP BY Area;






DELETE FROM Deals;
DELETE FROM Buyers;
DELETE FROM Apartments;
DELETE FROM Realtors;

DROP TABLE Deals CASCADE CONSTRAINTS;
DROP TABLE Buyers CASCADE CONSTRAINTS;
DROP TABLE Apartments CASCADE CONSTRAINTS;
DROP TABLE Realtors CASCADE CONSTRAINTS;








