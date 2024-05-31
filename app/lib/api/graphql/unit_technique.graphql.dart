// GENERATED FILE, DO NOT MODIFY
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'technique.graphql.dart';

class Fragment$UnitTechnique {
  Fragment$UnitTechnique({
    required this.unitId,
    required this.techniqueId,
    required this.technique,
    required this.position,
    this.$__typename = 'UnitTechnique',
  });

  factory Fragment$UnitTechnique.fromJson(Map<String, dynamic> json) {
    final l$unitId = json['unitId'];
    final l$techniqueId = json['techniqueId'];
    final l$technique = json['technique'];
    final l$position = json['position'];
    final l$$__typename = json['__typename'];
    return Fragment$UnitTechnique(
      unitId: (l$unitId as String),
      techniqueId: (l$techniqueId as String),
      technique:
          Fragment$Technique.fromJson((l$technique as Map<String, dynamic>)),
      position: (l$position as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String unitId;

  final String techniqueId;

  final Fragment$Technique technique;

  final int position;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unitId = unitId;
    _resultData['unitId'] = l$unitId;
    final l$techniqueId = techniqueId;
    _resultData['techniqueId'] = l$techniqueId;
    final l$technique = technique;
    _resultData['technique'] = l$technique.toJson();
    final l$position = position;
    _resultData['position'] = l$position;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unitId = unitId;
    final l$techniqueId = techniqueId;
    final l$technique = technique;
    final l$position = position;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$unitId,
      l$techniqueId,
      l$technique,
      l$position,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UnitTechnique) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unitId = unitId;
    final lOther$unitId = other.unitId;
    if (l$unitId != lOther$unitId) {
      return false;
    }
    final l$techniqueId = techniqueId;
    final lOther$techniqueId = other.techniqueId;
    if (l$techniqueId != lOther$techniqueId) {
      return false;
    }
    final l$technique = technique;
    final lOther$technique = other.technique;
    if (l$technique != lOther$technique) {
      return false;
    }
    final l$position = position;
    final lOther$position = other.position;
    if (l$position != lOther$position) {
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

extension UtilityExtension$Fragment$UnitTechnique on Fragment$UnitTechnique {
  CopyWith$Fragment$UnitTechnique<Fragment$UnitTechnique> get copyWith =>
      CopyWith$Fragment$UnitTechnique(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UnitTechnique<TRes> {
  factory CopyWith$Fragment$UnitTechnique(
    Fragment$UnitTechnique instance,
    TRes Function(Fragment$UnitTechnique) then,
  ) = _CopyWithImpl$Fragment$UnitTechnique;

  factory CopyWith$Fragment$UnitTechnique.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UnitTechnique;

  TRes call({
    String? unitId,
    String? techniqueId,
    Fragment$Technique? technique,
    int? position,
    String? $__typename,
  });
  CopyWith$Fragment$Technique<TRes> get technique;
}

class _CopyWithImpl$Fragment$UnitTechnique<TRes>
    implements CopyWith$Fragment$UnitTechnique<TRes> {
  _CopyWithImpl$Fragment$UnitTechnique(
    this._instance,
    this._then,
  );

  final Fragment$UnitTechnique _instance;

  final TRes Function(Fragment$UnitTechnique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unitId = _undefined,
    Object? techniqueId = _undefined,
    Object? technique = _undefined,
    Object? position = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UnitTechnique(
        unitId: unitId == _undefined || unitId == null
            ? _instance.unitId
            : (unitId as String),
        techniqueId: techniqueId == _undefined || techniqueId == null
            ? _instance.techniqueId
            : (techniqueId as String),
        technique: technique == _undefined || technique == null
            ? _instance.technique
            : (technique as Fragment$Technique),
        position: position == _undefined || position == null
            ? _instance.position
            : (position as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Technique<TRes> get technique {
    final local$technique = _instance.technique;
    return CopyWith$Fragment$Technique(
        local$technique, (e) => call(technique: e));
  }
}

class _CopyWithStubImpl$Fragment$UnitTechnique<TRes>
    implements CopyWith$Fragment$UnitTechnique<TRes> {
  _CopyWithStubImpl$Fragment$UnitTechnique(this._res);

  TRes _res;

  call({
    String? unitId,
    String? techniqueId,
    Fragment$Technique? technique,
    int? position,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Technique<TRes> get technique =>
      CopyWith$Fragment$Technique.stub(_res);
}

const fragmentDefinitionUnitTechnique = FragmentDefinitionNode(
  name: NameNode(value: 'UnitTechnique'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UnitTechnique'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'unitId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'techniqueId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'technique'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Technique'),
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
      name: NameNode(value: 'position'),
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
const documentNodeFragmentUnitTechnique = DocumentNode(definitions: [
  fragmentDefinitionUnitTechnique,
  fragmentDefinitionTechnique,
]);

extension ClientExtension$Fragment$UnitTechnique on graphql.GraphQLClient {
  void writeFragment$UnitTechnique({
    required Fragment$UnitTechnique data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UnitTechnique',
            document: documentNodeFragmentUnitTechnique,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$UnitTechnique? readFragment$UnitTechnique({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UnitTechnique',
          document: documentNodeFragmentUnitTechnique,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UnitTechnique.fromJson(result);
  }
}
