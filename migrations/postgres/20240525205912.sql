-- Modify "users" table
ALTER TABLE "users" ALTER COLUMN "firebase_uid" DROP NOT NULL, ADD COLUMN "email" character varying NULL, ADD COLUMN "email_verified" boolean NOT NULL DEFAULT false, ADD COLUMN "password" character varying NULL;
-- Create index "users_email_key" to table: "users"
CREATE UNIQUE INDEX "users_email_key" ON "users" ("email");
