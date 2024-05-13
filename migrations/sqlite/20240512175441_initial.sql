-- Create "contents" table
CREATE TABLE `contents` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `type` text NOT NULL,
  `icon_image` text NOT NULL,
  `cover_image` text NOT NULL,
  `title` text NOT NULL,
  `subtitle` text NOT NULL,
  `description` text NOT NULL,
  `source` text NOT NULL,
  `source_url` text NOT NULL,
  `licence` text NOT NULL,
  `licence_url` text NOT NULL,
  `is_hidden` bool NOT NULL DEFAULT (false),
  `order` integer NOT NULL,
  `episodes_count` integer NOT NULL
);
-- Create "content_episodes" table
CREATE TABLE `content_episodes` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `type` text NOT NULL,
  `title` text NOT NULL,
  `subtitle` text NOT NULL,
  `description` text NOT NULL,
  `duration` integer NOT NULL,
  `stream_url` text NOT NULL,
  `download_url` text NOT NULL,
  `source` text NOT NULL DEFAULT (''),
  `source_url` text NOT NULL DEFAULT (''),
  `licence` text NOT NULL DEFAULT (''),
  `licence_url` text NOT NULL DEFAULT (''),
  `is_hidden` bool NOT NULL DEFAULT (false),
  `order` integer NOT NULL,
  `content_id` integer NOT NULL,
  CONSTRAINT `content_episodes_contents_content` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION
);
-- Create "content_progresses" table
CREATE TABLE `content_progresses` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `content_type` text NOT NULL,
  `progress` integer NOT NULL DEFAULT (0),
  `finished_at` datetime NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` integer NOT NULL,
  `content_id` integer NOT NULL,
  `episode_id` integer NOT NULL,
  CONSTRAINT `content_progresses_users_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `content_progresses_contents_content` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `content_progresses_content_episodes_episode` FOREIGN KEY (`episode_id`) REFERENCES `content_episodes` (`id`) ON DELETE NO ACTION
);
-- Create "courses" table
CREATE TABLE `courses` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `icon_image` text NOT NULL,
  `cover_image` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `color` text NOT NULL,
  `active` bool NOT NULL,
  `order` integer NOT NULL
);
-- Create "journal_records" table
CREATE TABLE `journal_records` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `date_time` datetime NOT NULL,
  `duration` integer NOT NULL,
  `note` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` integer NOT NULL,
  `lesson_id` integer NULL,
  CONSTRAINT `journal_records_users_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `journal_records_lessons_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE SET NULL
);
-- Create "lessons" table
CREATE TABLE `lessons` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `type` text NOT NULL,
  `icon_image` text NOT NULL,
  `cover_image` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `order` integer NOT NULL,
  `unit_id` integer NOT NULL,
  CONSTRAINT `lessons_units_unit` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE NO ACTION
);
-- Create "lesson_audios" table
CREATE TABLE `lesson_audios` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `audio_url` text NOT NULL,
  `duration` integer NOT NULL,
  `lesson_id` integer NOT NULL,
  CONSTRAINT `lesson_audios_lessons_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE NO ACTION
);
-- Create "lesson_techniques" table
CREATE TABLE `lesson_techniques` (
  `order` integer NOT NULL,
  `lesson_id` integer NOT NULL,
  `technique_id` integer NOT NULL,
  PRIMARY KEY (`lesson_id`, `technique_id`),
  CONSTRAINT `lesson_techniques_lessons_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `lesson_techniques_techniques_technique` FOREIGN KEY (`technique_id`) REFERENCES `techniques` (`id`) ON DELETE NO ACTION
);
-- Create "techniques" table
CREATE TABLE `techniques` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `icon_image` text NOT NULL,
  `cover_image` text NOT NULL,
  `title` text NOT NULL,
  `subtitle` text NOT NULL,
  `description` text NOT NULL,
  `order` integer NOT NULL,
  `unit_id` integer NOT NULL,
  CONSTRAINT `techniques_units_unit` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE NO ACTION
);
-- Create "units" table
CREATE TABLE `units` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `icon_image` text NOT NULL,
  `cover_image` text NOT NULL,
  `title` text NOT NULL,
  `subtitle` text NOT NULL,
  `description` text NOT NULL,
  `mastering` text NOT NULL,
  `days` integer NOT NULL,
  `color` text NOT NULL,
  `order` integer NOT NULL,
  `course_id` integer NOT NULL,
  CONSTRAINT `units_courses_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE NO ACTION
);
-- Create "unit_techniques" table
CREATE TABLE `unit_techniques` (
  `position` integer NOT NULL,
  `unit_id` integer NOT NULL,
  `technique_id` integer NOT NULL,
  PRIMARY KEY (`unit_id`, `technique_id`),
  CONSTRAINT `unit_techniques_units_unit` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `unit_techniques_techniques_technique` FOREIGN KEY (`technique_id`) REFERENCES `techniques` (`id`) ON DELETE NO ACTION
);
-- Create "users" table
CREATE TABLE `users` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `firebase_uid` text NOT NULL,
  `display_name` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
);
-- Create index "users_firebase_uid_key" to table: "users"
CREATE UNIQUE INDEX `users_firebase_uid_key` ON `users` (`firebase_uid`);
-- Create "user_progresses" table
CREATE TABLE `user_progresses` (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `lesson_type` text NOT NULL,
  `is_last` bool NOT NULL,
  `is_next` bool NOT NULL,
  `progress` integer NOT NULL DEFAULT (0),
  `finished_at` datetime NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` integer NOT NULL,
  `course_id` integer NOT NULL,
  `unit_id` integer NOT NULL,
  `lesson_id` integer NOT NULL,
  CONSTRAINT `user_progresses_users_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `user_progresses_courses_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `user_progresses_units_unit` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `user_progresses_lessons_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE NO ACTION
);
