CREATE TABLE IF NOT EXISTS Organization
(
    id        BIGINT AUTO_INCREMENT COMMENT 'Уникальный идентификатор' PRIMARY KEY,
    version   INTEGER      NOT NULL COMMENT 'Служебное поле hibernate',
    name      VARCHAR(50)  NOT NULL COMMENT 'Название',
    full_name VARCHAR(250) NOT NULL COMMENT 'Полное имя',
    inn       VARCHAR(10)  NOT NULL COMMENT 'Идентификационный номер налогоплательщика',
    kpp       VARCHAR(9)   NOT NULL COMMENT 'Код причины постановки',
    address   VARCHAR(250) NOT NULL COMMENT 'Адрес',
    phone     VARCHAR(20)           COMMENT 'Телефон',
    is_active BOOLEAN               COMMENT 'Является ли деятельность организации является активной'
);
COMMENT ON TABLE Organization IS 'Организация';

CREATE TABLE IF NOT EXISTS Office
(
    id              BIGINT AUTO_INCREMENT   COMMENT 'Уникальный идентификатор' PRIMARY KEY,
    version         INTEGER      NOT NULL   COMMENT 'Служебное поле hibernate',
    name            VARCHAR(50)  NOT NULL   COMMENT 'Название',
    address         VARCHAR(255) NOT NULL   COMMENT 'Адрес',
    phone           VARCHAR(20)             COMMENT 'Телефон',
    is_active       BOOLEAN                 COMMENT 'Является ли деятельность офиса является активной',
    organization_id BIGINT       NOT NULL   COMMENT 'Код организации, выступает в роли внешнего ключа'
);
COMMENT ON TABLE Office IS 'Офис';

CREATE TABLE IF NOT EXISTS Document_type
(
    id   BIGINT AUTO_INCREMENT  COMMENT 'Уникальный идентификатор' PRIMARY KEY,
    code SMALLINT     NOT NULL  COMMENT 'Код документа',
    name VARCHAR(100) NOT NULL  COMMENT 'Название'
);
COMMENT ON TABLE Document_type IS 'Тип документа';

CREATE TABLE IF NOT EXISTS Citizenship
(
    id   BIGINT AUTO_INCREMENT  COMMENT 'Уникальный идентификатор' PRIMARY KEY,
    code SMALLINT       NOT NULL   COMMENT 'Код гражданства',
    name VARCHAR(50)    NOT NULL   COMMENT 'Название',

    CONSTRAINT CHECK_CITIZENSHIP_CODE_LENGHT CHECK (code > 0 AND code < 1000)
);
COMMENT ON TABLE Citizenship IS 'Гражданство';

CREATE TABLE IF NOT EXISTS User
(
    id              BIGINT AUTO_INCREMENT   COMMENT 'Уникальный идентификатор' PRIMARY KEY,
    version         INTEGER     NOT NULL    COMMENT 'Служебное поле hibernate',
    first_name      VARCHAR(50) NOT NULL    COMMENT 'Имя',
    second_name     VARCHAR(50)             COMMENT 'Фамилия',
    middle_name     VARCHAR(50)             COMMENT 'Отчество',
    position        VARCHAR(50) NOT NULL    COMMENT 'Должность',
    phone           VARCHAR(20)             COMMENT 'Телефон',
    citizenship_id  SMALLINT    NOT NULL    COMMENT 'Код гражданства, выступает в роли внешнего ключа',
    is_identified   BOOLEAN                 COMMENT 'Идентифицирован ли сотрудник',
    office_id       BIGINT      NOT NULL    COMMENT 'Код офиса, выступает в роли внешнего ключа',
);
COMMENT ON TABLE User IS 'Пользователь';

CREATE TABLE User_document
(
    id         BIGINT AUTO_INCREMENT            COMMENT 'Уникальный идентификатор' PRIMARY KEY,
    version    INTEGER          NOT NULL        COMMENT 'Служебное поле hibernate',
    doc_number VARCHAR(20)      NOT NULL        COMMENT 'Номер документа',
    doc_date   DATE             NOT NULL        COMMENT 'Дата выдачи',
    doc_id     SMALLINT         NOT NULL        COMMENT 'Код документа, выступает в роли внешнего ключа',
    user_id    BIGINT           NOT NULL        COMMENT 'Код человека, выступает в роли внешнего ключа',
);
COMMENT ON TABLE User_document IS 'Связующая таблица для User и Document_type';

ALTER TABLE Office
    ADD FOREIGN KEY (organization_id) REFERENCES Organization (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE User
    ADD FOREIGN KEY (citizenship_id) REFERENCES Citizenship (id)
        ON DELETE SET NULL
        ON UPDATE CASCADE;
ALTER TABLE User
    ADD FOREIGN KEY (office_id) REFERENCES Office (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE;

ALTER TABLE User_document
    ADD FOREIGN KEY (user_id) REFERENCES User (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE;
ALTER TABLE User_document
    ADD FOREIGN KEY (doc_id) REFERENCES Document_type (id)
        ON DELETE SET NULL
        ON UPDATE CASCADE;