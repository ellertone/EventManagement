-- Create Organizer Stored Procedure
CREATE PROCEDURE CreateOrganizer
    @organizer_name VARCHAR(255),
    @contact_email VARCHAR(255),
    @contact_phone VARCHAR(20)
AS
BEGIN
    INSERT INTO Organizers (organizer_name, contact_email, contact_phone)
    VALUES (@organizer_name, @contact_email, @contact_phone);
END;
GO





-- Read Organizer Stored Procedure
CREATE PROCEDURE ReadOrganizer
AS
BEGIN
    SELECT * FROM Organizers;
END;
GO




-- Update Organizer Stored Procedure
CREATE PROCEDURE UpdateOrganizer
    @organizer_id INT,
    @organizer_name VARCHAR(255),
    @contact_email VARCHAR(255),
    @contact_phone VARCHAR(20)
AS
BEGIN
    UPDATE Organizers
    SET organizer_name = @organizer_name,
        contact_email = @contact_email,
        contact_phone = @contact_phone
    WHERE organizer_id = @organizer_id;
END;
GO




-- Delete Organizer Stored Procedure
CREATE PROCEDURE DeleteOrganizer
    @organizer_id INT
AS
BEGIN
    DELETE FROM Organizers
    WHERE organizer_id = @organizer_id;
END;
GO
