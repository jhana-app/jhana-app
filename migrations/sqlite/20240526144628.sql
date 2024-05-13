-- Create "auth_tokens" table
CREATE TABLE `auth_tokens` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `jwt_id` text NOT NULL,
  `issued_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  `user_id` integer NOT NULL,
  CONSTRAINT `auth_tokens_users_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
);
-- Create index "auth_tokens_jwt_id_key" to table: "auth_tokens"
CREATE UNIQUE INDEX `auth_tokens_jwt_id_key` ON `auth_tokens` (`jwt_id`);
-- Create index "authtoken_user_id" to table: "auth_tokens"
CREATE INDEX `authtoken_user_id` ON `auth_tokens` (`user_id`);
-- Create index "authtoken_expires_at" to table: "auth_tokens"
CREATE INDEX `authtoken_expires_at` ON `auth_tokens` (`expires_at`);
