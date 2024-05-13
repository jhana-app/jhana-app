package gqlid

type ContentProgressKey struct {
	UserID    UserID
	EpisodeID ContentEpisodeID
}

func NewContentProgressKey(userID UserID, episodeID ContentEpisodeID) ContentProgressKey {
	return ContentProgressKey{
		UserID:    userID,
		EpisodeID: episodeID,
	}
}
