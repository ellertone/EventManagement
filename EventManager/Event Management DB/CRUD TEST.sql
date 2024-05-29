-- Create a new organizer
EXEC CreateOrganizer 'Tech Corp', 'contact@techcorp.com', '111-222-3333';

-- Read all organizers
EXEC ReadOrganizer;

-- Update an organizer
EXEC UpdateOrganizer 1, 'Tech Corporation', 'newcontact@techcorp.com', '999-888-7777';

-- Delete an organizer
EXEC DeleteOrganizer 1;

-- Read all organizers again
EXEC ReadOrganizer;