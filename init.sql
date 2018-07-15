DROP TABLE IF EXISTS t_user;
DROP TABLE IF EXISTS t_group;

CREATE TABLE t_group (
    group_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),

    PRIMARY KEY (group_id)
);

CREATE TABLE t_user (
    group_id INT NOT NULL,
    user_id INT NOT NULL,
    username VARCHAR(255),
    email VARCHAR(100),

    PRIMARY KEY (group_id, user_id)
);
