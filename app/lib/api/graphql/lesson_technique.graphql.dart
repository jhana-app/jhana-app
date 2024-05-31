// GENERATED FILE, DO NOT MODIFY
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'technique.graphql.dart';

class Fragment$LessonTechnique {
  Fragment$LessonTechnique({
    required this.lessonId,
    required this.techniqueId,
    required this.technique,
    required this.order,
    this.$__typename = 'LessonTechnique',
  });

  factory Fragment$LessonTechnique.fromJson(Map<String, dynamic> json) {
    final l$lessonId = json['lessonId'];
    final l$techniqueId = json['techniqueId'];
    final l$technique = json['technique'];
    final l$order = json['order'];
    final l$$__typename = json['__typename'];
    return Fragment$LessonTechnique(
      lessonId: (l$lessonId as String),
      techniqueId: (l$techniqueId as String),
      technique:
          Fragment$Technique.fromJson((l$technique as Map<String, dynamic>)),
      order: (l$order as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String lessonId;

  final String techniqueId;

  final Fragment$Technique technique;

  final int order;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lessonId = lessonId;
    _resultData['lessonId'] = l$lessonId;
    final l$techniqueId = techniqueId;
    _resultData['techniqueId'] = l$techniqueId;
    final l$technique = technique;
    _resultData['technique'] = l$technique.toJson();
    final l$order = order;
    _resultData['order'] = l$order;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lessonId = lessonId;
    final l$techniqueId = techniqueId;
    final l$technique = technique;
    final l$order = order;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lessonId,
      l$techniqueId,
      l$technique,
      l$order,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$LessonTechnique) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lessonId = lessonId;
    final lOther$lessonId = other.lessonId;
    if (l$lessonId != lOther$lessonId) {
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
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
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

extension UtilityExtension$Fragment$LessonTechnique
    on Fragment$LessonTechnique {
  CopyWith$Fragment$LessonTechnique<Fragment$LessonTechnique> get copyWith =>
      CopyWith$Fragment$LessonTechnique(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$LessonTechnique<TRes> {
  factory CopyWith$Fragment$LessonTechnique(
    Fragment$LessonTechnique instance,
    TRes Function(Fragment$LessonTechnique) then,
  ) = _CopyWithImpl$Fragment$LessonTechnique;

  factory CopyWith$Fragment$LessonTechnique.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LessonTechnique;

  TRes call({
    String? lessonId,
    String? techniqueId,
    Fragment$Technique? technique,
    int? order,
    String? $__typename,
  });
  CopyWith$Fragment$Technique<TRes> get technique;
}

class _CopyWithImpl$Fragment$LessonTechnique<TRes>
    implements CopyWith$Fragment$LessonTechnique<TRes> {
  _CopyWithImpl$Fragment$LessonTechnique(
    this._instance,
    this._then,
  );

  final Fragment$LessonTechnique _instance;

  final TRes Function(Fragment$LessonTechnique) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lessonId = _undefined,
    Object? techniqueId = _undefined,
    Object? technique = _undefined,
    Object? order = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LessonTechnique(
        lessonId: lessonId == _undefined || lessonId == null
            ? _instance.lessonId
            : (lessonId as String),
        techniqueId: techniqueId == _undefined || techniqueId == null
            ? _instance.techniqueId
            : (techniqueId as String),
        technique: technique == _undefined || technique == null
            ? _instance.technique
            : (technique as Fragment$Technique),
        order: order == _undefined || order == null
            ? _instance.order
            : (order as int),
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

class _CopyWithStubImpl$Fragment$LessonTechnique<TRes>
    implements CopyWith$Fragment$LessonTechnique<TRes> {
  _CopyWithStubImpl$Fragment$LessonTechnique(this._res);

  TRes _res;

  call({
    String? lessonId,
    String? techniqueId,
    Fragment$Technique? technique,
    int? order,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Technique<TRes> get technique =>
      CopyWith$Fragment$Technique.stub(_res);
}

const fragmentDefinitionLessonTechnique = FragmentDefinitionNode(
  name: NameNode(value: 'LessonTechnique'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'LessonTechnique'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'lessonId'),
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
      name: NameNode(value: 'order'),
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
const documentNodeFragmentLessonTechnique = DocumentNode(definitions: [
  fragmentDefinitionLessonTechnique,
  fragmentDefinitionTechnique,
]);

extension ClientExtension$Fragment$LessonTechnique on graphql.GraphQLClient {
  void writeFragment$LessonTechnique({
    required Fragment$LessonTechnique data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'LessonTechnique',
            document: documentNodeFragmentLessonTechnique,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$LessonTechnique? readFragment$LessonTechnique({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'LessonTechnique',
          document: documentNodeFragmentLessonTechnique,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$LessonTechnique.fromJson(result);
  }
}
