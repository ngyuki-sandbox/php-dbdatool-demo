DROP TABLE IF EXISTS t_user;
DROP TABLE IF EXISTS t_group;

CREATE TABLE t_group (
    group_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),

    PRIMARY KEY (group_id)
);

CREATE TABLE t_user (
    user_id INT NOT NULL AUTO_INCREMENT,
    group_id INT NOT NULL,
    username VARCHAR(255),
    email VARCHAR(255),
    remarks TEXT,

    PRIMARY KEY (user_id)
);

ALTER TABLE t_user ADD CONSTRAINT fk_user__group FOREIGN KEY (group_id) REFERENCES t_group (group_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE t_user ADD UNIQUE INDEX u_email (email);
