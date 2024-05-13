-- Disable the enforcement of foreign-keys constraints
PRAGMA foreign_keys = off;
-- Create "new_users" table
CREATE TABLE `new_users` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `firebase_uid` text NULL,
  `display_name` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` text NULL,
  `email_verified` bool NOT NULL DEFAULT (false),
  `password` text NULL
);
-- Copy rows from old table "users" to new temporary table "new_users"
INSERT INTO `new_users` (`id`, `firebase_uid`, `display_name`, `created_at`, `updated_at`) SELECT `id`, `firebase_uid`, `display_name`, `created_at`, `updated_at` FROM `users`;
-- Drop "users" table after copying rows
DROP TABLE `users`;
-- Rename temporary table "new_users" to "users"
ALTER TABLE `new_users` RENAME TO `users`;
-- Create index "users_firebase_uid_key" to table: "users"
CREATE UNIQUE INDEX `users_firebase_uid_key` ON `users` (`firebase_uid`);
-- Create index "users_email_key" to table: "users"
CREATE UNIQUE INDEX `users_email_key` ON `users` (`email`);
-- Enable back the enforcement of foreign-keys constraints
PRAGMA foreign_keys = on;
