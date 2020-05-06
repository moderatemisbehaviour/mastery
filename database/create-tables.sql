CREATE TABLE disciplines (
  id integer PRIMARY KEY,
  name varchar(40) NOT NULL
);

CREATE TABLE milestones (
  id integer PRIMARY KEY,
  discipline_id integer REFERENCES disciplines,
  name varchar(40) NOT NULL
);

CREATE TABLE habits (
  id integer PRIMARY KEY,
  milestone_id integer REFERENCES milestones,
  name varchar(40) NOT NULL
);