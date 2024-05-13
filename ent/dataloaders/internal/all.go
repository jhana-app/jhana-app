package internal

//go:generate go run github.com/vektah/dataloaden ContentEpisodeLoader github.com/jhana-app/jhana-app/ent/gqlid.ContentEpisodeID "*github.com/jhana-app/jhana-app/ent.ContentEpisode"
//go:generate go run github.com/vektah/dataloaden ContentLoader github.com/jhana-app/jhana-app/ent/gqlid.ContentID "*github.com/jhana-app/jhana-app/ent.Content"
//go:generate go run github.com/vektah/dataloaden ContentProgressLoader github.com/jhana-app/jhana-app/ent/gqlid.ContentProgressKey "*github.com/jhana-app/jhana-app/ent.ContentProgress"
//go:generate go run github.com/vektah/dataloaden CourseLoader github.com/jhana-app/jhana-app/ent/gqlid.CourseID "*github.com/jhana-app/jhana-app/ent.Course"
//go:generate go run github.com/vektah/dataloaden CourseProgressExistsLoader github.com/jhana-app/jhana-app/ent/gqlid.CourseProgressKey bool
//go:generate go run github.com/vektah/dataloaden FirebaseUserLoader string "*github.com/jhana-app/jhana-app/ent.User"
//go:generate go run github.com/vektah/dataloaden LessonAudiosLoader github.com/jhana-app/jhana-app/ent/gqlid.LessonID "[]*github.com/jhana-app/jhana-app/ent.LessonAudio"
//go:generate go run github.com/vektah/dataloaden LessonLoader github.com/jhana-app/jhana-app/ent/gqlid.LessonID "*github.com/jhana-app/jhana-app/ent.Lesson"
//go:generate go run github.com/vektah/dataloaden LessonTechniquesLoader github.com/jhana-app/jhana-app/ent/gqlid.LessonID "[]*github.com/jhana-app/jhana-app/ent.LessonTechnique"
//go:generate go run github.com/vektah/dataloaden LessonsFinishedLoader github.com/jhana-app/jhana-app/ent/gqlid.UnitProgressKey int
//go:generate go run github.com/vektah/dataloaden TechniqueLoader github.com/jhana-app/jhana-app/ent/gqlid.TechniqueID "*github.com/jhana-app/jhana-app/ent.Technique"
//go:generate go run github.com/vektah/dataloaden UnitIsActiveLoader github.com/jhana-app/jhana-app/ent/gqlid.UnitProgressKey bool
//go:generate go run github.com/vektah/dataloaden UnitLoader github.com/jhana-app/jhana-app/ent/gqlid.UnitID "*github.com/jhana-app/jhana-app/ent.Unit"
//go:generate go run github.com/vektah/dataloaden UnitTechniquesLoader github.com/jhana-app/jhana-app/ent/gqlid.UnitID "[]*github.com/jhana-app/jhana-app/ent.UnitTechnique"
//go:generate go run github.com/vektah/dataloaden UserProgressLoader github.com/jhana-app/jhana-app/ent/gqlid.UserProgressKey "*github.com/jhana-app/jhana-app/ent.UserProgress"
