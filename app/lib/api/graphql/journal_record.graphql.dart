// GENERATED FILE, DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment$JournalRecord {
  Fragment$JournalRecord({
    required this.id,
    this.lessonID,
    required this.datetime,
    required this.duration,
    required this.note,
    this.unitColor,
    required this.createdat,
    this.$__typename = 'JournalRecord',
  });

  factory Fragment$JournalRecord.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$lessonID = json['lessonID'];
    final l$datetime = json['datetime'];
    final l$duration = json['duration'];
    final l$note = json['note'];
    final l$unitColor = json['unitColor'];
    final l$createdat = json['createdat'];
    final l$$__typename = json['__typename'];
    return Fragment$JournalRecord(
      id: (l$id as String),
      lessonID: (l$lessonID as String?),
      datetime: (l$datetime as String),
      duration: (l$duration as int),
      note: (l$note as String),
      unitColor: (l$unitColor as String?),
      createdat: (l$createdat as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? lessonID;

  final String datetime;

  final int duration;

  final String note;

  final String? unitColor;

  final String createdat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$lessonID = lessonID;
    _resultData['lessonID'] = l$lessonID;
    final l$datetime = datetime;
    _resultData['datetime'] = l$datetime;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$note = note;
    _resultData['note'] = l$note;
    final l$unitColor = unitColor;
    _resultData['unitColor'] = l$unitColor;
    final l$createdat = createdat;
    _resultData['createdat'] = l$createdat;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$lessonID = lessonID;
    final l$datetime = datetime;
    final l$duration = duration;
    final l$note = note;
    final l$unitColor = unitColor;
    final l$createdat = createdat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$lessonID,
      l$datetime,
      l$duration,
      l$note,
      l$unitColor,
      l$createdat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$JournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$lessonID = lessonID;
    final lOther$lessonID = other.lessonID;
    if (l$lessonID != lOther$lessonID) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (l$note != lOther$note) {
      return false;
    }
    final l$unitColor = unitColor;
    final lOther$unitColor = other.unitColor;
    if (l$unitColor != lOther$unitColor) {
      return false;
    }
    final l$createdat = createdat;
    final lOther$createdat = other.createdat;
    if (l$createdat != lOther$createdat) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$JournalRecord on Fragment$JournalRecord {
  CopyWith$Fragment$JournalRecord<Fragment$JournalRecord> get copyWith =>
      CopyWith$Fragment$JournalRecord(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$JournalRecord<TRes> {
  factory CopyWith$Fragment$JournalRecord(
    Fragment$JournalRecord instance,
    TRes Function(Fragment$JournalRecord) then,
  ) = _CopyWithImpl$Fragment$JournalRecord;

  factory CopyWith$Fragment$JournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Fragment$JournalRecord;

  TRes call({
    String? id,
    String? lessonID,
    String? datetime,
    int? duration,
    String? note,
    String? unitColor,
    String? createdat,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$JournalRecord<TRes>
    implements CopyWith$Fragment$JournalRecord<TRes> {
  _CopyWithImpl$Fragment$JournalRecord(
    this._instance,
    this._then,
  );

  final Fragment$JournalRecord _instance;

  final TRes Function(Fragment$JournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? lessonID = _undefined,
    Object? datetime = _undefined,
    Object? duration = _undefined,
    Object? note = _undefined,
    Object? unitColor = _undefined,
    Object? createdat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$JournalRecord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        lessonID:
            lessonID == _undefined ? _instance.lessonID : (lessonID as String?),
        datetime: datetime == _undefined || datetime == null
            ? _instance.datetime
            : (datetime as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        note: note == _undefined || note == null
            ? _instance.note
            : (note as String),
        unitColor: unitColor == _undefined
            ? _instance.unitColor
            : (unitColor as String?),
        createdat: createdat == _undefined || createdat == null
            ? _instance.createdat
            : (createdat as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$JournalRecord<TRes>
    implements CopyWith$Fragment$JournalRecord<TRes> {
  _CopyWithStubImpl$Fragment$JournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? lessonID,
    String? datetime,
    int? duration,
    String? note,
    String? unitColor,
    String? createdat,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionJournalRecord = FragmentDefinitionNode(
  name: NameNode(value: 'JournalRecord'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'JournalRecord'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lessonID'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'datetime'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'duration'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'note'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'unitColor'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdat'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentJournalRecord = DocumentNode(definitions: [
  fragmentDefinitionJournalRecord,
]);

extension ClientExtension$Fragment$JournalRecord on graphql.GraphQLClient {
  void writeFragment$JournalRecord({
    required Fragment$JournalRecord data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'JournalRecord',
            document: documentNodeFragmentJournalRecord,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$JournalRecord? readFragment$JournalRecord({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'JournalRecord',
          document: documentNodeFragmentJournalRecord,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$JournalRecord.fromJson(result);
  }
}

class Variables$Query$FetchJournalRecords {
  factory Variables$Query$FetchJournalRecords({
    Input$JournalRecordWhereInput? where,
    Input$JournalRecordOrder? orderBy,
    int? first,
    String? after,
    int? last,
    String? before,
  }) =>
      Variables$Query$FetchJournalRecords._({
        if (where != null) r'where': where,
        if (orderBy != null) r'orderBy': orderBy,
        if (first != null) r'first': first,
        if (after != null) r'after': after,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
      });

  Variables$Query$FetchJournalRecords._(this._$data);

  factory Variables$Query$FetchJournalRecords.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$JournalRecordWhereInput.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = l$orderBy == null
          ? null
          : Input$JournalRecordOrder.fromJson(
              (l$orderBy as Map<String, dynamic>));
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    return Variables$Query$FetchJournalRecords._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$JournalRecordWhereInput? get where =>
      (_$data['where'] as Input$JournalRecordWhereInput?);

  Input$JournalRecordOrder? get orderBy =>
      (_$data['orderBy'] as Input$JournalRecordOrder?);

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.toJson();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    return result$data;
  }

  CopyWith$Variables$Query$FetchJournalRecords<
          Variables$Query$FetchJournalRecords>
      get copyWith => CopyWith$Variables$Query$FetchJournalRecords(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchJournalRecords) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != lOther$orderBy) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$orderBy = orderBy;
    final l$first = first;
    final l$after = after;
    final l$last = last;
    final l$before = before;
    return Object.hashAll([
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('orderBy') ? l$orderBy : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FetchJournalRecords<TRes> {
  factory CopyWith$Variables$Query$FetchJournalRecords(
    Variables$Query$FetchJournalRecords instance,
    TRes Function(Variables$Query$FetchJournalRecords) then,
  ) = _CopyWithImpl$Variables$Query$FetchJournalRecords;

  factory CopyWith$Variables$Query$FetchJournalRecords.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchJournalRecords;

  TRes call({
    Input$JournalRecordWhereInput? where,
    Input$JournalRecordOrder? orderBy,
    int? first,
    String? after,
    int? last,
    String? before,
  });
}

class _CopyWithImpl$Variables$Query$FetchJournalRecords<TRes>
    implements CopyWith$Variables$Query$FetchJournalRecords<TRes> {
  _CopyWithImpl$Variables$Query$FetchJournalRecords(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchJournalRecords _instance;

  final TRes Function(Variables$Query$FetchJournalRecords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? orderBy = _undefined,
    Object? first = _undefined,
    Object? after = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
  }) =>
      _then(Variables$Query$FetchJournalRecords._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$JournalRecordWhereInput?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as Input$JournalRecordOrder?),
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchJournalRecords<TRes>
    implements CopyWith$Variables$Query$FetchJournalRecords<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchJournalRecords(this._res);

  TRes _res;

  call({
    Input$JournalRecordWhereInput? where,
    Input$JournalRecordOrder? orderBy,
    int? first,
    String? after,
    int? last,
    String? before,
  }) =>
      _res;
}

class Query$FetchJournalRecords {
  Query$FetchJournalRecords({
    required this.journalRecords,
    this.$__typename = 'Query',
  });

  factory Query$FetchJournalRecords.fromJson(Map<String, dynamic> json) {
    final l$journalRecords = json['journalRecords'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecords(
      journalRecords: Query$FetchJournalRecords$journalRecords.fromJson(
          (l$journalRecords as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchJournalRecords$journalRecords journalRecords;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$journalRecords = journalRecords;
    _resultData['journalRecords'] = l$journalRecords.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$journalRecords = journalRecords;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$journalRecords,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecords) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$journalRecords = journalRecords;
    final lOther$journalRecords = other.journalRecords;
    if (l$journalRecords != lOther$journalRecords) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecords
    on Query$FetchJournalRecords {
  CopyWith$Query$FetchJournalRecords<Query$FetchJournalRecords> get copyWith =>
      CopyWith$Query$FetchJournalRecords(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchJournalRecords<TRes> {
  factory CopyWith$Query$FetchJournalRecords(
    Query$FetchJournalRecords instance,
    TRes Function(Query$FetchJournalRecords) then,
  ) = _CopyWithImpl$Query$FetchJournalRecords;

  factory CopyWith$Query$FetchJournalRecords.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecords;

  TRes call({
    Query$FetchJournalRecords$journalRecords? journalRecords,
    String? $__typename,
  });
  CopyWith$Query$FetchJournalRecords$journalRecords<TRes> get journalRecords;
}

class _CopyWithImpl$Query$FetchJournalRecords<TRes>
    implements CopyWith$Query$FetchJournalRecords<TRes> {
  _CopyWithImpl$Query$FetchJournalRecords(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecords _instance;

  final TRes Function(Query$FetchJournalRecords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? journalRecords = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecords(
        journalRecords: journalRecords == _undefined || journalRecords == null
            ? _instance.journalRecords
            : (journalRecords as Query$FetchJournalRecords$journalRecords),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchJournalRecords$journalRecords<TRes> get journalRecords {
    final local$journalRecords = _instance.journalRecords;
    return CopyWith$Query$FetchJournalRecords$journalRecords(
        local$journalRecords, (e) => call(journalRecords: e));
  }
}

class _CopyWithStubImpl$Query$FetchJournalRecords<TRes>
    implements CopyWith$Query$FetchJournalRecords<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecords(this._res);

  TRes _res;

  call({
    Query$FetchJournalRecords$journalRecords? journalRecords,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchJournalRecords$journalRecords<TRes> get journalRecords =>
      CopyWith$Query$FetchJournalRecords$journalRecords.stub(_res);
}

const documentNodeQueryFetchJournalRecords = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchJournalRecords'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'JournalRecordWhereInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: NamedTypeNode(
          name: NameNode(value: 'JournalRecordOrder'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'Cursor'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'before')),
        type: NamedTypeNode(
          name: NameNode(value: 'Cursor'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'journalRecords'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last'),
            value: VariableNode(name: NameNode(value: 'last')),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'JournalRecord'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionJournalRecord,
]);
Query$FetchJournalRecords _parserFn$Query$FetchJournalRecords(
        Map<String, dynamic> data) =>
    Query$FetchJournalRecords.fromJson(data);
typedef OnQueryComplete$Query$FetchJournalRecords = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchJournalRecords?,
);

class Options$Query$FetchJournalRecords
    extends graphql.QueryOptions<Query$FetchJournalRecords> {
  Options$Query$FetchJournalRecords({
    String? operationName,
    Variables$Query$FetchJournalRecords? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchJournalRecords? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchJournalRecords? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$FetchJournalRecords(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchJournalRecords,
          parserFn: _parserFn$Query$FetchJournalRecords,
        );

  final OnQueryComplete$Query$FetchJournalRecords? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchJournalRecords
    extends graphql.WatchQueryOptions<Query$FetchJournalRecords> {
  WatchOptions$Query$FetchJournalRecords({
    String? operationName,
    Variables$Query$FetchJournalRecords? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchJournalRecords? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchJournalRecords,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchJournalRecords,
        );
}

class FetchMoreOptions$Query$FetchJournalRecords
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchJournalRecords({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FetchJournalRecords? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFetchJournalRecords,
        );
}

extension ClientExtension$Query$FetchJournalRecords on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchJournalRecords>>
      query$FetchJournalRecords(
              [Options$Query$FetchJournalRecords? options]) async =>
          await this.query(options ?? Options$Query$FetchJournalRecords());
  graphql.ObservableQuery<Query$FetchJournalRecords>
      watchQuery$FetchJournalRecords(
              [WatchOptions$Query$FetchJournalRecords? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$FetchJournalRecords());
  void writeQuery$FetchJournalRecords({
    required Query$FetchJournalRecords data,
    Variables$Query$FetchJournalRecords? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchJournalRecords),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchJournalRecords? readQuery$FetchJournalRecords({
    Variables$Query$FetchJournalRecords? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFetchJournalRecords),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchJournalRecords.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchJournalRecords>
    useQuery$FetchJournalRecords(
            [Options$Query$FetchJournalRecords? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$FetchJournalRecords());
graphql.ObservableQuery<Query$FetchJournalRecords>
    useWatchQuery$FetchJournalRecords(
            [WatchOptions$Query$FetchJournalRecords? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$FetchJournalRecords());

class Query$FetchJournalRecords$Widget
    extends graphql_flutter.Query<Query$FetchJournalRecords> {
  Query$FetchJournalRecords$Widget({
    widgets.Key? key,
    Options$Query$FetchJournalRecords? options,
    required graphql_flutter.QueryBuilder<Query$FetchJournalRecords> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchJournalRecords(),
          builder: builder,
        );
}

class Query$FetchJournalRecords$journalRecords {
  Query$FetchJournalRecords$journalRecords({
    this.edges,
    required this.totalCount,
    this.$__typename = 'JournalRecordConnection',
  });

  factory Query$FetchJournalRecords$journalRecords.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecords$journalRecords(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchJournalRecords$journalRecords$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchJournalRecords$journalRecords$edges?>? edges;

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecords$journalRecords) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecords$journalRecords
    on Query$FetchJournalRecords$journalRecords {
  CopyWith$Query$FetchJournalRecords$journalRecords<
          Query$FetchJournalRecords$journalRecords>
      get copyWith => CopyWith$Query$FetchJournalRecords$journalRecords(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecords$journalRecords<TRes> {
  factory CopyWith$Query$FetchJournalRecords$journalRecords(
    Query$FetchJournalRecords$journalRecords instance,
    TRes Function(Query$FetchJournalRecords$journalRecords) then,
  ) = _CopyWithImpl$Query$FetchJournalRecords$journalRecords;

  factory CopyWith$Query$FetchJournalRecords$journalRecords.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecords$journalRecords;

  TRes call({
    List<Query$FetchJournalRecords$journalRecords$edges?>? edges,
    int? totalCount,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchJournalRecords$journalRecords$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchJournalRecords$journalRecords$edges<
                      Query$FetchJournalRecords$journalRecords$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchJournalRecords$journalRecords<TRes>
    implements CopyWith$Query$FetchJournalRecords$journalRecords<TRes> {
  _CopyWithImpl$Query$FetchJournalRecords$journalRecords(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecords$journalRecords _instance;

  final TRes Function(Query$FetchJournalRecords$journalRecords) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecords$journalRecords(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$FetchJournalRecords$journalRecords$edges?>?),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$FetchJournalRecords$journalRecords$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchJournalRecords$journalRecords$edges<
                          Query$FetchJournalRecords$journalRecords$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchJournalRecords$journalRecords$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchJournalRecords$journalRecords<TRes>
    implements CopyWith$Query$FetchJournalRecords$journalRecords<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecords$journalRecords(this._res);

  TRes _res;

  call({
    List<Query$FetchJournalRecords$journalRecords$edges?>? edges,
    int? totalCount,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$FetchJournalRecords$journalRecords$edges {
  Query$FetchJournalRecords$journalRecords$edges({
    this.node,
    this.$__typename = 'JournalRecordEdge',
  });

  factory Query$FetchJournalRecords$journalRecords$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecords$journalRecords$edges(
      node: l$node == null
          ? null
          : Fragment$JournalRecord.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$JournalRecord? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecords$journalRecords$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecords$journalRecords$edges
    on Query$FetchJournalRecords$journalRecords$edges {
  CopyWith$Query$FetchJournalRecords$journalRecords$edges<
          Query$FetchJournalRecords$journalRecords$edges>
      get copyWith => CopyWith$Query$FetchJournalRecords$journalRecords$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecords$journalRecords$edges<TRes> {
  factory CopyWith$Query$FetchJournalRecords$journalRecords$edges(
    Query$FetchJournalRecords$journalRecords$edges instance,
    TRes Function(Query$FetchJournalRecords$journalRecords$edges) then,
  ) = _CopyWithImpl$Query$FetchJournalRecords$journalRecords$edges;

  factory CopyWith$Query$FetchJournalRecords$journalRecords$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecords$journalRecords$edges;

  TRes call({
    Fragment$JournalRecord? node,
    String? $__typename,
  });
  CopyWith$Fragment$JournalRecord<TRes> get node;
}

class _CopyWithImpl$Query$FetchJournalRecords$journalRecords$edges<TRes>
    implements CopyWith$Query$FetchJournalRecords$journalRecords$edges<TRes> {
  _CopyWithImpl$Query$FetchJournalRecords$journalRecords$edges(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecords$journalRecords$edges _instance;

  final TRes Function(Query$FetchJournalRecords$journalRecords$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecords$journalRecords$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$JournalRecord?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$JournalRecord<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$JournalRecord.stub(_then(_instance))
        : CopyWith$Fragment$JournalRecord(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchJournalRecords$journalRecords$edges<TRes>
    implements CopyWith$Query$FetchJournalRecords$journalRecords$edges<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecords$journalRecords$edges(this._res);

  TRes _res;

  call({
    Fragment$JournalRecord? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$JournalRecord<TRes> get node =>
      CopyWith$Fragment$JournalRecord.stub(_res);
}

class Variables$Query$FetchJournalRecord {
  factory Variables$Query$FetchJournalRecord(
          {required String journalRecordId}) =>
      Variables$Query$FetchJournalRecord._({
        r'journalRecordId': journalRecordId,
      });

  Variables$Query$FetchJournalRecord._(this._$data);

  factory Variables$Query$FetchJournalRecord.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$journalRecordId = data['journalRecordId'];
    result$data['journalRecordId'] = (l$journalRecordId as String);
    return Variables$Query$FetchJournalRecord._(result$data);
  }

  Map<String, dynamic> _$data;

  String get journalRecordId => (_$data['journalRecordId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$journalRecordId = journalRecordId;
    result$data['journalRecordId'] = l$journalRecordId;
    return result$data;
  }

  CopyWith$Variables$Query$FetchJournalRecord<
          Variables$Query$FetchJournalRecord>
      get copyWith => CopyWith$Variables$Query$FetchJournalRecord(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchJournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$journalRecordId = journalRecordId;
    final lOther$journalRecordId = other.journalRecordId;
    if (l$journalRecordId != lOther$journalRecordId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$journalRecordId = journalRecordId;
    return Object.hashAll([l$journalRecordId]);
  }
}

abstract class CopyWith$Variables$Query$FetchJournalRecord<TRes> {
  factory CopyWith$Variables$Query$FetchJournalRecord(
    Variables$Query$FetchJournalRecord instance,
    TRes Function(Variables$Query$FetchJournalRecord) then,
  ) = _CopyWithImpl$Variables$Query$FetchJournalRecord;

  factory CopyWith$Variables$Query$FetchJournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchJournalRecord;

  TRes call({String? journalRecordId});
}

class _CopyWithImpl$Variables$Query$FetchJournalRecord<TRes>
    implements CopyWith$Variables$Query$FetchJournalRecord<TRes> {
  _CopyWithImpl$Variables$Query$FetchJournalRecord(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchJournalRecord _instance;

  final TRes Function(Variables$Query$FetchJournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? journalRecordId = _undefined}) =>
      _then(Variables$Query$FetchJournalRecord._({
        ..._instance._$data,
        if (journalRecordId != _undefined && journalRecordId != null)
          'journalRecordId': (journalRecordId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchJournalRecord<TRes>
    implements CopyWith$Variables$Query$FetchJournalRecord<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchJournalRecord(this._res);

  TRes _res;

  call({String? journalRecordId}) => _res;
}

class Query$FetchJournalRecord {
  Query$FetchJournalRecord({
    this.node,
    this.$__typename = 'Query',
  });

  factory Query$FetchJournalRecord.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord(
      node: l$node == null
          ? null
          : Query$FetchJournalRecord$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchJournalRecord$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord
    on Query$FetchJournalRecord {
  CopyWith$Query$FetchJournalRecord<Query$FetchJournalRecord> get copyWith =>
      CopyWith$Query$FetchJournalRecord(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchJournalRecord<TRes> {
  factory CopyWith$Query$FetchJournalRecord(
    Query$FetchJournalRecord instance,
    TRes Function(Query$FetchJournalRecord) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord;

  factory CopyWith$Query$FetchJournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord;

  TRes call({
    Query$FetchJournalRecord$node? node,
    String? $__typename,
  });
  CopyWith$Query$FetchJournalRecord$node<TRes> get node;
}

class _CopyWithImpl$Query$FetchJournalRecord<TRes>
    implements CopyWith$Query$FetchJournalRecord<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord _instance;

  final TRes Function(Query$FetchJournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord(
        node: node == _undefined
            ? _instance.node
            : (node as Query$FetchJournalRecord$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchJournalRecord$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$FetchJournalRecord$node.stub(_then(_instance))
        : CopyWith$Query$FetchJournalRecord$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchJournalRecord<TRes>
    implements CopyWith$Query$FetchJournalRecord<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord(this._res);

  TRes _res;

  call({
    Query$FetchJournalRecord$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchJournalRecord$node<TRes> get node =>
      CopyWith$Query$FetchJournalRecord$node.stub(_res);
}

const documentNodeQueryFetchJournalRecord = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchJournalRecord'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'journalRecordId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'node'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'journalRecordId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'JournalRecord'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'JournalRecord'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionJournalRecord,
]);
Query$FetchJournalRecord _parserFn$Query$FetchJournalRecord(
        Map<String, dynamic> data) =>
    Query$FetchJournalRecord.fromJson(data);
typedef OnQueryComplete$Query$FetchJournalRecord = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchJournalRecord?,
);

class Options$Query$FetchJournalRecord
    extends graphql.QueryOptions<Query$FetchJournalRecord> {
  Options$Query$FetchJournalRecord({
    String? operationName,
    required Variables$Query$FetchJournalRecord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchJournalRecord? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchJournalRecord? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$FetchJournalRecord(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchJournalRecord,
          parserFn: _parserFn$Query$FetchJournalRecord,
        );

  final OnQueryComplete$Query$FetchJournalRecord? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchJournalRecord
    extends graphql.WatchQueryOptions<Query$FetchJournalRecord> {
  WatchOptions$Query$FetchJournalRecord({
    String? operationName,
    required Variables$Query$FetchJournalRecord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchJournalRecord? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchJournalRecord,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchJournalRecord,
        );
}

class FetchMoreOptions$Query$FetchJournalRecord
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchJournalRecord({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FetchJournalRecord variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchJournalRecord,
        );
}

extension ClientExtension$Query$FetchJournalRecord on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchJournalRecord>>
      query$FetchJournalRecord(
              Options$Query$FetchJournalRecord options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$FetchJournalRecord>
      watchQuery$FetchJournalRecord(
              WatchOptions$Query$FetchJournalRecord options) =>
          this.watchQuery(options);
  void writeQuery$FetchJournalRecord({
    required Query$FetchJournalRecord data,
    required Variables$Query$FetchJournalRecord variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchJournalRecord),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchJournalRecord? readQuery$FetchJournalRecord({
    required Variables$Query$FetchJournalRecord variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFetchJournalRecord),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchJournalRecord.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchJournalRecord>
    useQuery$FetchJournalRecord(Options$Query$FetchJournalRecord options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FetchJournalRecord>
    useWatchQuery$FetchJournalRecord(
            WatchOptions$Query$FetchJournalRecord options) =>
        graphql_flutter.useWatchQuery(options);

class Query$FetchJournalRecord$Widget
    extends graphql_flutter.Query<Query$FetchJournalRecord> {
  Query$FetchJournalRecord$Widget({
    widgets.Key? key,
    required Options$Query$FetchJournalRecord options,
    required graphql_flutter.QueryBuilder<Query$FetchJournalRecord> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node({
    required this.id,
    required this.$__typename,
  });

  factory Query$FetchJournalRecord$node.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "JournalRecord":
        return Query$FetchJournalRecord$node$$JournalRecord.fromJson(json);

      case "Content":
        return Query$FetchJournalRecord$node$$Content.fromJson(json);

      case "ContentEpisode":
        return Query$FetchJournalRecord$node$$ContentEpisode.fromJson(json);

      case "ContentProgress":
        return Query$FetchJournalRecord$node$$ContentProgress.fromJson(json);

      case "Course":
        return Query$FetchJournalRecord$node$$Course.fromJson(json);

      case "Lesson":
        return Query$FetchJournalRecord$node$$Lesson.fromJson(json);

      case "LessonAudio":
        return Query$FetchJournalRecord$node$$LessonAudio.fromJson(json);

      case "Technique":
        return Query$FetchJournalRecord$node$$Technique.fromJson(json);

      case "Unit":
        return Query$FetchJournalRecord$node$$Unit.fromJson(json);

      case "User":
        return Query$FetchJournalRecord$node$$User.fromJson(json);

      case "UserProgress":
        return Query$FetchJournalRecord$node$$UserProgress.fromJson(json);

      default:
        final l$id = json['id'];
        final l$$__typename = json['__typename'];
        return Query$FetchJournalRecord$node(
          id: (l$id as String),
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node
    on Query$FetchJournalRecord$node {
  CopyWith$Query$FetchJournalRecord$node<Query$FetchJournalRecord$node>
      get copyWith => CopyWith$Query$FetchJournalRecord$node(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$FetchJournalRecord$node$$JournalRecord)
        journalRecord,
    required _T Function(Query$FetchJournalRecord$node$$Content) content,
    required _T Function(Query$FetchJournalRecord$node$$ContentEpisode)
        contentEpisode,
    required _T Function(Query$FetchJournalRecord$node$$ContentProgress)
        contentProgress,
    required _T Function(Query$FetchJournalRecord$node$$Course) course,
    required _T Function(Query$FetchJournalRecord$node$$Lesson) lesson,
    required _T Function(Query$FetchJournalRecord$node$$LessonAudio)
        lessonAudio,
    required _T Function(Query$FetchJournalRecord$node$$Technique) technique,
    required _T Function(Query$FetchJournalRecord$node$$Unit) unit,
    required _T Function(Query$FetchJournalRecord$node$$User) user,
    required _T Function(Query$FetchJournalRecord$node$$UserProgress)
        userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "JournalRecord":
        return journalRecord(
            this as Query$FetchJournalRecord$node$$JournalRecord);

      case "Content":
        return content(this as Query$FetchJournalRecord$node$$Content);

      case "ContentEpisode":
        return contentEpisode(
            this as Query$FetchJournalRecord$node$$ContentEpisode);

      case "ContentProgress":
        return contentProgress(
            this as Query$FetchJournalRecord$node$$ContentProgress);

      case "Course":
        return course(this as Query$FetchJournalRecord$node$$Course);

      case "Lesson":
        return lesson(this as Query$FetchJournalRecord$node$$Lesson);

      case "LessonAudio":
        return lessonAudio(this as Query$FetchJournalRecord$node$$LessonAudio);

      case "Technique":
        return technique(this as Query$FetchJournalRecord$node$$Technique);

      case "Unit":
        return unit(this as Query$FetchJournalRecord$node$$Unit);

      case "User":
        return user(this as Query$FetchJournalRecord$node$$User);

      case "UserProgress":
        return userProgress(
            this as Query$FetchJournalRecord$node$$UserProgress);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$FetchJournalRecord$node$$JournalRecord)? journalRecord,
    _T Function(Query$FetchJournalRecord$node$$Content)? content,
    _T Function(Query$FetchJournalRecord$node$$ContentEpisode)? contentEpisode,
    _T Function(Query$FetchJournalRecord$node$$ContentProgress)?
        contentProgress,
    _T Function(Query$FetchJournalRecord$node$$Course)? course,
    _T Function(Query$FetchJournalRecord$node$$Lesson)? lesson,
    _T Function(Query$FetchJournalRecord$node$$LessonAudio)? lessonAudio,
    _T Function(Query$FetchJournalRecord$node$$Technique)? technique,
    _T Function(Query$FetchJournalRecord$node$$Unit)? unit,
    _T Function(Query$FetchJournalRecord$node$$User)? user,
    _T Function(Query$FetchJournalRecord$node$$UserProgress)? userProgress,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "JournalRecord":
        if (journalRecord != null) {
          return journalRecord(
              this as Query$FetchJournalRecord$node$$JournalRecord);
        } else {
          return orElse();
        }

      case "Content":
        if (content != null) {
          return content(this as Query$FetchJournalRecord$node$$Content);
        } else {
          return orElse();
        }

      case "ContentEpisode":
        if (contentEpisode != null) {
          return contentEpisode(
              this as Query$FetchJournalRecord$node$$ContentEpisode);
        } else {
          return orElse();
        }

      case "ContentProgress":
        if (contentProgress != null) {
          return contentProgress(
              this as Query$FetchJournalRecord$node$$ContentProgress);
        } else {
          return orElse();
        }

      case "Course":
        if (course != null) {
          return course(this as Query$FetchJournalRecord$node$$Course);
        } else {
          return orElse();
        }

      case "Lesson":
        if (lesson != null) {
          return lesson(this as Query$FetchJournalRecord$node$$Lesson);
        } else {
          return orElse();
        }

      case "LessonAudio":
        if (lessonAudio != null) {
          return lessonAudio(
              this as Query$FetchJournalRecord$node$$LessonAudio);
        } else {
          return orElse();
        }

      case "Technique":
        if (technique != null) {
          return technique(this as Query$FetchJournalRecord$node$$Technique);
        } else {
          return orElse();
        }

      case "Unit":
        if (unit != null) {
          return unit(this as Query$FetchJournalRecord$node$$Unit);
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Query$FetchJournalRecord$node$$User);
        } else {
          return orElse();
        }

      case "UserProgress":
        if (userProgress != null) {
          return userProgress(
              this as Query$FetchJournalRecord$node$$UserProgress);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$FetchJournalRecord$node<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node(
    Query$FetchJournalRecord$node instance,
    TRes Function(Query$FetchJournalRecord$node) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node;

  factory CopyWith$Query$FetchJournalRecord$node.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node<TRes>
    implements CopyWith$Query$FetchJournalRecord$node<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node _instance;

  final TRes Function(Query$FetchJournalRecord$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node<TRes>
    implements CopyWith$Query$FetchJournalRecord$node<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$JournalRecord
    implements Fragment$JournalRecord, Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$JournalRecord({
    required this.id,
    this.lessonID,
    required this.datetime,
    required this.duration,
    required this.note,
    this.unitColor,
    required this.createdat,
    this.$__typename = 'JournalRecord',
  });

  factory Query$FetchJournalRecord$node$$JournalRecord.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$lessonID = json['lessonID'];
    final l$datetime = json['datetime'];
    final l$duration = json['duration'];
    final l$note = json['note'];
    final l$unitColor = json['unitColor'];
    final l$createdat = json['createdat'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$JournalRecord(
      id: (l$id as String),
      lessonID: (l$lessonID as String?),
      datetime: (l$datetime as String),
      duration: (l$duration as int),
      note: (l$note as String),
      unitColor: (l$unitColor as String?),
      createdat: (l$createdat as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? lessonID;

  final String datetime;

  final int duration;

  final String note;

  final String? unitColor;

  final String createdat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$lessonID = lessonID;
    _resultData['lessonID'] = l$lessonID;
    final l$datetime = datetime;
    _resultData['datetime'] = l$datetime;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$note = note;
    _resultData['note'] = l$note;
    final l$unitColor = unitColor;
    _resultData['unitColor'] = l$unitColor;
    final l$createdat = createdat;
    _resultData['createdat'] = l$createdat;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$lessonID = lessonID;
    final l$datetime = datetime;
    final l$duration = duration;
    final l$note = note;
    final l$unitColor = unitColor;
    final l$createdat = createdat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$lessonID,
      l$datetime,
      l$duration,
      l$note,
      l$unitColor,
      l$createdat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$JournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$lessonID = lessonID;
    final lOther$lessonID = other.lessonID;
    if (l$lessonID != lOther$lessonID) {
      return false;
    }
    final l$datetime = datetime;
    final lOther$datetime = other.datetime;
    if (l$datetime != lOther$datetime) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (l$note != lOther$note) {
      return false;
    }
    final l$unitColor = unitColor;
    final lOther$unitColor = other.unitColor;
    if (l$unitColor != lOther$unitColor) {
      return false;
    }
    final l$createdat = createdat;
    final lOther$createdat = other.createdat;
    if (l$createdat != lOther$createdat) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$JournalRecord
    on Query$FetchJournalRecord$node$$JournalRecord {
  CopyWith$Query$FetchJournalRecord$node$$JournalRecord<
          Query$FetchJournalRecord$node$$JournalRecord>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$JournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$JournalRecord<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$JournalRecord(
    Query$FetchJournalRecord$node$$JournalRecord instance,
    TRes Function(Query$FetchJournalRecord$node$$JournalRecord) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$JournalRecord;

  factory CopyWith$Query$FetchJournalRecord$node$$JournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$JournalRecord;

  TRes call({
    String? id,
    String? lessonID,
    String? datetime,
    int? duration,
    String? note,
    String? unitColor,
    String? createdat,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$JournalRecord<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$JournalRecord(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$JournalRecord _instance;

  final TRes Function(Query$FetchJournalRecord$node$$JournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? lessonID = _undefined,
    Object? datetime = _undefined,
    Object? duration = _undefined,
    Object? note = _undefined,
    Object? unitColor = _undefined,
    Object? createdat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$JournalRecord(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        lessonID:
            lessonID == _undefined ? _instance.lessonID : (lessonID as String?),
        datetime: datetime == _undefined || datetime == null
            ? _instance.datetime
            : (datetime as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        note: note == _undefined || note == null
            ? _instance.note
            : (note as String),
        unitColor: unitColor == _undefined
            ? _instance.unitColor
            : (unitColor as String?),
        createdat: createdat == _undefined || createdat == null
            ? _instance.createdat
            : (createdat as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$JournalRecord<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$JournalRecord<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$JournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    String? lessonID,
    String? datetime,
    int? duration,
    String? note,
    String? unitColor,
    String? createdat,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$Content
    implements Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$Content({
    required this.id,
    this.$__typename = 'Content',
  });

  factory Query$FetchJournalRecord$node$$Content.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$Content(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$Content) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$Content
    on Query$FetchJournalRecord$node$$Content {
  CopyWith$Query$FetchJournalRecord$node$$Content<
          Query$FetchJournalRecord$node$$Content>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$Content(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$Content<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$Content(
    Query$FetchJournalRecord$node$$Content instance,
    TRes Function(Query$FetchJournalRecord$node$$Content) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$Content;

  factory CopyWith$Query$FetchJournalRecord$node$$Content.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$Content;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$Content<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$Content<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$Content(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$Content _instance;

  final TRes Function(Query$FetchJournalRecord$node$$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$Content<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$Content<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$Content(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$ContentEpisode
    implements Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$ContentEpisode({
    required this.id,
    this.$__typename = 'ContentEpisode',
  });

  factory Query$FetchJournalRecord$node$$ContentEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$ContentEpisode(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$ContentEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$ContentEpisode
    on Query$FetchJournalRecord$node$$ContentEpisode {
  CopyWith$Query$FetchJournalRecord$node$$ContentEpisode<
          Query$FetchJournalRecord$node$$ContentEpisode>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$ContentEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$ContentEpisode<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$ContentEpisode(
    Query$FetchJournalRecord$node$$ContentEpisode instance,
    TRes Function(Query$FetchJournalRecord$node$$ContentEpisode) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$ContentEpisode;

  factory CopyWith$Query$FetchJournalRecord$node$$ContentEpisode.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$ContentEpisode;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$ContentEpisode<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$ContentEpisode(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$ContentEpisode _instance;

  final TRes Function(Query$FetchJournalRecord$node$$ContentEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$ContentEpisode(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$ContentEpisode<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$ContentEpisode<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$ContentEpisode(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$ContentProgress
    implements Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$ContentProgress({
    required this.id,
    this.$__typename = 'ContentProgress',
  });

  factory Query$FetchJournalRecord$node$$ContentProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$ContentProgress(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$ContentProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$ContentProgress
    on Query$FetchJournalRecord$node$$ContentProgress {
  CopyWith$Query$FetchJournalRecord$node$$ContentProgress<
          Query$FetchJournalRecord$node$$ContentProgress>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$ContentProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$ContentProgress<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$ContentProgress(
    Query$FetchJournalRecord$node$$ContentProgress instance,
    TRes Function(Query$FetchJournalRecord$node$$ContentProgress) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$ContentProgress;

  factory CopyWith$Query$FetchJournalRecord$node$$ContentProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$ContentProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$ContentProgress<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$ContentProgress(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$ContentProgress _instance;

  final TRes Function(Query$FetchJournalRecord$node$$ContentProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$ContentProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$ContentProgress<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$ContentProgress<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$ContentProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$Course
    implements Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$Course({
    required this.id,
    this.$__typename = 'Course',
  });

  factory Query$FetchJournalRecord$node$$Course.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$Course(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$Course) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$Course
    on Query$FetchJournalRecord$node$$Course {
  CopyWith$Query$FetchJournalRecord$node$$Course<
          Query$FetchJournalRecord$node$$Course>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$Course(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$Course<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$Course(
    Query$FetchJournalRecord$node$$Course instance,
    TRes Function(Query$FetchJournalRecord$node$$Course) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$Course;

  factory CopyWith$Query$FetchJournalRecord$node$$Course.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$Course;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$Course<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$Course<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$Course(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$Course _instance;

  final TRes Function(Query$FetchJournalRecord$node$$Course) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$Course(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$Course<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$Course<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$Course(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$Lesson
    implements Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$Lesson({
    required this.id,
    this.$__typename = 'Lesson',
  });

  factory Query$FetchJournalRecord$node$$Lesson.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$Lesson(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$Lesson) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$Lesson
    on Query$FetchJournalRecord$node$$Lesson {
  CopyWith$Query$FetchJournalRecord$node$$Lesson<
          Query$FetchJournalRecord$node$$Lesson>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$Lesson(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$Lesson<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$Lesson(
    Query$FetchJournalRecord$node$$Lesson instance,
    TRes Function(Query$FetchJournalRecord$node$$Lesson) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$Lesson;

  factory CopyWith$Query$FetchJournalRecord$node$$Lesson.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$Lesson;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$Lesson<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$Lesson<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$Lesson(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$Lesson _instance;

  final TRes Function(Query$FetchJournalRecord$node$$Lesson) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$Lesson(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$Lesson<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$Lesson<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$Lesson(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$LessonAudio
    implements Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$LessonAudio({
    required this.id,
    this.$__typename = 'LessonAudio',
  });

  factory Query$FetchJournalRecord$node$$LessonAudio.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$LessonAudio(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$LessonAudio) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$LessonAudio
    on Query$FetchJournalRecord$node$$LessonAudio {
  CopyWith$Query$FetchJournalRecord$node$$LessonAudio<
          Query$FetchJournalRecord$node$$LessonAudio>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$LessonAudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$LessonAudio<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$LessonAudio(
    Query$FetchJournalRecord$node$$LessonAudio instance,
    TRes Function(Query$FetchJournalRecord$node$$LessonAudio) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$LessonAudio;

  factory CopyWith$Query$FetchJournalRecord$node$$LessonAudio.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$LessonAudio;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$LessonAudio<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$LessonAudio(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$LessonAudio _instance;

  final TRes Function(Query$FetchJournalRecord$node$$LessonAudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$LessonAudio(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$LessonAudio<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$LessonAudio<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$LessonAudio(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$Technique
    implements Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$Technique({
    required this.id,
    this.$__typename = 'Technique',
  });

  factory Query$FetchJournalRecord$node$$Technique.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$Technique(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$Technique) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$Technique
    on Query$FetchJournalRecord$node$$Technique {
  CopyWith$Query$FetchJournalRecord$node$$Technique<
          Query$FetchJournalRecord$node$$Technique>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$Technique(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$Technique<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$Technique(
    Query$FetchJournalRecord$node$$Technique instance,
    TRes Function(Query$FetchJournalRecord$node$$Technique) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$Technique;

  factory CopyWith$Query$FetchJournalRecord$node$$Technique.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$Technique;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$Technique<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$Technique<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$Technique(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$Technique _instance;

  final TRes Function(Query$FetchJournalRecord$node$$Technique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$Technique(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$Technique<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$Technique<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$Technique(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$Unit
    implements Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$Unit({
    required this.id,
    this.$__typename = 'Unit',
  });

  factory Query$FetchJournalRecord$node$$Unit.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$Unit(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$Unit) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$Unit
    on Query$FetchJournalRecord$node$$Unit {
  CopyWith$Query$FetchJournalRecord$node$$Unit<
          Query$FetchJournalRecord$node$$Unit>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$Unit(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$Unit<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$Unit(
    Query$FetchJournalRecord$node$$Unit instance,
    TRes Function(Query$FetchJournalRecord$node$$Unit) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$Unit;

  factory CopyWith$Query$FetchJournalRecord$node$$Unit.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$Unit;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$Unit<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$Unit<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$Unit(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$Unit _instance;

  final TRes Function(Query$FetchJournalRecord$node$$Unit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$Unit(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$Unit<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$Unit<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$Unit(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$User
    implements Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$User({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FetchJournalRecord$node$$User.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$User(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$User) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$User
    on Query$FetchJournalRecord$node$$User {
  CopyWith$Query$FetchJournalRecord$node$$User<
          Query$FetchJournalRecord$node$$User>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$User<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$User(
    Query$FetchJournalRecord$node$$User instance,
    TRes Function(Query$FetchJournalRecord$node$$User) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$User;

  factory CopyWith$Query$FetchJournalRecord$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$User;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$User<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$User<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$User(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$User _instance;

  final TRes Function(Query$FetchJournalRecord$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$User<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$User<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$User(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchJournalRecord$node$$UserProgress
    implements Query$FetchJournalRecord$node {
  Query$FetchJournalRecord$node$$UserProgress({
    required this.id,
    this.$__typename = 'UserProgress',
  });

  factory Query$FetchJournalRecord$node$$UserProgress.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchJournalRecord$node$$UserProgress(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchJournalRecord$node$$UserProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchJournalRecord$node$$UserProgress
    on Query$FetchJournalRecord$node$$UserProgress {
  CopyWith$Query$FetchJournalRecord$node$$UserProgress<
          Query$FetchJournalRecord$node$$UserProgress>
      get copyWith => CopyWith$Query$FetchJournalRecord$node$$UserProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchJournalRecord$node$$UserProgress<TRes> {
  factory CopyWith$Query$FetchJournalRecord$node$$UserProgress(
    Query$FetchJournalRecord$node$$UserProgress instance,
    TRes Function(Query$FetchJournalRecord$node$$UserProgress) then,
  ) = _CopyWithImpl$Query$FetchJournalRecord$node$$UserProgress;

  factory CopyWith$Query$FetchJournalRecord$node$$UserProgress.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchJournalRecord$node$$UserProgress;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchJournalRecord$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$UserProgress<TRes> {
  _CopyWithImpl$Query$FetchJournalRecord$node$$UserProgress(
    this._instance,
    this._then,
  );

  final Query$FetchJournalRecord$node$$UserProgress _instance;

  final TRes Function(Query$FetchJournalRecord$node$$UserProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchJournalRecord$node$$UserProgress(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchJournalRecord$node$$UserProgress<TRes>
    implements CopyWith$Query$FetchJournalRecord$node$$UserProgress<TRes> {
  _CopyWithStubImpl$Query$FetchJournalRecord$node$$UserProgress(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchWeekStats {
  Query$FetchWeekStats({
    required this.weekStats,
    this.$__typename = 'Query',
  });

  factory Query$FetchWeekStats.fromJson(Map<String, dynamic> json) {
    final l$weekStats = json['weekStats'];
    final l$$__typename = json['__typename'];
    return Query$FetchWeekStats(
      weekStats: (l$weekStats as List<dynamic>)
          .map((e) =>
              Fragment$JournalRecord.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$JournalRecord> weekStats;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$weekStats = weekStats;
    _resultData['weekStats'] = l$weekStats.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$weekStats = weekStats;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$weekStats.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchWeekStats) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$weekStats = weekStats;
    final lOther$weekStats = other.weekStats;
    if (l$weekStats.length != lOther$weekStats.length) {
      return false;
    }
    for (int i = 0; i < l$weekStats.length; i++) {
      final l$weekStats$entry = l$weekStats[i];
      final lOther$weekStats$entry = lOther$weekStats[i];
      if (l$weekStats$entry != lOther$weekStats$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchWeekStats on Query$FetchWeekStats {
  CopyWith$Query$FetchWeekStats<Query$FetchWeekStats> get copyWith =>
      CopyWith$Query$FetchWeekStats(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchWeekStats<TRes> {
  factory CopyWith$Query$FetchWeekStats(
    Query$FetchWeekStats instance,
    TRes Function(Query$FetchWeekStats) then,
  ) = _CopyWithImpl$Query$FetchWeekStats;

  factory CopyWith$Query$FetchWeekStats.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchWeekStats;

  TRes call({
    List<Fragment$JournalRecord>? weekStats,
    String? $__typename,
  });
  TRes weekStats(
      Iterable<Fragment$JournalRecord> Function(
              Iterable<CopyWith$Fragment$JournalRecord<Fragment$JournalRecord>>)
          _fn);
}

class _CopyWithImpl$Query$FetchWeekStats<TRes>
    implements CopyWith$Query$FetchWeekStats<TRes> {
  _CopyWithImpl$Query$FetchWeekStats(
    this._instance,
    this._then,
  );

  final Query$FetchWeekStats _instance;

  final TRes Function(Query$FetchWeekStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? weekStats = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchWeekStats(
        weekStats: weekStats == _undefined || weekStats == null
            ? _instance.weekStats
            : (weekStats as List<Fragment$JournalRecord>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes weekStats(
          Iterable<Fragment$JournalRecord> Function(
                  Iterable<
                      CopyWith$Fragment$JournalRecord<Fragment$JournalRecord>>)
              _fn) =>
      call(
          weekStats: _fn(
              _instance.weekStats.map((e) => CopyWith$Fragment$JournalRecord(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$FetchWeekStats<TRes>
    implements CopyWith$Query$FetchWeekStats<TRes> {
  _CopyWithStubImpl$Query$FetchWeekStats(this._res);

  TRes _res;

  call({
    List<Fragment$JournalRecord>? weekStats,
    String? $__typename,
  }) =>
      _res;

  weekStats(_fn) => _res;
}

const documentNodeQueryFetchWeekStats = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchWeekStats'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'weekStats'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'JournalRecord'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionJournalRecord,
]);
Query$FetchWeekStats _parserFn$Query$FetchWeekStats(
        Map<String, dynamic> data) =>
    Query$FetchWeekStats.fromJson(data);
typedef OnQueryComplete$Query$FetchWeekStats = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchWeekStats?,
);

class Options$Query$FetchWeekStats
    extends graphql.QueryOptions<Query$FetchWeekStats> {
  Options$Query$FetchWeekStats({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchWeekStats? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchWeekStats? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$FetchWeekStats(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchWeekStats,
          parserFn: _parserFn$Query$FetchWeekStats,
        );

  final OnQueryComplete$Query$FetchWeekStats? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchWeekStats
    extends graphql.WatchQueryOptions<Query$FetchWeekStats> {
  WatchOptions$Query$FetchWeekStats({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchWeekStats? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchWeekStats,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchWeekStats,
        );
}

class FetchMoreOptions$Query$FetchWeekStats extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchWeekStats(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchWeekStats,
        );
}

extension ClientExtension$Query$FetchWeekStats on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchWeekStats>> query$FetchWeekStats(
          [Options$Query$FetchWeekStats? options]) async =>
      await this.query(options ?? Options$Query$FetchWeekStats());
  graphql.ObservableQuery<Query$FetchWeekStats> watchQuery$FetchWeekStats(
          [WatchOptions$Query$FetchWeekStats? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchWeekStats());
  void writeQuery$FetchWeekStats({
    required Query$FetchWeekStats data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFetchWeekStats)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchWeekStats? readQuery$FetchWeekStats({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchWeekStats)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchWeekStats.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchWeekStats> useQuery$FetchWeekStats(
        [Options$Query$FetchWeekStats? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchWeekStats());
graphql.ObservableQuery<Query$FetchWeekStats> useWatchQuery$FetchWeekStats(
        [WatchOptions$Query$FetchWeekStats? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FetchWeekStats());

class Query$FetchWeekStats$Widget
    extends graphql_flutter.Query<Query$FetchWeekStats> {
  Query$FetchWeekStats$Widget({
    widgets.Key? key,
    Options$Query$FetchWeekStats? options,
    required graphql_flutter.QueryBuilder<Query$FetchWeekStats> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchWeekStats(),
          builder: builder,
        );
}

class Variables$Mutation$CreateJournalRecord {
  factory Variables$Mutation$CreateJournalRecord(
          {required Input$CreateJournalRecordInput input}) =>
      Variables$Mutation$CreateJournalRecord._({
        r'input': input,
      });

  Variables$Mutation$CreateJournalRecord._(this._$data);

  factory Variables$Mutation$CreateJournalRecord.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateJournalRecordInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateJournalRecord._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateJournalRecordInput get input =>
      (_$data['input'] as Input$CreateJournalRecordInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateJournalRecord<
          Variables$Mutation$CreateJournalRecord>
      get copyWith => CopyWith$Variables$Mutation$CreateJournalRecord(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateJournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateJournalRecord<TRes> {
  factory CopyWith$Variables$Mutation$CreateJournalRecord(
    Variables$Mutation$CreateJournalRecord instance,
    TRes Function(Variables$Mutation$CreateJournalRecord) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateJournalRecord;

  factory CopyWith$Variables$Mutation$CreateJournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateJournalRecord;

  TRes call({Input$CreateJournalRecordInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateJournalRecord<TRes>
    implements CopyWith$Variables$Mutation$CreateJournalRecord<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateJournalRecord(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateJournalRecord _instance;

  final TRes Function(Variables$Mutation$CreateJournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateJournalRecord._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateJournalRecordInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateJournalRecord<TRes>
    implements CopyWith$Variables$Mutation$CreateJournalRecord<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateJournalRecord(this._res);

  TRes _res;

  call({Input$CreateJournalRecordInput? input}) => _res;
}

class Mutation$CreateJournalRecord {
  Mutation$CreateJournalRecord({
    required this.record,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateJournalRecord.fromJson(Map<String, dynamic> json) {
    final l$record = json['record'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateJournalRecord(
      record:
          Fragment$JournalRecord.fromJson((l$record as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$JournalRecord record;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$record = record;
    _resultData['record'] = l$record.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$record = record;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$record,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateJournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$record = record;
    final lOther$record = other.record;
    if (l$record != lOther$record) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateJournalRecord
    on Mutation$CreateJournalRecord {
  CopyWith$Mutation$CreateJournalRecord<Mutation$CreateJournalRecord>
      get copyWith => CopyWith$Mutation$CreateJournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateJournalRecord<TRes> {
  factory CopyWith$Mutation$CreateJournalRecord(
    Mutation$CreateJournalRecord instance,
    TRes Function(Mutation$CreateJournalRecord) then,
  ) = _CopyWithImpl$Mutation$CreateJournalRecord;

  factory CopyWith$Mutation$CreateJournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateJournalRecord;

  TRes call({
    Fragment$JournalRecord? record,
    String? $__typename,
  });
  CopyWith$Fragment$JournalRecord<TRes> get record;
}

class _CopyWithImpl$Mutation$CreateJournalRecord<TRes>
    implements CopyWith$Mutation$CreateJournalRecord<TRes> {
  _CopyWithImpl$Mutation$CreateJournalRecord(
    this._instance,
    this._then,
  );

  final Mutation$CreateJournalRecord _instance;

  final TRes Function(Mutation$CreateJournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? record = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateJournalRecord(
        record: record == _undefined || record == null
            ? _instance.record
            : (record as Fragment$JournalRecord),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$JournalRecord<TRes> get record {
    final local$record = _instance.record;
    return CopyWith$Fragment$JournalRecord(
        local$record, (e) => call(record: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateJournalRecord<TRes>
    implements CopyWith$Mutation$CreateJournalRecord<TRes> {
  _CopyWithStubImpl$Mutation$CreateJournalRecord(this._res);

  TRes _res;

  call({
    Fragment$JournalRecord? record,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$JournalRecord<TRes> get record =>
      CopyWith$Fragment$JournalRecord.stub(_res);
}

const documentNodeMutationCreateJournalRecord = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateJournalRecord'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateJournalRecordInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createJournalRecord'),
        alias: NameNode(value: 'record'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'JournalRecord'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionJournalRecord,
]);
Mutation$CreateJournalRecord _parserFn$Mutation$CreateJournalRecord(
        Map<String, dynamic> data) =>
    Mutation$CreateJournalRecord.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateJournalRecord = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$CreateJournalRecord?,
);

class Options$Mutation$CreateJournalRecord
    extends graphql.MutationOptions<Mutation$CreateJournalRecord> {
  Options$Mutation$CreateJournalRecord({
    String? operationName,
    required Variables$Mutation$CreateJournalRecord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateJournalRecord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateJournalRecord? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateJournalRecord>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateJournalRecord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateJournalRecord,
          parserFn: _parserFn$Mutation$CreateJournalRecord,
        );

  final OnMutationCompleted$Mutation$CreateJournalRecord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateJournalRecord
    extends graphql.WatchQueryOptions<Mutation$CreateJournalRecord> {
  WatchOptions$Mutation$CreateJournalRecord({
    String? operationName,
    required Variables$Mutation$CreateJournalRecord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateJournalRecord? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationCreateJournalRecord,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateJournalRecord,
        );
}

extension ClientExtension$Mutation$CreateJournalRecord
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateJournalRecord>>
      mutate$CreateJournalRecord(
              Options$Mutation$CreateJournalRecord options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateJournalRecord>
      watchMutation$CreateJournalRecord(
              WatchOptions$Mutation$CreateJournalRecord options) =>
          this.watchMutation(options);
}

class Mutation$CreateJournalRecord$HookResult {
  Mutation$CreateJournalRecord$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateJournalRecord runMutation;

  final graphql.QueryResult<Mutation$CreateJournalRecord> result;
}

Mutation$CreateJournalRecord$HookResult useMutation$CreateJournalRecord(
    [WidgetOptions$Mutation$CreateJournalRecord? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateJournalRecord());
  return Mutation$CreateJournalRecord$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateJournalRecord>
    useWatchMutation$CreateJournalRecord(
            WatchOptions$Mutation$CreateJournalRecord options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateJournalRecord
    extends graphql.MutationOptions<Mutation$CreateJournalRecord> {
  WidgetOptions$Mutation$CreateJournalRecord({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateJournalRecord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateJournalRecord? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateJournalRecord>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateJournalRecord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateJournalRecord,
          parserFn: _parserFn$Mutation$CreateJournalRecord,
        );

  final OnMutationCompleted$Mutation$CreateJournalRecord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateJournalRecord
    = graphql.MultiSourceResult<Mutation$CreateJournalRecord> Function(
  Variables$Mutation$CreateJournalRecord, {
  Object? optimisticResult,
  Mutation$CreateJournalRecord? typedOptimisticResult,
});
typedef Builder$Mutation$CreateJournalRecord = widgets.Widget Function(
  RunMutation$Mutation$CreateJournalRecord,
  graphql.QueryResult<Mutation$CreateJournalRecord>?,
);

class Mutation$CreateJournalRecord$Widget
    extends graphql_flutter.Mutation<Mutation$CreateJournalRecord> {
  Mutation$CreateJournalRecord$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateJournalRecord? options,
    required Builder$Mutation$CreateJournalRecord builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateJournalRecord(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$UpdateJournalRecord {
  factory Variables$Mutation$UpdateJournalRecord({
    required String id,
    required Input$UpdateJournalRecordInput input,
  }) =>
      Variables$Mutation$UpdateJournalRecord._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$UpdateJournalRecord._(this._$data);

  factory Variables$Mutation$UpdateJournalRecord.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$UpdateJournalRecordInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateJournalRecord._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$UpdateJournalRecordInput get input =>
      (_$data['input'] as Input$UpdateJournalRecordInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateJournalRecord<
          Variables$Mutation$UpdateJournalRecord>
      get copyWith => CopyWith$Variables$Mutation$UpdateJournalRecord(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateJournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateJournalRecord<TRes> {
  factory CopyWith$Variables$Mutation$UpdateJournalRecord(
    Variables$Mutation$UpdateJournalRecord instance,
    TRes Function(Variables$Mutation$UpdateJournalRecord) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateJournalRecord;

  factory CopyWith$Variables$Mutation$UpdateJournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateJournalRecord;

  TRes call({
    String? id,
    Input$UpdateJournalRecordInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateJournalRecord<TRes>
    implements CopyWith$Variables$Mutation$UpdateJournalRecord<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateJournalRecord(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateJournalRecord _instance;

  final TRes Function(Variables$Mutation$UpdateJournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateJournalRecord._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$UpdateJournalRecordInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateJournalRecord<TRes>
    implements CopyWith$Variables$Mutation$UpdateJournalRecord<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateJournalRecord(this._res);

  TRes _res;

  call({
    String? id,
    Input$UpdateJournalRecordInput? input,
  }) =>
      _res;
}

class Mutation$UpdateJournalRecord {
  Mutation$UpdateJournalRecord({
    required this.record,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateJournalRecord.fromJson(Map<String, dynamic> json) {
    final l$record = json['record'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateJournalRecord(
      record:
          Fragment$JournalRecord.fromJson((l$record as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$JournalRecord record;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$record = record;
    _resultData['record'] = l$record.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$record = record;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$record,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateJournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$record = record;
    final lOther$record = other.record;
    if (l$record != lOther$record) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateJournalRecord
    on Mutation$UpdateJournalRecord {
  CopyWith$Mutation$UpdateJournalRecord<Mutation$UpdateJournalRecord>
      get copyWith => CopyWith$Mutation$UpdateJournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateJournalRecord<TRes> {
  factory CopyWith$Mutation$UpdateJournalRecord(
    Mutation$UpdateJournalRecord instance,
    TRes Function(Mutation$UpdateJournalRecord) then,
  ) = _CopyWithImpl$Mutation$UpdateJournalRecord;

  factory CopyWith$Mutation$UpdateJournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateJournalRecord;

  TRes call({
    Fragment$JournalRecord? record,
    String? $__typename,
  });
  CopyWith$Fragment$JournalRecord<TRes> get record;
}

class _CopyWithImpl$Mutation$UpdateJournalRecord<TRes>
    implements CopyWith$Mutation$UpdateJournalRecord<TRes> {
  _CopyWithImpl$Mutation$UpdateJournalRecord(
    this._instance,
    this._then,
  );

  final Mutation$UpdateJournalRecord _instance;

  final TRes Function(Mutation$UpdateJournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? record = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateJournalRecord(
        record: record == _undefined || record == null
            ? _instance.record
            : (record as Fragment$JournalRecord),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$JournalRecord<TRes> get record {
    final local$record = _instance.record;
    return CopyWith$Fragment$JournalRecord(
        local$record, (e) => call(record: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateJournalRecord<TRes>
    implements CopyWith$Mutation$UpdateJournalRecord<TRes> {
  _CopyWithStubImpl$Mutation$UpdateJournalRecord(this._res);

  TRes _res;

  call({
    Fragment$JournalRecord? record,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$JournalRecord<TRes> get record =>
      CopyWith$Fragment$JournalRecord.stub(_res);
}

const documentNodeMutationUpdateJournalRecord = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateJournalRecord'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateJournalRecordInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateJournalRecord'),
        alias: NameNode(value: 'record'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'JournalRecord'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionJournalRecord,
]);
Mutation$UpdateJournalRecord _parserFn$Mutation$UpdateJournalRecord(
        Map<String, dynamic> data) =>
    Mutation$UpdateJournalRecord.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateJournalRecord = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateJournalRecord?,
);

class Options$Mutation$UpdateJournalRecord
    extends graphql.MutationOptions<Mutation$UpdateJournalRecord> {
  Options$Mutation$UpdateJournalRecord({
    String? operationName,
    required Variables$Mutation$UpdateJournalRecord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateJournalRecord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateJournalRecord? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateJournalRecord>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateJournalRecord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateJournalRecord,
          parserFn: _parserFn$Mutation$UpdateJournalRecord,
        );

  final OnMutationCompleted$Mutation$UpdateJournalRecord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateJournalRecord
    extends graphql.WatchQueryOptions<Mutation$UpdateJournalRecord> {
  WatchOptions$Mutation$UpdateJournalRecord({
    String? operationName,
    required Variables$Mutation$UpdateJournalRecord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateJournalRecord? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateJournalRecord,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateJournalRecord,
        );
}

extension ClientExtension$Mutation$UpdateJournalRecord
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateJournalRecord>>
      mutate$UpdateJournalRecord(
              Options$Mutation$UpdateJournalRecord options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateJournalRecord>
      watchMutation$UpdateJournalRecord(
              WatchOptions$Mutation$UpdateJournalRecord options) =>
          this.watchMutation(options);
}

class Mutation$UpdateJournalRecord$HookResult {
  Mutation$UpdateJournalRecord$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateJournalRecord runMutation;

  final graphql.QueryResult<Mutation$UpdateJournalRecord> result;
}

Mutation$UpdateJournalRecord$HookResult useMutation$UpdateJournalRecord(
    [WidgetOptions$Mutation$UpdateJournalRecord? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateJournalRecord());
  return Mutation$UpdateJournalRecord$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateJournalRecord>
    useWatchMutation$UpdateJournalRecord(
            WatchOptions$Mutation$UpdateJournalRecord options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateJournalRecord
    extends graphql.MutationOptions<Mutation$UpdateJournalRecord> {
  WidgetOptions$Mutation$UpdateJournalRecord({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateJournalRecord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateJournalRecord? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateJournalRecord>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateJournalRecord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateJournalRecord,
          parserFn: _parserFn$Mutation$UpdateJournalRecord,
        );

  final OnMutationCompleted$Mutation$UpdateJournalRecord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateJournalRecord
    = graphql.MultiSourceResult<Mutation$UpdateJournalRecord> Function(
  Variables$Mutation$UpdateJournalRecord, {
  Object? optimisticResult,
  Mutation$UpdateJournalRecord? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateJournalRecord = widgets.Widget Function(
  RunMutation$Mutation$UpdateJournalRecord,
  graphql.QueryResult<Mutation$UpdateJournalRecord>?,
);

class Mutation$UpdateJournalRecord$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateJournalRecord> {
  Mutation$UpdateJournalRecord$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateJournalRecord? options,
    required Builder$Mutation$UpdateJournalRecord builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateJournalRecord(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$DeleteJournalRecord {
  factory Variables$Mutation$DeleteJournalRecord({required String id}) =>
      Variables$Mutation$DeleteJournalRecord._({
        r'id': id,
      });

  Variables$Mutation$DeleteJournalRecord._(this._$data);

  factory Variables$Mutation$DeleteJournalRecord.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteJournalRecord._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteJournalRecord<
          Variables$Mutation$DeleteJournalRecord>
      get copyWith => CopyWith$Variables$Mutation$DeleteJournalRecord(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteJournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteJournalRecord<TRes> {
  factory CopyWith$Variables$Mutation$DeleteJournalRecord(
    Variables$Mutation$DeleteJournalRecord instance,
    TRes Function(Variables$Mutation$DeleteJournalRecord) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteJournalRecord;

  factory CopyWith$Variables$Mutation$DeleteJournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteJournalRecord;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteJournalRecord<TRes>
    implements CopyWith$Variables$Mutation$DeleteJournalRecord<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteJournalRecord(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteJournalRecord _instance;

  final TRes Function(Variables$Mutation$DeleteJournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteJournalRecord._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteJournalRecord<TRes>
    implements CopyWith$Variables$Mutation$DeleteJournalRecord<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteJournalRecord(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteJournalRecord {
  Mutation$DeleteJournalRecord({
    required this.record,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteJournalRecord.fromJson(Map<String, dynamic> json) {
    final l$record = json['record'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteJournalRecord(
      record:
          Fragment$JournalRecord.fromJson((l$record as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$JournalRecord record;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$record = record;
    _resultData['record'] = l$record.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$record = record;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$record,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteJournalRecord) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$record = record;
    final lOther$record = other.record;
    if (l$record != lOther$record) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteJournalRecord
    on Mutation$DeleteJournalRecord {
  CopyWith$Mutation$DeleteJournalRecord<Mutation$DeleteJournalRecord>
      get copyWith => CopyWith$Mutation$DeleteJournalRecord(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteJournalRecord<TRes> {
  factory CopyWith$Mutation$DeleteJournalRecord(
    Mutation$DeleteJournalRecord instance,
    TRes Function(Mutation$DeleteJournalRecord) then,
  ) = _CopyWithImpl$Mutation$DeleteJournalRecord;

  factory CopyWith$Mutation$DeleteJournalRecord.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteJournalRecord;

  TRes call({
    Fragment$JournalRecord? record,
    String? $__typename,
  });
  CopyWith$Fragment$JournalRecord<TRes> get record;
}

class _CopyWithImpl$Mutation$DeleteJournalRecord<TRes>
    implements CopyWith$Mutation$DeleteJournalRecord<TRes> {
  _CopyWithImpl$Mutation$DeleteJournalRecord(
    this._instance,
    this._then,
  );

  final Mutation$DeleteJournalRecord _instance;

  final TRes Function(Mutation$DeleteJournalRecord) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? record = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteJournalRecord(
        record: record == _undefined || record == null
            ? _instance.record
            : (record as Fragment$JournalRecord),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$JournalRecord<TRes> get record {
    final local$record = _instance.record;
    return CopyWith$Fragment$JournalRecord(
        local$record, (e) => call(record: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteJournalRecord<TRes>
    implements CopyWith$Mutation$DeleteJournalRecord<TRes> {
  _CopyWithStubImpl$Mutation$DeleteJournalRecord(this._res);

  TRes _res;

  call({
    Fragment$JournalRecord? record,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$JournalRecord<TRes> get record =>
      CopyWith$Fragment$JournalRecord.stub(_res);
}

const documentNodeMutationDeleteJournalRecord = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteJournalRecord'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteJournalRecord'),
        alias: NameNode(value: 'record'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'JournalRecord'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionJournalRecord,
]);
Mutation$DeleteJournalRecord _parserFn$Mutation$DeleteJournalRecord(
        Map<String, dynamic> data) =>
    Mutation$DeleteJournalRecord.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteJournalRecord = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteJournalRecord?,
);

class Options$Mutation$DeleteJournalRecord
    extends graphql.MutationOptions<Mutation$DeleteJournalRecord> {
  Options$Mutation$DeleteJournalRecord({
    String? operationName,
    required Variables$Mutation$DeleteJournalRecord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteJournalRecord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteJournalRecord? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteJournalRecord>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteJournalRecord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteJournalRecord,
          parserFn: _parserFn$Mutation$DeleteJournalRecord,
        );

  final OnMutationCompleted$Mutation$DeleteJournalRecord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteJournalRecord
    extends graphql.WatchQueryOptions<Mutation$DeleteJournalRecord> {
  WatchOptions$Mutation$DeleteJournalRecord({
    String? operationName,
    required Variables$Mutation$DeleteJournalRecord variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteJournalRecord? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationDeleteJournalRecord,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteJournalRecord,
        );
}

extension ClientExtension$Mutation$DeleteJournalRecord
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteJournalRecord>>
      mutate$DeleteJournalRecord(
              Options$Mutation$DeleteJournalRecord options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteJournalRecord>
      watchMutation$DeleteJournalRecord(
              WatchOptions$Mutation$DeleteJournalRecord options) =>
          this.watchMutation(options);
}

class Mutation$DeleteJournalRecord$HookResult {
  Mutation$DeleteJournalRecord$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteJournalRecord runMutation;

  final graphql.QueryResult<Mutation$DeleteJournalRecord> result;
}

Mutation$DeleteJournalRecord$HookResult useMutation$DeleteJournalRecord(
    [WidgetOptions$Mutation$DeleteJournalRecord? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteJournalRecord());
  return Mutation$DeleteJournalRecord$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteJournalRecord>
    useWatchMutation$DeleteJournalRecord(
            WatchOptions$Mutation$DeleteJournalRecord options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteJournalRecord
    extends graphql.MutationOptions<Mutation$DeleteJournalRecord> {
  WidgetOptions$Mutation$DeleteJournalRecord({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteJournalRecord? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteJournalRecord? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteJournalRecord>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteJournalRecord(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteJournalRecord,
          parserFn: _parserFn$Mutation$DeleteJournalRecord,
        );

  final OnMutationCompleted$Mutation$DeleteJournalRecord? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteJournalRecord
    = graphql.MultiSourceResult<Mutation$DeleteJournalRecord> Function(
  Variables$Mutation$DeleteJournalRecord, {
  Object? optimisticResult,
  Mutation$DeleteJournalRecord? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteJournalRecord = widgets.Widget Function(
  RunMutation$Mutation$DeleteJournalRecord,
  graphql.QueryResult<Mutation$DeleteJournalRecord>?,
);

class Mutation$DeleteJournalRecord$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteJournalRecord> {
  Mutation$DeleteJournalRecord$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteJournalRecord? options,
    required Builder$Mutation$DeleteJournalRecord builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteJournalRecord(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}
