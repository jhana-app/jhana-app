// GENERATED FILE, DO NOT MODIFY
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$LessonAudio {
  Fragment$LessonAudio({
    required this.id,
    required this.audiourl,
    required this.duration,
    this.$__typename = 'LessonAudio',
  });

  factory Fragment$LessonAudio.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$audiourl = json['audiourl'];
    final l$duration = json['duration'];
    final l$$__typename = json['__typename'];
    return Fragment$LessonAudio(
      id: (l$id as String),
      audiourl: (l$audiourl as String),
      duration: (l$duration as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String audiourl;

  final int duration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$audiourl = audiourl;
    _resultData['audiourl'] = l$audiourl;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$audiourl = audiourl;
    final l$duration = duration;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$audiourl,
      l$duration,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$LessonAudio) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$audiourl = audiourl;
    final lOther$audiourl = other.audiourl;
    if (l$audiourl != lOther$audiourl) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
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

extension UtilityExtension$Fragment$LessonAudio on Fragment$LessonAudio {
  CopyWith$Fragment$LessonAudio<Fragment$LessonAudio> get copyWith =>
      CopyWith$Fragment$LessonAudio(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$LessonAudio<TRes> {
  factory CopyWith$Fragment$LessonAudio(
    Fragment$LessonAudio instance,
    TRes Function(Fragment$LessonAudio) then,
  ) = _CopyWithImpl$Fragment$LessonAudio;

  factory CopyWith$Fragment$LessonAudio.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LessonAudio;

  TRes call({
    String? id,
    String? audiourl,
    int? duration,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LessonAudio<TRes>
    implements CopyWith$Fragment$LessonAudio<TRes> {
  _CopyWithImpl$Fragment$LessonAudio(
    this._instance,
    this._then,
  );

  final Fragment$LessonAudio _instance;

  final TRes Function(Fragment$LessonAudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? audiourl = _undefined,
    Object? duration = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$LessonAudio(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        audiourl: audiourl == _undefined || audiourl == null
            ? _instance.audiourl
            : (audiourl as String),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$LessonAudio<TRes>
    implements CopyWith$Fragment$LessonAudio<TRes> {
  _CopyWithStubImpl$Fragment$LessonAudio(this._res);

  TRes _res;

  call({
    String? id,
    String? audiourl,
    int? duration,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionLessonAudio = FragmentDefinitionNode(
  name: NameNode(value: 'LessonAudio'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'LessonAudio'),
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
      name: NameNode(value: 'audiourl'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentLessonAudio = DocumentNode(definitions: [
  fragmentDefinitionLessonAudio,
]);

extension ClientExtension$Fragment$LessonAudio on graphql.GraphQLClient {
  void writeFragment$LessonAudio({
    required Fragment$LessonAudio data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'LessonAudio',
            document: documentNodeFragmentLessonAudio,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$LessonAudio? readFragment$LessonAudio({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'LessonAudio',
          document: documentNodeFragmentLessonAudio,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$LessonAudio.fromJson(result);
  }
}
