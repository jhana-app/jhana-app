// Code generated by ent, DO NOT EDIT.

package unit

import (
	"entgo.io/ent/dialect/sql"
	"entgo.io/ent/dialect/sql/sqlgraph"
	"github.com/jhana-app/jhana-app/ent/gqlid"
	"github.com/jhana-app/jhana-app/ent/predicate"
)

// ID filters vertices based on their ID field.
func ID(id gqlid.UnitID) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldID, id))
}

// IDEQ applies the EQ predicate on the ID field.
func IDEQ(id gqlid.UnitID) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldID, id))
}

// IDNEQ applies the NEQ predicate on the ID field.
func IDNEQ(id gqlid.UnitID) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldID, id))
}

// IDIn applies the In predicate on the ID field.
func IDIn(ids ...gqlid.UnitID) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldID, ids...))
}

// IDNotIn applies the NotIn predicate on the ID field.
func IDNotIn(ids ...gqlid.UnitID) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldID, ids...))
}

// IDGT applies the GT predicate on the ID field.
func IDGT(id gqlid.UnitID) predicate.Unit {
	return predicate.Unit(sql.FieldGT(FieldID, id))
}

// IDGTE applies the GTE predicate on the ID field.
func IDGTE(id gqlid.UnitID) predicate.Unit {
	return predicate.Unit(sql.FieldGTE(FieldID, id))
}

// IDLT applies the LT predicate on the ID field.
func IDLT(id gqlid.UnitID) predicate.Unit {
	return predicate.Unit(sql.FieldLT(FieldID, id))
}

// IDLTE applies the LTE predicate on the ID field.
func IDLTE(id gqlid.UnitID) predicate.Unit {
	return predicate.Unit(sql.FieldLTE(FieldID, id))
}

// CourseID applies equality check predicate on the "course_id" field. It's identical to CourseIDEQ.
func CourseID(v gqlid.CourseID) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldCourseID, v))
}

// IconImage applies equality check predicate on the "iconImage" field. It's identical to IconImageEQ.
func IconImage(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldIconImage, v))
}

// CoverImage applies equality check predicate on the "coverImage" field. It's identical to CoverImageEQ.
func CoverImage(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldCoverImage, v))
}

// Title applies equality check predicate on the "title" field. It's identical to TitleEQ.
func Title(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldTitle, v))
}

// Subtitle applies equality check predicate on the "subtitle" field. It's identical to SubtitleEQ.
func Subtitle(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldSubtitle, v))
}

// Description applies equality check predicate on the "description" field. It's identical to DescriptionEQ.
func Description(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldDescription, v))
}

// Mastering applies equality check predicate on the "mastering" field. It's identical to MasteringEQ.
func Mastering(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldMastering, v))
}

// Days applies equality check predicate on the "days" field. It's identical to DaysEQ.
func Days(v int) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldDays, v))
}

// Color applies equality check predicate on the "color" field. It's identical to ColorEQ.
func Color(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldColor, v))
}

// Order applies equality check predicate on the "order" field. It's identical to OrderEQ.
func Order(v int) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldOrder, v))
}

// CourseIDEQ applies the EQ predicate on the "course_id" field.
func CourseIDEQ(v gqlid.CourseID) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldCourseID, v))
}

// CourseIDNEQ applies the NEQ predicate on the "course_id" field.
func CourseIDNEQ(v gqlid.CourseID) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldCourseID, v))
}

// CourseIDIn applies the In predicate on the "course_id" field.
func CourseIDIn(vs ...gqlid.CourseID) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldCourseID, vs...))
}

// CourseIDNotIn applies the NotIn predicate on the "course_id" field.
func CourseIDNotIn(vs ...gqlid.CourseID) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldCourseID, vs...))
}

// IconImageEQ applies the EQ predicate on the "iconImage" field.
func IconImageEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldIconImage, v))
}

// IconImageNEQ applies the NEQ predicate on the "iconImage" field.
func IconImageNEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldIconImage, v))
}

// IconImageIn applies the In predicate on the "iconImage" field.
func IconImageIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldIconImage, vs...))
}

// IconImageNotIn applies the NotIn predicate on the "iconImage" field.
func IconImageNotIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldIconImage, vs...))
}

// IconImageGT applies the GT predicate on the "iconImage" field.
func IconImageGT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGT(FieldIconImage, v))
}

// IconImageGTE applies the GTE predicate on the "iconImage" field.
func IconImageGTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGTE(FieldIconImage, v))
}

// IconImageLT applies the LT predicate on the "iconImage" field.
func IconImageLT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLT(FieldIconImage, v))
}

// IconImageLTE applies the LTE predicate on the "iconImage" field.
func IconImageLTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLTE(FieldIconImage, v))
}

// IconImageContains applies the Contains predicate on the "iconImage" field.
func IconImageContains(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContains(FieldIconImage, v))
}

// IconImageHasPrefix applies the HasPrefix predicate on the "iconImage" field.
func IconImageHasPrefix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasPrefix(FieldIconImage, v))
}

// IconImageHasSuffix applies the HasSuffix predicate on the "iconImage" field.
func IconImageHasSuffix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasSuffix(FieldIconImage, v))
}

// IconImageEqualFold applies the EqualFold predicate on the "iconImage" field.
func IconImageEqualFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEqualFold(FieldIconImage, v))
}

// IconImageContainsFold applies the ContainsFold predicate on the "iconImage" field.
func IconImageContainsFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContainsFold(FieldIconImage, v))
}

// CoverImageEQ applies the EQ predicate on the "coverImage" field.
func CoverImageEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldCoverImage, v))
}

// CoverImageNEQ applies the NEQ predicate on the "coverImage" field.
func CoverImageNEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldCoverImage, v))
}

// CoverImageIn applies the In predicate on the "coverImage" field.
func CoverImageIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldCoverImage, vs...))
}

// CoverImageNotIn applies the NotIn predicate on the "coverImage" field.
func CoverImageNotIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldCoverImage, vs...))
}

// CoverImageGT applies the GT predicate on the "coverImage" field.
func CoverImageGT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGT(FieldCoverImage, v))
}

// CoverImageGTE applies the GTE predicate on the "coverImage" field.
func CoverImageGTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGTE(FieldCoverImage, v))
}

// CoverImageLT applies the LT predicate on the "coverImage" field.
func CoverImageLT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLT(FieldCoverImage, v))
}

// CoverImageLTE applies the LTE predicate on the "coverImage" field.
func CoverImageLTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLTE(FieldCoverImage, v))
}

// CoverImageContains applies the Contains predicate on the "coverImage" field.
func CoverImageContains(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContains(FieldCoverImage, v))
}

// CoverImageHasPrefix applies the HasPrefix predicate on the "coverImage" field.
func CoverImageHasPrefix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasPrefix(FieldCoverImage, v))
}

// CoverImageHasSuffix applies the HasSuffix predicate on the "coverImage" field.
func CoverImageHasSuffix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasSuffix(FieldCoverImage, v))
}

// CoverImageEqualFold applies the EqualFold predicate on the "coverImage" field.
func CoverImageEqualFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEqualFold(FieldCoverImage, v))
}

// CoverImageContainsFold applies the ContainsFold predicate on the "coverImage" field.
func CoverImageContainsFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContainsFold(FieldCoverImage, v))
}

// TitleEQ applies the EQ predicate on the "title" field.
func TitleEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldTitle, v))
}

// TitleNEQ applies the NEQ predicate on the "title" field.
func TitleNEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldTitle, v))
}

// TitleIn applies the In predicate on the "title" field.
func TitleIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldTitle, vs...))
}

// TitleNotIn applies the NotIn predicate on the "title" field.
func TitleNotIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldTitle, vs...))
}

// TitleGT applies the GT predicate on the "title" field.
func TitleGT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGT(FieldTitle, v))
}

// TitleGTE applies the GTE predicate on the "title" field.
func TitleGTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGTE(FieldTitle, v))
}

// TitleLT applies the LT predicate on the "title" field.
func TitleLT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLT(FieldTitle, v))
}

// TitleLTE applies the LTE predicate on the "title" field.
func TitleLTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLTE(FieldTitle, v))
}

// TitleContains applies the Contains predicate on the "title" field.
func TitleContains(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContains(FieldTitle, v))
}

// TitleHasPrefix applies the HasPrefix predicate on the "title" field.
func TitleHasPrefix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasPrefix(FieldTitle, v))
}

// TitleHasSuffix applies the HasSuffix predicate on the "title" field.
func TitleHasSuffix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasSuffix(FieldTitle, v))
}

// TitleEqualFold applies the EqualFold predicate on the "title" field.
func TitleEqualFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEqualFold(FieldTitle, v))
}

// TitleContainsFold applies the ContainsFold predicate on the "title" field.
func TitleContainsFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContainsFold(FieldTitle, v))
}

// SubtitleEQ applies the EQ predicate on the "subtitle" field.
func SubtitleEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldSubtitle, v))
}

// SubtitleNEQ applies the NEQ predicate on the "subtitle" field.
func SubtitleNEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldSubtitle, v))
}

// SubtitleIn applies the In predicate on the "subtitle" field.
func SubtitleIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldSubtitle, vs...))
}

// SubtitleNotIn applies the NotIn predicate on the "subtitle" field.
func SubtitleNotIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldSubtitle, vs...))
}

// SubtitleGT applies the GT predicate on the "subtitle" field.
func SubtitleGT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGT(FieldSubtitle, v))
}

// SubtitleGTE applies the GTE predicate on the "subtitle" field.
func SubtitleGTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGTE(FieldSubtitle, v))
}

// SubtitleLT applies the LT predicate on the "subtitle" field.
func SubtitleLT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLT(FieldSubtitle, v))
}

// SubtitleLTE applies the LTE predicate on the "subtitle" field.
func SubtitleLTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLTE(FieldSubtitle, v))
}

// SubtitleContains applies the Contains predicate on the "subtitle" field.
func SubtitleContains(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContains(FieldSubtitle, v))
}

// SubtitleHasPrefix applies the HasPrefix predicate on the "subtitle" field.
func SubtitleHasPrefix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasPrefix(FieldSubtitle, v))
}

// SubtitleHasSuffix applies the HasSuffix predicate on the "subtitle" field.
func SubtitleHasSuffix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasSuffix(FieldSubtitle, v))
}

// SubtitleEqualFold applies the EqualFold predicate on the "subtitle" field.
func SubtitleEqualFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEqualFold(FieldSubtitle, v))
}

// SubtitleContainsFold applies the ContainsFold predicate on the "subtitle" field.
func SubtitleContainsFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContainsFold(FieldSubtitle, v))
}

// DescriptionEQ applies the EQ predicate on the "description" field.
func DescriptionEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldDescription, v))
}

// DescriptionNEQ applies the NEQ predicate on the "description" field.
func DescriptionNEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldDescription, v))
}

// DescriptionIn applies the In predicate on the "description" field.
func DescriptionIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldDescription, vs...))
}

// DescriptionNotIn applies the NotIn predicate on the "description" field.
func DescriptionNotIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldDescription, vs...))
}

// DescriptionGT applies the GT predicate on the "description" field.
func DescriptionGT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGT(FieldDescription, v))
}

// DescriptionGTE applies the GTE predicate on the "description" field.
func DescriptionGTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGTE(FieldDescription, v))
}

// DescriptionLT applies the LT predicate on the "description" field.
func DescriptionLT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLT(FieldDescription, v))
}

// DescriptionLTE applies the LTE predicate on the "description" field.
func DescriptionLTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLTE(FieldDescription, v))
}

// DescriptionContains applies the Contains predicate on the "description" field.
func DescriptionContains(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContains(FieldDescription, v))
}

// DescriptionHasPrefix applies the HasPrefix predicate on the "description" field.
func DescriptionHasPrefix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasPrefix(FieldDescription, v))
}

// DescriptionHasSuffix applies the HasSuffix predicate on the "description" field.
func DescriptionHasSuffix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasSuffix(FieldDescription, v))
}

// DescriptionEqualFold applies the EqualFold predicate on the "description" field.
func DescriptionEqualFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEqualFold(FieldDescription, v))
}

// DescriptionContainsFold applies the ContainsFold predicate on the "description" field.
func DescriptionContainsFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContainsFold(FieldDescription, v))
}

// MasteringEQ applies the EQ predicate on the "mastering" field.
func MasteringEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldMastering, v))
}

// MasteringNEQ applies the NEQ predicate on the "mastering" field.
func MasteringNEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldMastering, v))
}

// MasteringIn applies the In predicate on the "mastering" field.
func MasteringIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldMastering, vs...))
}

// MasteringNotIn applies the NotIn predicate on the "mastering" field.
func MasteringNotIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldMastering, vs...))
}

// MasteringGT applies the GT predicate on the "mastering" field.
func MasteringGT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGT(FieldMastering, v))
}

// MasteringGTE applies the GTE predicate on the "mastering" field.
func MasteringGTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGTE(FieldMastering, v))
}

// MasteringLT applies the LT predicate on the "mastering" field.
func MasteringLT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLT(FieldMastering, v))
}

// MasteringLTE applies the LTE predicate on the "mastering" field.
func MasteringLTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLTE(FieldMastering, v))
}

// MasteringContains applies the Contains predicate on the "mastering" field.
func MasteringContains(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContains(FieldMastering, v))
}

// MasteringHasPrefix applies the HasPrefix predicate on the "mastering" field.
func MasteringHasPrefix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasPrefix(FieldMastering, v))
}

// MasteringHasSuffix applies the HasSuffix predicate on the "mastering" field.
func MasteringHasSuffix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasSuffix(FieldMastering, v))
}

// MasteringEqualFold applies the EqualFold predicate on the "mastering" field.
func MasteringEqualFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEqualFold(FieldMastering, v))
}

// MasteringContainsFold applies the ContainsFold predicate on the "mastering" field.
func MasteringContainsFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContainsFold(FieldMastering, v))
}

// DaysEQ applies the EQ predicate on the "days" field.
func DaysEQ(v int) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldDays, v))
}

// DaysNEQ applies the NEQ predicate on the "days" field.
func DaysNEQ(v int) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldDays, v))
}

// DaysIn applies the In predicate on the "days" field.
func DaysIn(vs ...int) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldDays, vs...))
}

// DaysNotIn applies the NotIn predicate on the "days" field.
func DaysNotIn(vs ...int) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldDays, vs...))
}

// DaysGT applies the GT predicate on the "days" field.
func DaysGT(v int) predicate.Unit {
	return predicate.Unit(sql.FieldGT(FieldDays, v))
}

// DaysGTE applies the GTE predicate on the "days" field.
func DaysGTE(v int) predicate.Unit {
	return predicate.Unit(sql.FieldGTE(FieldDays, v))
}

// DaysLT applies the LT predicate on the "days" field.
func DaysLT(v int) predicate.Unit {
	return predicate.Unit(sql.FieldLT(FieldDays, v))
}

// DaysLTE applies the LTE predicate on the "days" field.
func DaysLTE(v int) predicate.Unit {
	return predicate.Unit(sql.FieldLTE(FieldDays, v))
}

// ColorEQ applies the EQ predicate on the "color" field.
func ColorEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldColor, v))
}

// ColorNEQ applies the NEQ predicate on the "color" field.
func ColorNEQ(v string) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldColor, v))
}

// ColorIn applies the In predicate on the "color" field.
func ColorIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldColor, vs...))
}

// ColorNotIn applies the NotIn predicate on the "color" field.
func ColorNotIn(vs ...string) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldColor, vs...))
}

// ColorGT applies the GT predicate on the "color" field.
func ColorGT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGT(FieldColor, v))
}

// ColorGTE applies the GTE predicate on the "color" field.
func ColorGTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldGTE(FieldColor, v))
}

// ColorLT applies the LT predicate on the "color" field.
func ColorLT(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLT(FieldColor, v))
}

// ColorLTE applies the LTE predicate on the "color" field.
func ColorLTE(v string) predicate.Unit {
	return predicate.Unit(sql.FieldLTE(FieldColor, v))
}

// ColorContains applies the Contains predicate on the "color" field.
func ColorContains(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContains(FieldColor, v))
}

// ColorHasPrefix applies the HasPrefix predicate on the "color" field.
func ColorHasPrefix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasPrefix(FieldColor, v))
}

// ColorHasSuffix applies the HasSuffix predicate on the "color" field.
func ColorHasSuffix(v string) predicate.Unit {
	return predicate.Unit(sql.FieldHasSuffix(FieldColor, v))
}

// ColorEqualFold applies the EqualFold predicate on the "color" field.
func ColorEqualFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldEqualFold(FieldColor, v))
}

// ColorContainsFold applies the ContainsFold predicate on the "color" field.
func ColorContainsFold(v string) predicate.Unit {
	return predicate.Unit(sql.FieldContainsFold(FieldColor, v))
}

// OrderEQ applies the EQ predicate on the "order" field.
func OrderEQ(v int) predicate.Unit {
	return predicate.Unit(sql.FieldEQ(FieldOrder, v))
}

// OrderNEQ applies the NEQ predicate on the "order" field.
func OrderNEQ(v int) predicate.Unit {
	return predicate.Unit(sql.FieldNEQ(FieldOrder, v))
}

// OrderIn applies the In predicate on the "order" field.
func OrderIn(vs ...int) predicate.Unit {
	return predicate.Unit(sql.FieldIn(FieldOrder, vs...))
}

// OrderNotIn applies the NotIn predicate on the "order" field.
func OrderNotIn(vs ...int) predicate.Unit {
	return predicate.Unit(sql.FieldNotIn(FieldOrder, vs...))
}

// OrderGT applies the GT predicate on the "order" field.
func OrderGT(v int) predicate.Unit {
	return predicate.Unit(sql.FieldGT(FieldOrder, v))
}

// OrderGTE applies the GTE predicate on the "order" field.
func OrderGTE(v int) predicate.Unit {
	return predicate.Unit(sql.FieldGTE(FieldOrder, v))
}

// OrderLT applies the LT predicate on the "order" field.
func OrderLT(v int) predicate.Unit {
	return predicate.Unit(sql.FieldLT(FieldOrder, v))
}

// OrderLTE applies the LTE predicate on the "order" field.
func OrderLTE(v int) predicate.Unit {
	return predicate.Unit(sql.FieldLTE(FieldOrder, v))
}

// HasCourse applies the HasEdge predicate on the "course" edge.
func HasCourse() predicate.Unit {
	return predicate.Unit(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, FieldID),
			sqlgraph.Edge(sqlgraph.M2O, false, CourseTable, CourseColumn),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasCourseWith applies the HasEdge predicate on the "course" edge with a given conditions (other predicates).
func HasCourseWith(preds ...predicate.Course) predicate.Unit {
	return predicate.Unit(func(s *sql.Selector) {
		step := newCourseStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// HasLessons applies the HasEdge predicate on the "lessons" edge.
func HasLessons() predicate.Unit {
	return predicate.Unit(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, FieldID),
			sqlgraph.Edge(sqlgraph.O2M, true, LessonsTable, LessonsColumn),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasLessonsWith applies the HasEdge predicate on the "lessons" edge with a given conditions (other predicates).
func HasLessonsWith(preds ...predicate.Lesson) predicate.Unit {
	return predicate.Unit(func(s *sql.Selector) {
		step := newLessonsStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// HasTechniques applies the HasEdge predicate on the "techniques" edge.
func HasTechniques() predicate.Unit {
	return predicate.Unit(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, FieldID),
			sqlgraph.Edge(sqlgraph.M2M, false, TechniquesTable, TechniquesPrimaryKey...),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasTechniquesWith applies the HasEdge predicate on the "techniques" edge with a given conditions (other predicates).
func HasTechniquesWith(preds ...predicate.Technique) predicate.Unit {
	return predicate.Unit(func(s *sql.Selector) {
		step := newTechniquesStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// HasUnitTechniques applies the HasEdge predicate on the "unitTechniques" edge.
func HasUnitTechniques() predicate.Unit {
	return predicate.Unit(func(s *sql.Selector) {
		step := sqlgraph.NewStep(
			sqlgraph.From(Table, FieldID),
			sqlgraph.Edge(sqlgraph.O2M, true, UnitTechniquesTable, UnitTechniquesColumn),
		)
		sqlgraph.HasNeighbors(s, step)
	})
}

// HasUnitTechniquesWith applies the HasEdge predicate on the "unitTechniques" edge with a given conditions (other predicates).
func HasUnitTechniquesWith(preds ...predicate.UnitTechnique) predicate.Unit {
	return predicate.Unit(func(s *sql.Selector) {
		step := newUnitTechniquesStep()
		sqlgraph.HasNeighborsWith(s, step, func(s *sql.Selector) {
			for _, p := range preds {
				p(s)
			}
		})
	})
}

// And groups predicates with the AND operator between them.
func And(predicates ...predicate.Unit) predicate.Unit {
	return predicate.Unit(sql.AndPredicates(predicates...))
}

// Or groups predicates with the OR operator between them.
func Or(predicates ...predicate.Unit) predicate.Unit {
	return predicate.Unit(sql.OrPredicates(predicates...))
}

// Not applies the not operator on the given predicate.
func Not(p predicate.Unit) predicate.Unit {
	return predicate.Unit(sql.NotPredicates(p))
}