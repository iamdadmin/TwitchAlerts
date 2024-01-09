CREATE TABLE guilds (
    guild_id serial PRIMARY KEY,
    guild_name VARCHAR ( 50 ) UNIQUE NOT NULL,
    guild_owner VARCHAR ( 50 ) NOT NULL,
    guild_language VARCHAR ( 255 ) NOT NULL,
    guild_created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

);