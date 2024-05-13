package gqlid

type ModelType string

const (
	ContentEpisodeModel  ModelType = "content_episode"
	ContentModel         ModelType = "content"
	ContentProgressModel ModelType = "content_progress"
	CourseModel          ModelType = "course"
	JournalRecordModel   ModelType = "journal_record"
	LessonAudioModel     ModelType = "lesson_audio"
	LessonModel          ModelType = "lesson"
	LessonTechniqueModel ModelType = "lesson_technique"
	TechniqueModel       ModelType = "technique"
	UnitModel            ModelType = "unit"
	UnitTechniqueModel   ModelType = "unit_technique"
	UserModel            ModelType = "user"
	UserProgressModel    ModelType = "user_progress"
	AuthTokenModel       ModelType = "auth_token"
)
