package gqlid

type UnitTechniqueKey struct {
	UnitID      UnitID
	TechniqueID TechniqueID
}

func NewUnitTechniqueKey(unitID UnitID, techniqueID TechniqueID) UnitTechniqueKey {
	return UnitTechniqueKey{
		UnitID:      unitID,
		TechniqueID: techniqueID,
	}
}
