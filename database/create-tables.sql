CREATE TABLE disciplines (
  id integer PRIMARY KEY,
  name varchar(20) NOT NULL,
  description varchar(100) NOT NULL
);

CREATE TABLE milestones (
  id integer PRIMARY KEY,
  discipline_id integer REFERENCES disciplines,
  name varchar(20) NOT NULL,
  description varchar(100) NOT NULL
);

CREATE TABLE habits (
  id integer PRIMARY KEY,
  milestone_id integer REFERENCES milestones,
  name varchar(20) NOT NULL,
  description varchar(100) NOT NULL
);