
CREATE TABLE IF NOT EXISTS classes (
    class_id TEXT PRIMARY KEY,
    name TEXT,
    day TEXT,
    time TEXT,
    spots_left INTEGER
);

CREATE TABLE IF NOT EXISTS bookings (
    booking_id TEXT PRIMARY KEY,
    member TEXT,
    class_id TEXT,
    status TEXT
);

CREATE TABLE IF NOT EXISTS change_requests (
    number INTEGER PRIMARY KEY AUTOINCREMENT,
    booking_id TEXT,
    new_class_id TEXT,
    status TEXT
);

INSERT OR IGNORE INTO classes VALUES
('C10', 'Spin', 'Monday', '6:00 pm', 4),
('C11', 'Yoga', 'Wednesday', '7:00 am', 0),
('C12', 'Pilates', 'Tuesday', '9:00 am', 6),
('C13', 'HIIT', 'Thursday', '5:30 pm', 8),
('C14', 'Strength', 'Friday', '8:00 am', 5);

INSERT OR IGNORE INTO bookings VALUES
('K500', 'Sam Ortiz', 'C10', 'booked'),
('K501', 'Ava Kim', 'C11', 'booked'),
('K502', 'Jordan Lee', 'C12', 'booked'),
('K503', 'Taylor Smith', 'C13', 'booked'),
('K504', 'Alex Brown', 'C14', 'cancelled');
