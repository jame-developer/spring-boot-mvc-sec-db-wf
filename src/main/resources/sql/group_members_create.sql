-- Table: group_members

-- DROP TABLE group_members;

CREATE TABLE group_members
(
  id bigint NOT NULL,
  username character varying(50) NOT NULL,
  group_id bigint NOT NULL,
  CONSTRAINT pk_group_members PRIMARY KEY (id),
  CONSTRAINT fk_group_members_group FOREIGN KEY (group_id)
      REFERENCES groups (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE group_members
  OWNER TO postgres;

-- Index: fki_group_members_group

-- DROP INDEX fki_group_members_group;

CREATE INDEX fki_group_members_group
  ON group_members
  USING btree
  (group_id);

