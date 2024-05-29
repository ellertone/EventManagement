
-- Create the Events table
CREATE TABLE Events (
    event_id INT IDENTITY(1,1) PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    event_date DATE NOT NULL,
    event_time TIME NOT NULL,
    location VARCHAR(255) NOT NULL,
    description TEXT,
    organizer_id INT,
    FOREIGN KEY (organizer_id) REFERENCES Organizers(organizer_id)
);

-- Create the Attendees table
CREATE TABLE Attendees (
    attendee_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    registration_date DATE NOT NULL,
    event_id INT,
    FOREIGN KEY (event_id) REFERENCES Events(event_id)
);

-- Create the Organizers table
CREATE TABLE Organizers (
    organizer_id INT IDENTITY(1,1) PRIMARY KEY,
    organizer_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    contact_phone VARCHAR(20)
);
