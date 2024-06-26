// Code generated by ent, DO NOT EDIT.

package migrate

import (
	"entgo.io/ent/dialect/sql/schema"
	"entgo.io/ent/schema/field"
)

var (
	// AuthTokensColumns holds the columns for the "auth_tokens" table.
	AuthTokensColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "jwt_id", Type: field.TypeString, Unique: true},
		{Name: "issued_at", Type: field.TypeTime},
		{Name: "expires_at", Type: field.TypeTime},
		{Name: "user_id", Type: field.TypeInt64},
	}
	// AuthTokensTable holds the schema information for the "auth_tokens" table.
	AuthTokensTable = &schema.Table{
		Name:       "auth_tokens",
		Columns:    AuthTokensColumns,
		PrimaryKey: []*schema.Column{AuthTokensColumns[0]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "auth_tokens_users_user",
				Columns:    []*schema.Column{AuthTokensColumns[4]},
				RefColumns: []*schema.Column{UsersColumns[0]},
				OnDelete:   schema.Cascade,
			},
		},
		Indexes: []*schema.Index{
			{
				Name:    "authtoken_user_id",
				Unique:  false,
				Columns: []*schema.Column{AuthTokensColumns[4]},
			},
			{
				Name:    "authtoken_expires_at",
				Unique:  false,
				Columns: []*schema.Column{AuthTokensColumns[3]},
			},
		},
	}
	// ContentsColumns holds the columns for the "contents" table.
	ContentsColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "type", Type: field.TypeEnum, Enums: []string{"audio", "video", "text"}},
		{Name: "icon_image", Type: field.TypeString},
		{Name: "cover_image", Type: field.TypeString},
		{Name: "title", Type: field.TypeString},
		{Name: "subtitle", Type: field.TypeString},
		{Name: "description", Type: field.TypeString},
		{Name: "source", Type: field.TypeString},
		{Name: "source_url", Type: field.TypeString},
		{Name: "licence", Type: field.TypeString},
		{Name: "licence_url", Type: field.TypeString},
		{Name: "is_hidden", Type: field.TypeBool, Default: false},
		{Name: "order", Type: field.TypeInt},
		{Name: "episodes_count", Type: field.TypeInt},
	}
	// ContentsTable holds the schema information for the "contents" table.
	ContentsTable = &schema.Table{
		Name:       "contents",
		Columns:    ContentsColumns,
		PrimaryKey: []*schema.Column{ContentsColumns[0]},
	}
	// ContentEpisodesColumns holds the columns for the "content_episodes" table.
	ContentEpisodesColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "type", Type: field.TypeEnum, Enums: []string{"audio", "video", "text"}},
		{Name: "title", Type: field.TypeString},
		{Name: "subtitle", Type: field.TypeString},
		{Name: "description", Type: field.TypeString},
		{Name: "duration", Type: field.TypeInt},
		{Name: "stream_url", Type: field.TypeString},
		{Name: "download_url", Type: field.TypeString},
		{Name: "source", Type: field.TypeString, Default: ""},
		{Name: "source_url", Type: field.TypeString, Default: ""},
		{Name: "licence", Type: field.TypeString, Default: ""},
		{Name: "licence_url", Type: field.TypeString, Default: ""},
		{Name: "is_hidden", Type: field.TypeBool, Default: false},
		{Name: "order", Type: field.TypeInt},
		{Name: "content_id", Type: field.TypeInt64},
	}
	// ContentEpisodesTable holds the schema information for the "content_episodes" table.
	ContentEpisodesTable = &schema.Table{
		Name:       "content_episodes",
		Columns:    ContentEpisodesColumns,
		PrimaryKey: []*schema.Column{ContentEpisodesColumns[0]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "content_episodes_contents_content",
				Columns:    []*schema.Column{ContentEpisodesColumns[14]},
				RefColumns: []*schema.Column{ContentsColumns[0]},
				OnDelete:   schema.NoAction,
			},
		},
	}
	// ContentProgressesColumns holds the columns for the "content_progresses" table.
	ContentProgressesColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "content_type", Type: field.TypeEnum, Enums: []string{"audio", "video", "text"}},
		{Name: "progress", Type: field.TypeInt64, Default: 0},
		{Name: "finished_at", Type: field.TypeTime, Nullable: true},
		{Name: "created_at", Type: field.TypeTime},
		{Name: "updated_at", Type: field.TypeTime},
		{Name: "user_id", Type: field.TypeInt64},
		{Name: "content_id", Type: field.TypeInt64},
		{Name: "episode_id", Type: field.TypeInt64},
	}
	// ContentProgressesTable holds the schema information for the "content_progresses" table.
	ContentProgressesTable = &schema.Table{
		Name:       "content_progresses",
		Columns:    ContentProgressesColumns,
		PrimaryKey: []*schema.Column{ContentProgressesColumns[0]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "content_progresses_users_user",
				Columns:    []*schema.Column{ContentProgressesColumns[6]},
				RefColumns: []*schema.Column{UsersColumns[0]},
				OnDelete:   schema.NoAction,
			},
			{
				Symbol:     "content_progresses_contents_content",
				Columns:    []*schema.Column{ContentProgressesColumns[7]},
				RefColumns: []*schema.Column{ContentsColumns[0]},
				OnDelete:   schema.NoAction,
			},
			{
				Symbol:     "content_progresses_content_episodes_episode",
				Columns:    []*schema.Column{ContentProgressesColumns[8]},
				RefColumns: []*schema.Column{ContentEpisodesColumns[0]},
				OnDelete:   schema.NoAction,
			},
		},
	}
	// CoursesColumns holds the columns for the "courses" table.
	CoursesColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "icon_image", Type: field.TypeString},
		{Name: "cover_image", Type: field.TypeString},
		{Name: "title", Type: field.TypeString},
		{Name: "description", Type: field.TypeString},
		{Name: "color", Type: field.TypeString},
		{Name: "active", Type: field.TypeBool},
		{Name: "order", Type: field.TypeInt},
	}
	// CoursesTable holds the schema information for the "courses" table.
	CoursesTable = &schema.Table{
		Name:       "courses",
		Columns:    CoursesColumns,
		PrimaryKey: []*schema.Column{CoursesColumns[0]},
	}
	// JournalRecordsColumns holds the columns for the "journal_records" table.
	JournalRecordsColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "date_time", Type: field.TypeTime},
		{Name: "duration", Type: field.TypeInt},
		{Name: "note", Type: field.TypeString},
		{Name: "created_at", Type: field.TypeTime},
		{Name: "updated_at", Type: field.TypeTime},
		{Name: "user_id", Type: field.TypeInt64},
		{Name: "lesson_id", Type: field.TypeInt64, Nullable: true},
	}
	// JournalRecordsTable holds the schema information for the "journal_records" table.
	JournalRecordsTable = &schema.Table{
		Name:       "journal_records",
		Columns:    JournalRecordsColumns,
		PrimaryKey: []*schema.Column{JournalRecordsColumns[0]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "journal_records_users_user",
				Columns:    []*schema.Column{JournalRecordsColumns[6]},
				RefColumns: []*schema.Column{UsersColumns[0]},
				OnDelete:   schema.NoAction,
			},
			{
				Symbol:     "journal_records_lessons_lesson",
				Columns:    []*schema.Column{JournalRecordsColumns[7]},
				RefColumns: []*schema.Column{LessonsColumns[0]},
				OnDelete:   schema.SetNull,
			},
		},
	}
	// LessonsColumns holds the columns for the "lessons" table.
	LessonsColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "type", Type: field.TypeEnum, Enums: []string{"guided", "mastery"}},
		{Name: "icon_image", Type: field.TypeString},
		{Name: "cover_image", Type: field.TypeString},
		{Name: "title", Type: field.TypeString},
		{Name: "description", Type: field.TypeString},
		{Name: "order", Type: field.TypeInt},
		{Name: "unit_id", Type: field.TypeInt64},
	}
	// LessonsTable holds the schema information for the "lessons" table.
	LessonsTable = &schema.Table{
		Name:       "lessons",
		Columns:    LessonsColumns,
		PrimaryKey: []*schema.Column{LessonsColumns[0]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "lessons_units_unit",
				Columns:    []*schema.Column{LessonsColumns[7]},
				RefColumns: []*schema.Column{UnitsColumns[0]},
				OnDelete:   schema.NoAction,
			},
		},
	}
	// LessonAudiosColumns holds the columns for the "lesson_audios" table.
	LessonAudiosColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "audio_url", Type: field.TypeString},
		{Name: "duration", Type: field.TypeInt},
		{Name: "lesson_id", Type: field.TypeInt64},
	}
	// LessonAudiosTable holds the schema information for the "lesson_audios" table.
	LessonAudiosTable = &schema.Table{
		Name:       "lesson_audios",
		Columns:    LessonAudiosColumns,
		PrimaryKey: []*schema.Column{LessonAudiosColumns[0]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "lesson_audios_lessons_lesson",
				Columns:    []*schema.Column{LessonAudiosColumns[3]},
				RefColumns: []*schema.Column{LessonsColumns[0]},
				OnDelete:   schema.NoAction,
			},
		},
	}
	// LessonTechniquesColumns holds the columns for the "lesson_techniques" table.
	LessonTechniquesColumns = []*schema.Column{
		{Name: "order", Type: field.TypeInt64},
		{Name: "lesson_id", Type: field.TypeInt64},
		{Name: "technique_id", Type: field.TypeInt64},
	}
	// LessonTechniquesTable holds the schema information for the "lesson_techniques" table.
	LessonTechniquesTable = &schema.Table{
		Name:       "lesson_techniques",
		Columns:    LessonTechniquesColumns,
		PrimaryKey: []*schema.Column{LessonTechniquesColumns[1], LessonTechniquesColumns[2]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "lesson_techniques_lessons_lesson",
				Columns:    []*schema.Column{LessonTechniquesColumns[1]},
				RefColumns: []*schema.Column{LessonsColumns[0]},
				OnDelete:   schema.NoAction,
			},
			{
				Symbol:     "lesson_techniques_techniques_technique",
				Columns:    []*schema.Column{LessonTechniquesColumns[2]},
				RefColumns: []*schema.Column{TechniquesColumns[0]},
				OnDelete:   schema.NoAction,
			},
		},
	}
	// TechniquesColumns holds the columns for the "techniques" table.
	TechniquesColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "icon_image", Type: field.TypeString},
		{Name: "cover_image", Type: field.TypeString},
		{Name: "title", Type: field.TypeString},
		{Name: "subtitle", Type: field.TypeString},
		{Name: "description", Type: field.TypeString},
		{Name: "order", Type: field.TypeInt},
		{Name: "unit_id", Type: field.TypeInt64},
	}
	// TechniquesTable holds the schema information for the "techniques" table.
	TechniquesTable = &schema.Table{
		Name:       "techniques",
		Columns:    TechniquesColumns,
		PrimaryKey: []*schema.Column{TechniquesColumns[0]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "techniques_units_unit",
				Columns:    []*schema.Column{TechniquesColumns[7]},
				RefColumns: []*schema.Column{UnitsColumns[0]},
				OnDelete:   schema.NoAction,
			},
		},
	}
	// UnitsColumns holds the columns for the "units" table.
	UnitsColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "icon_image", Type: field.TypeString},
		{Name: "cover_image", Type: field.TypeString},
		{Name: "title", Type: field.TypeString},
		{Name: "subtitle", Type: field.TypeString},
		{Name: "description", Type: field.TypeString},
		{Name: "mastering", Type: field.TypeString},
		{Name: "days", Type: field.TypeInt},
		{Name: "color", Type: field.TypeString},
		{Name: "order", Type: field.TypeInt},
		{Name: "course_id", Type: field.TypeInt64},
	}
	// UnitsTable holds the schema information for the "units" table.
	UnitsTable = &schema.Table{
		Name:       "units",
		Columns:    UnitsColumns,
		PrimaryKey: []*schema.Column{UnitsColumns[0]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "units_courses_course",
				Columns:    []*schema.Column{UnitsColumns[10]},
				RefColumns: []*schema.Column{CoursesColumns[0]},
				OnDelete:   schema.NoAction,
			},
		},
	}
	// UnitTechniquesColumns holds the columns for the "unit_techniques" table.
	UnitTechniquesColumns = []*schema.Column{
		{Name: "position", Type: field.TypeInt64},
		{Name: "unit_id", Type: field.TypeInt64},
		{Name: "technique_id", Type: field.TypeInt64},
	}
	// UnitTechniquesTable holds the schema information for the "unit_techniques" table.
	UnitTechniquesTable = &schema.Table{
		Name:       "unit_techniques",
		Columns:    UnitTechniquesColumns,
		PrimaryKey: []*schema.Column{UnitTechniquesColumns[1], UnitTechniquesColumns[2]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "unit_techniques_units_unit",
				Columns:    []*schema.Column{UnitTechniquesColumns[1]},
				RefColumns: []*schema.Column{UnitsColumns[0]},
				OnDelete:   schema.NoAction,
			},
			{
				Symbol:     "unit_techniques_techniques_technique",
				Columns:    []*schema.Column{UnitTechniquesColumns[2]},
				RefColumns: []*schema.Column{TechniquesColumns[0]},
				OnDelete:   schema.NoAction,
			},
		},
	}
	// UsersColumns holds the columns for the "users" table.
	UsersColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "firebase_uid", Type: field.TypeString, Unique: true, Nullable: true},
		{Name: "display_name", Type: field.TypeString},
		{Name: "created_at", Type: field.TypeTime},
		{Name: "updated_at", Type: field.TypeTime},
		{Name: "auth_method", Type: field.TypeEnum, Enums: []string{"local", "firebase"}, Default: "firebase"},
		{Name: "email", Type: field.TypeString, Unique: true, Nullable: true},
		{Name: "email_verified", Type: field.TypeBool, Default: false},
		{Name: "password", Type: field.TypeString, Nullable: true},
	}
	// UsersTable holds the schema information for the "users" table.
	UsersTable = &schema.Table{
		Name:       "users",
		Columns:    UsersColumns,
		PrimaryKey: []*schema.Column{UsersColumns[0]},
	}
	// UserProgressesColumns holds the columns for the "user_progresses" table.
	UserProgressesColumns = []*schema.Column{
		{Name: "id", Type: field.TypeInt64, Increment: true},
		{Name: "lesson_type", Type: field.TypeEnum, Enums: []string{"guided", "mastery"}},
		{Name: "is_last", Type: field.TypeBool},
		{Name: "is_next", Type: field.TypeBool},
		{Name: "progress", Type: field.TypeInt64, Default: 0},
		{Name: "finished_at", Type: field.TypeTime, Nullable: true},
		{Name: "created_at", Type: field.TypeTime},
		{Name: "updated_at", Type: field.TypeTime},
		{Name: "user_id", Type: field.TypeInt64},
		{Name: "course_id", Type: field.TypeInt64},
		{Name: "unit_id", Type: field.TypeInt64},
		{Name: "lesson_id", Type: field.TypeInt64},
	}
	// UserProgressesTable holds the schema information for the "user_progresses" table.
	UserProgressesTable = &schema.Table{
		Name:       "user_progresses",
		Columns:    UserProgressesColumns,
		PrimaryKey: []*schema.Column{UserProgressesColumns[0]},
		ForeignKeys: []*schema.ForeignKey{
			{
				Symbol:     "user_progresses_users_user",
				Columns:    []*schema.Column{UserProgressesColumns[8]},
				RefColumns: []*schema.Column{UsersColumns[0]},
				OnDelete:   schema.NoAction,
			},
			{
				Symbol:     "user_progresses_courses_course",
				Columns:    []*schema.Column{UserProgressesColumns[9]},
				RefColumns: []*schema.Column{CoursesColumns[0]},
				OnDelete:   schema.NoAction,
			},
			{
				Symbol:     "user_progresses_units_unit",
				Columns:    []*schema.Column{UserProgressesColumns[10]},
				RefColumns: []*schema.Column{UnitsColumns[0]},
				OnDelete:   schema.NoAction,
			},
			{
				Symbol:     "user_progresses_lessons_lesson",
				Columns:    []*schema.Column{UserProgressesColumns[11]},
				RefColumns: []*schema.Column{LessonsColumns[0]},
				OnDelete:   schema.NoAction,
			},
		},
	}
	// Tables holds all the tables in the schema.
	Tables = []*schema.Table{
		AuthTokensTable,
		ContentsTable,
		ContentEpisodesTable,
		ContentProgressesTable,
		CoursesTable,
		JournalRecordsTable,
		LessonsTable,
		LessonAudiosTable,
		LessonTechniquesTable,
		TechniquesTable,
		UnitsTable,
		UnitTechniquesTable,
		UsersTable,
		UserProgressesTable,
	}
)

func init() {
	AuthTokensTable.ForeignKeys[0].RefTable = UsersTable
	ContentEpisodesTable.ForeignKeys[0].RefTable = ContentsTable
	ContentProgressesTable.ForeignKeys[0].RefTable = UsersTable
	ContentProgressesTable.ForeignKeys[1].RefTable = ContentsTable
	ContentProgressesTable.ForeignKeys[2].RefTable = ContentEpisodesTable
	JournalRecordsTable.ForeignKeys[0].RefTable = UsersTable
	JournalRecordsTable.ForeignKeys[1].RefTable = LessonsTable
	LessonsTable.ForeignKeys[0].RefTable = UnitsTable
	LessonAudiosTable.ForeignKeys[0].RefTable = LessonsTable
	LessonTechniquesTable.ForeignKeys[0].RefTable = LessonsTable
	LessonTechniquesTable.ForeignKeys[1].RefTable = TechniquesTable
	TechniquesTable.ForeignKeys[0].RefTable = UnitsTable
	UnitsTable.ForeignKeys[0].RefTable = CoursesTable
	UnitTechniquesTable.ForeignKeys[0].RefTable = UnitsTable
	UnitTechniquesTable.ForeignKeys[1].RefTable = TechniquesTable
	UserProgressesTable.ForeignKeys[0].RefTable = UsersTable
	UserProgressesTable.ForeignKeys[1].RefTable = CoursesTable
	UserProgressesTable.ForeignKeys[2].RefTable = UnitsTable
	UserProgressesTable.ForeignKeys[3].RefTable = LessonsTable
}
