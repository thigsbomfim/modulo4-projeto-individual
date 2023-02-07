DROP DATABASE IF EXISTS BD_projeto_individual;

CREATE DATABASE BD_projeto_individual CHARACTER SET utf8 COLLATE utf8_general_ci;
USE BD_projeto_individual;

-- criando tabelas
CREATE TABLE institutions (
	institution_id INT PRIMARY KEY AUTO_INCREMENT,
    institution_name VARCHAR(255) NOT NULL,
    institution_address VARCHAR(400),
    institution_phone VARCHAR(30)
);

CREATE TABLE courses (
	course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255) NOT NULL,
    course_description TEXT NOT NULL,
    course_institution INT NOT NULL,
    FOREIGN KEY (course_institution) REFERENCES institutions (institution_id)
);

CREATE TABLE classes (
	class_id INT PRIMARY KEY AUTO_INCREMENT,
    class_start_date DATE,
    class_end_date DATE,
    class_room VARCHAR(50),
    class_course INT NOT NULL,
    FOREIGN KEY (class_course) REFERENCES courses (course_id)
);

CREATE TABLE subjects (
	sub_id INT PRIMARY KEY AUTO_INCREMENT,
    sub_name VARCHAR(100),
    sub_description TEXT,
    sub_course INT NOT NULL,
    FOREIGN KEY (sub_course) REFERENCES courses (course_id)
);

CREATE TABLE students (
	stud_id INT PRIMARY KEY AUTO_INCREMENT,
    stud_name VARCHAR(255) NOT NULL,
    stud_email VARCHAR(255),
    stud_phone VARCHAR(30),
    stud_birth DATE NOT NULL,
    stud_class INT NOT NULL
);

CREATE TABLE instructors (
	tutor_id INT PRIMARY KEY AUTO_INCREMENT,
    tutor_name VARCHAR(255),
    tutor_phone VARCHAR(30),
    tutor_email VARCHAR(255),
    tutor_subjects VARCHAR(100) NOT NULL
);

CREATE TABLE class_students (
	class_student INT PRIMARY KEY AUTO_INCREMENT,
	class_id INT NOT NULL,
	stud_id INT NOT NULL,
	FOREIGN KEY (class_id) REFERENCES classes (class_id),
	FOREIGN KEY (stud_id) REFERENCES students (stud_id)
);

CREATE TABLE class_instructors (
	class_tutor INT PRIMARY KEY AUTO_INCREMENT,
    class_id INT NOT NULL,
    tutor_id INT NOT NULL, 
    FOREIGN KEY (class_id) REFERENCES classes (class_id),
    FOREIGN KEY (tutor_id) REFERENCES instructors (tutor_id)
);


-- adicionando registros
INSERT INTO institutions (
	institution_name,
    institution_address,
    institution_phone
) VALUES (
	'Senac',
    ' R. Barcelos Domingos, 58 - Campo Grande, Rio de Janeiro - RJ, 23080-020',
    '(21) 2018-5866'
), (
	'Resilia',
    NULL,
    NULL
);

INSERT INTO courses (
	course_name,
    course_description,
    course_institution
) VALUES (
	'Desenvolvedor Web',
    'Desenvolvedor web é responsável por criar e manter aplicações e sites na internet usando tecnologias como HTML, CSS, JavaScript e frameworks como React ou Angular. Eles trabalham em equipe com designers, gerentes de projeto e outros profissionais para garantir que as aplicações sejam funcionais, intuitivas e atendam às necessidades dos usuários.',
    '1'
), (
	'Power Bi',
    'Power BI é uma ferramenta de análise de dados e visualização de informações da Microsoft. Ele permite transformar dados brutos em insights claros e impactantes através de dashboards interativos, relatórios e visualizações. Com integrações com fontes de dados diversas, como Excel, Banco de dados e cloud, Power BI ajuda os usuários a tomar decisões informadas baseadas em dados.',
    '1'
);

INSERT INTO classes (
	class_start_date,
    class_end_date,
    class_room,
    class_course
) VALUES (
	'2022/09/05',
    '2023/03/06',
    '210',
    '1'
), (
	'2022/10/05',
    '2023/04/06',
    '306',
    '2'
);

INSERT INTO subjects (
	sub_name,
    sub_description,
    sub_course
) VALUES (
	'TECH',
    'Tech em programação refere-se ao conjunto de tecnologias, ferramentas e linguagens de programação utilizadas para criar aplicações de software. Inclui desde linguagens de programação como Python, Java e C++, até frameworks, bibliotecas e ferramentas de desenvolvimento, como React, Angular e Git. A tecnologia em programação está em constante evolução, permitindo aos desenvolvedores criar soluções mais avançadas e eficientes para diversos setores, como saúde, financeiro, educação e muito mais.',
    '1'
), (
	'SOFT',
    'Soft skills em programação se referem a habilidades interpessoais e de resolução de problemas complementares à técnica dos desenvolvedores. Incluem comunicação, trabalho em equipe, pensamento crítico, aprendizado contínuo e flexibilidade.',
    '1'
);

INSERT INTO students (
	stud_name,
    stud_email,
    stud_phone,
    stud_birth,
    stud_class
) VALUES (
	'Thiago Bomfim',
    'thiago@bomfim.com',
    '(21) 94658-7258',
    '1997/03/20',
    '1'
), (
	'Alan Nataniel',
    'alan@nataniel.net',
    '(21) 97891-5642',
    '1994/06/20',
    '1'
);



INSERT INTO instructors (
	tutor_name,
    tutor_phone,
    tutor_email,
    tutor_subjects
) VALUES (
	'Andre Luferat',
    '(21) 95942-3264',
    'andre@luferat.com',
    '1'
), (
	'Wellington Nascimento',
    '(21) 97891-5642',
    'wellington@nascimento.com.br',
    '2'
);


INSERT INTO class_instructors (
	class_id,
    tutor_id
) VALUES (
	'1',
    '1'
), (
	'1',
    '2'
);

INSERT INTO class_students (
	class_id,
    stud_id
) VALUES (
	'1',
    '1'
), (
	'1',
    '2'
);
