package gqlid

type CourseProgressKey struct {
	UserID   UserID
	CourseID CourseID
}

func NewCourseProgressKey(userID UserID, courseID CourseID) CourseProgressKey {
	return CourseProgressKey{
		UserID:   userID,
		CourseID: courseID,
	}
}
