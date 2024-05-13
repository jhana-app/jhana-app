package gqlid

type LessonTechniqueKey struct {
	LessonID    LessonID
	TechniqueID TechniqueID
}

func NewLessonTechniqueKey(lessonID LessonID, techniqueID TechniqueID) LessonTechniqueKey {
	return LessonTechniqueKey{
		LessonID:    lessonID,
		TechniqueID: techniqueID,
	}
}
