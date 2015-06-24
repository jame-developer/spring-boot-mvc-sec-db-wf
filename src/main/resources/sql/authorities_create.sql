-- Table: authorities

-- DROP TABLE authorities;

CREATE TABLE authorities
(
  username character varying(50) NOT NULL,
  authority character varying(50) NOT NULL,
  CONSTRAINT pk_authorities PRIMARY KEY (username, authority),
  CONSTRAINT fk_authorities_users FOREIGN KEY (username)
      REFERENCES users (username) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE authorities
  OWNER TO postgres;
