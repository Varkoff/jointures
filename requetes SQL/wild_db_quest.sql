CREATE TABLE wizard
(
    id        INT         NOT NULL PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(80) NOT NULL,
    lastname  VARCHAR(80) NOT NULL
);

CREATE TABLE team(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(80) NOT NULL
);
CREATE TABLE player(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    wizard_id INT NOT NULL,
    team_id INT NOT NULL,
    CONSTRAINT fk_wizard_player FOREIGN KEY (wizard_id) REFERENCES wizard(id),
    CONSTRAINT fk_team_player FOREIGN KEY (team_id) REFERENCES team(id),
    role VARCHAR(50) NOT NULL,
    enrollment_date DATE NOT NULL
);