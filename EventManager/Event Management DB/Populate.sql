-- Write your own SQL object definition here, and it'll be included in your package.
-- Insert sample data into the Organizers table
INSERT INTO Organizers (organizer_name, contact_email, contact_phone)
VALUES
    ('Tech Corp', 'contact@techcorp.com', '111-222-3333'),
    ('Music Ltd', 'info@musicltd.com', '444-555-6666'),
    ('Event Masters', 'info@eventmasters.com', '777-888-9999');

-- Insert sample data into the Events table
INSERT INTO Events (event_name, event_date, event_time, location, description, organizer_id)
VALUES
    ('Tech Conference', '2024-06-15', '09:00:00', 'Convention Center', 'Annual tech conference', 1),
    ('Music Festival', '2024-07-20', '14:00:00', 'City Park', 'Outdoor music festival', 2);

-- Insert sample data into the Attendees table
INSERT INTO Attendees (first_name, last_name, email, phone, registration_date, event_id)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '123-456-7890', '2024-06-01', 1),
    ('Jane', 'Smith', 'jane.smith@example.com', '098-765-4321', '2024-06-03', 1),
    ('Alice', 'Johnson', 'alice.johnson@example.com', '555-666-7777', '2024-07-05', 2);
