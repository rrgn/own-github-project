CREATE TABLE project (
  id serial PRIMARY KEY,
  name varchar NOT NULL
);

CREATE TABLE coder (
  id serial PRIMARY KEY,
  name varchar NOT NULL,
  email varchar
);

CREATE TABLE pull_requests (
  id serial PRIMARY KEY,
  project_id integer NOT NULL,
  coder_id integer NOT NULL,
  accepted boolean
);

CREATE TABLE tech (
  id serial PRIMARY KEY,
  name varchar NOT NULL UNIQUE
);

CREATE TABLE commit (
  id serial PRIMARY KEY,
  project_id integer NOT NULL,
  coder_id integer NOT NULL,
  commit_message varchar,
  time_stamp timestamp
);

CREATE TABLE stars (
  id serial PRIMARY KEY,
  project_id integer NOT NULL,
  coder_id integer NOT NULL
);

CREATE TABLE tech_project (
  id serial PRIMARY KEY,
  project_id integer NOT NULL,
  tech_id integer NOT NULL
);

CREATE TABLE project_membership (
  id serial PRIMARY KEY,
  project_id integer NOT NULL,
  coder_id integer NOT NULL
);
