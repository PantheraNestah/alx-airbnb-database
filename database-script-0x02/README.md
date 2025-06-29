The `seed.sql` file contains a full set of SQL statements to populate the database with meaningful sample data for development, testing, or demonstration purposes.

It includes:

- ✅ Four users (host, guests, and admin)
- ✅ Two properties listed by the host
- ✅ Two bookings by guests (one confirmed, one pending)
- ✅ One payment linked to a confirmed booking
- ✅ Two reviews written by guests
- ✅ Two messages exchanged between a guest and a host

The script also:

- Uses uuid_generate_v4() to generate unique UUIDs
- Maintains referential integrity via subqueries for foreign keys
- Resets and truncates all tables for clean and repeatable seeding