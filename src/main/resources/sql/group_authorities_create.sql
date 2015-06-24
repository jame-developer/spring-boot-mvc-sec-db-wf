-- Table: group_authorities

-- DROP TABLE group_authorities;

CREATE TABLE group_authorities
(
  group_id bigint NOT NULL,
  authority character varying(50) NOT NULL,
  CONSTRAINT group_authorities_pkey PRIMARY KEY (group_id),
  CONSTRAINT fk_group_authorities_group FOREIGN KEY (group_id)
      REFERENCES groups (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE group_authorities
  OWNER TO postgres;
