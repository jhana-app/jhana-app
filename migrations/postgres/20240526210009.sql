-- Modify "users" table
ALTER TABLE "users" ADD COLUMN "auth_method" character varying NOT NULL DEFAULT 'firebase';
