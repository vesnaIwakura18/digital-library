CREATE TABLE Person (
                        person_id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
                        fio varchar(100) NOT NULL UNIQUE,
                        birth_date varchar NOT NULL,
                        password varchar not null,
                        username varchar(20) not null,
                        role varchar(100) not null
);
CREATE TABLE Book (
                      book_id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
                      title varchar(100) NOT NULL,
                      author varchar(100) NOT NULL,
                      year_of_production varchar NOT NULL,
                      person_id int REFERENCES Person(person_id) ON DELETE SET NULL,
                      taken_at_date date,
                      taken_at_timestamp timestamp
);
insert into person (fio, birth_date, password, username, role) values ('Admin Admin Admin', '2000', '123456', 'admin', 'ROLE_ADMIN');