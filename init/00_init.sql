ALTER USER postgres WITH PASSWORD 'postgres';

CREATE ROLE discord_economy_bot WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	REPLICATION
	NOBYPASSRLS
	CONNECTION LIMIT -1
	PASSWORD 'economy_bot';

CREATE DATABASE discord_economy_bot_db
	WITH
	OWNER = discord_economy_bot
	ENCODING = 'UTF8'
	LOCALE_PROVIDER = 'libc'
	CONNECTION LIMIT = -1
	IS_TEMPLATE = False;

CREATE ROLE discord_moderation_bot WITH
	LOGIN
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	REPLICATION
	NOBYPASSRLS
	CONNECTION LIMIT -1
	PASSWORD 'moderation_bot';

CREATE DATABASE discord_moderation_bot_db
	WITH
	OWNER = discord_moderation_bot
	ENCODING = 'UTF8'
	LOCALE_PROVIDER = 'libc'
	CONNECTION LIMIT = -1
	IS_TEMPLATE = False;

\connect discord_moderation_bot_db
\i /docker-entrypoint-initdb.d/discord_moderation_bot_backup.sql