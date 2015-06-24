-- Table: groups

-- DROP TABLE groups;

CREATE TABLE groups
(
  id bigserial NOT NULL,
  group_name character varying(50) NOT NULL,
  CONSTRAINT pk_groups PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE groups
  OWNER TO postgres;
