-- ============================================
-- SQL Mastery Practice Database
-- Run this to set up your practice tables
-- ============================================

-- Movies table
CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    director TEXT,
    year INTEGER,
    length_minutes INTEGER,
    genre TEXT
);

-- Box office table
CREATE TABLE IF NOT EXISTS box_office (
    movie_id INTEGER,
    rating REAL,
    domestic_sales INTEGER,
    international_sales INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies(id)
);

-- Insert movies
INSERT INTO movies VALUES (1, 'Toy Story', 'John Lasseter', 1995, 81, 'Animation');
INSERT INTO movies VALUES (2, 'A Bugs Life', 'John Lasseter', 1998, 95, 'Animation');
INSERT INTO movies VALUES (3, 'Toy Story 2', 'John Lasseter', 1999, 93, 'Animation');
INSERT INTO movies VALUES (4, 'Monsters Inc', 'Pete Docter', 2001, 92, 'Animation');
INSERT INTO movies VALUES (5, 'Finding Nemo', 'Andrew Stanton', 2003, 107, 'Animation');
INSERT INTO movies VALUES (6, 'The Incredibles', 'Brad Bird', 2004, 116, 'Animation');
INSERT INTO movies VALUES (7, 'Cars', 'John Lasseter', 2006, 117, 'Animation');
INSERT INTO movies VALUES (8, 'Ratatouille', 'Brad Bird', 2007, 115, 'Animation');
INSERT INTO movies VALUES (9, 'WALL-E', 'Andrew Stanton', 2008, 104, 'Animation');
INSERT INTO movies VALUES (10, 'Up', 'Pete Docter', 2009, 101, 'Animation');
INSERT INTO movies VALUES (11, 'Toy Story 3', 'Lee Unkrich', 2010, 103, 'Animation');
INSERT INTO movies VALUES (12, 'Cars 2', 'John Lasseter', 2011, 120, 'Animation');
INSERT INTO movies VALUES (13, 'Brave', 'Brenda Chapman', 2012, 102, 'Animation');
INSERT INTO movies VALUES (14, 'Monsters University', 'Dan Scanlon', 2013, 110, 'Animation');

-- Insert box office data (some movies intentionally missing to practice JOINs later)
INSERT INTO box_office VALUES (5, 8.2, 380843261, 555900000);
INSERT INTO box_office VALUES (14, 7.4, 268492764, 475066843);
INSERT INTO box_office VALUES (8, 8.0, 206445654, 417277164);
INSERT INTO box_office VALUES (12, 6.4, 191452396, 368400000);
INSERT INTO box_office VALUES (3, 7.9, 245852179, 239163000);
INSERT INTO box_office VALUES (6, 8.0, 261441092, 370001000);
INSERT INTO box_office VALUES (9, 8.5, 223808164, 297503696);
INSERT INTO box_office VALUES (11, 8.4, 415004880, 648167031);
INSERT INTO box_office VALUES (1, 8.3, 191796233, 170162503);
INSERT INTO box_office VALUES (7, 7.2, 244082982, 217900167);
INSERT INTO box_office VALUES (10, 8.3, 293004164, 438338580);
INSERT INTO box_office VALUES (4, 8.1, 289916256, 272900000);
INSERT INTO box_office VALUES (2, 7.2, 162798565, 200600000);
INSERT INTO box_office VALUES (13, 7.2, 237283207, 301700000);

-- Movies with NO box office data (for practicing OUTER JOINs)
INSERT INTO movies VALUES (15, 'Inside Out', 'Pete Docter', 2015, 95, 'Animation');
INSERT INTO movies VALUES (16, 'Coco', 'Lee Unkrich', 2017, 105, 'Animation');
