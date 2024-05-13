package gqlid

type UnitProgressKey struct {
	UserID UserID
	UnitID UnitID
}

func NewUnitProgressKey(userID UserID, unitID UnitID) UnitProgressKey {
	return UnitProgressKey{
		UserID: userID,
		UnitID: unitID,
	}
}
