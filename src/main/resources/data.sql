DROP TABLE IF EXISTS role;
DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS authorization;

CREATE TABLE role (
  role_id INT AUTO_INCREMENT  PRIMARY KEY,
  role_title VARCHAR(250) NOT NULL,
  role_description VARCHAR(250) NOT NULL
);

INSERT INTO role (role_title, role_description) VALUES
  ('HR_Manager', 'HR Manager'),
  ('Recruitment_Responsable', 'Responsible of recruitment');

CREATE TABLE account (
  account_mail_adresse VARCHAR(250) PRIMARY KEY,
  password  VARCHAR(250) NOT NULL,
  account_first_name VARCHAR(250) DEFAULT NULL,
  account_last_name VARCHAR(250)  DEFAULT NULL,
  role_id INT DEFAULT 0
);

INSERT INTO account (account_mail_adresse, password,account_first_name, account_last_name,role_id) VALUES
  ('yelouardi@sqli.com','123456','Yassine', 'Elouardi',1),
  ('zeljazouli@sqli.com','123456','Zakaria', 'El Jazouli',1),
  ('klabib@sqli.com','123456','Khalid', 'Labib',2),
  ('kkouiss@sqli.com','123456','Khalil', 'Kouiss',2),
  ('hbenderouach@sqli.com','123456','Hamza', 'Benderouach',2);

  CREATE TABLE authorization (
  authorization_id INT AUTO_INCREMENT  PRIMARY KEY,
  authorization_title VARCHAR(250) NOT NULL,
  authorization_description VARCHAR(250) NOT NULL,
  authorization_url VARCHAR(250) NOT NULL,
  role_id INT NOT NULL
);

INSERT INTO authorization (authorization_title, authorization_description,authorization_url,role_id) VALUES
  ('Create person', 'The creation of the person','/authorization',1),
  ('Find all Authorization', 'Find all Authorization','/authorization/all',2),
  ('Create role', 'The creation of the role','/role',1),
  ('Find all roles', 'Find all roles','/role/all',2);