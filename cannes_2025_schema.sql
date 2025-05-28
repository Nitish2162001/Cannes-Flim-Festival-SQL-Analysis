
-- Table: celebrities
CREATE TABLE celebrities (
    celebrity_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    appearance_type VARCHAR(255),
    notes TEXT
);

INSERT INTO celebrities (name, appearance_type, notes) VALUES
('Aishwarya Rai Bachchan', 'Returning Attendee', NULL),
('Alia Bhatt', 'Debut Appearance', NULL),
('Urvashi Rautela', 'Returning Attendee', NULL),
('Sharmila Tagore', 'Attending Special Screening', NULL),
('Simi Garewal', 'Attending Special Screening', NULL),
('Janhvi Kapoor', 'Cannes Debut', 'Attending Global Premiere of ''Homebound'''),
('Ishaan Khatter', 'Cannes Debut', 'Attending Global Premiere of ''Homebound'''),
('Karan Johar', 'Cannes Debut', 'For Homebound'),
('Neeraj Ghaywan', 'Director of ''Homebound''', NULL),
('Jacqueline Fernandez', 'Returning Attendee', NULL),
('Payal Kapadia', 'Jury Member', NULL),
('Nitanshi Goel', 'Cannes Debut', NULL);

-- Table: films
CREATE TABLE films (
    film_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    section VARCHAR(100),
    description TEXT,
    director VARCHAR(100)
);

INSERT INTO films (title, section, description, director) VALUES
('Homebound', 'Un Certain Regard', 'Atmospheric drama with Ishaan, Janhvi, Vishal Jethwa', 'Neeraj Ghaywan'),
('A Doll Made Up of Clay', 'La Cinef', 'Student film by SRFTI', NULL);

-- Table: film_cast
CREATE TABLE film_cast (
    cast_id INT PRIMARY KEY AUTO_INCREMENT,
    film_id INT,
    celebrity_id INT,
    role VARCHAR(100),
    FOREIGN KEY (film_id) REFERENCES films(film_id),
    FOREIGN KEY (celebrity_id) REFERENCES celebrities(celebrity_id)
);

INSERT INTO film_cast (film_id, celebrity_id, role) VALUES
(1, 6, 'Actor'),
(1, 7, 'Actor'),
(1, 8, 'Producer'),
(1, 9, 'Director');

-- Table: bharat_pavilion_events
CREATE TABLE bharat_pavilion_events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_date DATE,
    day VARCHAR(20),
    films_launched TEXT,
    speakers TEXT
);

INSERT INTO bharat_pavilion_events (event_date, day, films_launched, speakers) VALUES
('2025-05-16', 'Friday', 'Snow Flower, Khalid Ka Shivaji, Sthal – The Match, Juna Furniture', NULL),
('2025-05-17', 'Saturday', 'The Love Ritual, American Underdog, Devendra Jadhav, Tanvi: The Great', 'Anupam Kher'),
('2025-05-18', 'Sunday', 'Lost and Found in Kumbh, Mahamantra, Bhagodia, Echoes of Valour, Charak', NULL),
('2025-05-19', 'Monday', 'Murder too Close – Love too Far, Ashva, Sabar Bonda, Baksho Bondi', NULL);

-- Table: student_films
CREATE TABLE student_films (
    student_film_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150),
    institute VARCHAR(150),
    section VARCHAR(100),
    description TEXT
);

INSERT INTO student_films (title, institute, section, description) VALUES
('A Doll Made Up of Clay', 'SRFTI', 'La Cinef', 'Upcoming generation of Indian filmmakers');
