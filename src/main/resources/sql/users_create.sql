-- Table: users

-- DROP TABLE users;

CREATE TABLE users
(
  username character varying(50) NOT NULL,
  password text NOT NULL,
  enabled boolean NOT NULL,
  CONSTRAINT pk_username PRIMARY KEY (username)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE users
  OWNER TO postgres;

-- Index: pk_idx

-- DROP INDEX pk_idx;

CREATE UNIQUE INDEX pk_idx
  ON users
  USING btree
  (username COLLATE pg_catalog."default" NULLS FIRST);

