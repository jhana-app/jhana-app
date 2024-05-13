package gqlid

type UserProgressKey struct {
	UserID   UserID
	LessonID LessonID
}

func NewUserProgressKey(userID UserID, lessonID LessonID) UserProgressKey {
	return UserProgressKey{
		UserID:   userID,
		LessonID: lessonID,
	}
}
