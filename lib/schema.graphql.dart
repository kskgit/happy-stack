class Input$AddItemsToPlaylistInput {
  factory Input$AddItemsToPlaylistInput({
    required String playlistId,
    required List<String> uris,
  }) =>
      Input$AddItemsToPlaylistInput._({
        r'playlistId': playlistId,
        r'uris': uris,
      });

  Input$AddItemsToPlaylistInput._(this._$data);

  factory Input$AddItemsToPlaylistInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$playlistId = data['playlistId'];
    result$data['playlistId'] = (l$playlistId as String);
    final l$uris = data['uris'];
    result$data['uris'] =
        (l$uris as List<dynamic>).map((e) => (e as String)).toList();
    return Input$AddItemsToPlaylistInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get playlistId => (_$data['playlistId'] as String);

  List<String> get uris => (_$data['uris'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$playlistId = playlistId;
    result$data['playlistId'] = l$playlistId;
    final l$uris = uris;
    result$data['uris'] = l$uris.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$AddItemsToPlaylistInput<Input$AddItemsToPlaylistInput>
      get copyWith => CopyWith$Input$AddItemsToPlaylistInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AddItemsToPlaylistInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$playlistId = playlistId;
    final lOther$playlistId = other.playlistId;
    if (l$playlistId != lOther$playlistId) {
      return false;
    }
    final l$uris = uris;
    final lOther$uris = other.uris;
    if (l$uris.length != lOther$uris.length) {
      return false;
    }
    for (int i = 0; i < l$uris.length; i++) {
      final l$uris$entry = l$uris[i];
      final lOther$uris$entry = lOther$uris[i];
      if (l$uris$entry != lOther$uris$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$playlistId = playlistId;
    final l$uris = uris;
    return Object.hashAll([
      l$playlistId,
      Object.hashAll(l$uris.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$AddItemsToPlaylistInput<TRes> {
  factory CopyWith$Input$AddItemsToPlaylistInput(
    Input$AddItemsToPlaylistInput instance,
    TRes Function(Input$AddItemsToPlaylistInput) then,
  ) = _CopyWithImpl$Input$AddItemsToPlaylistInput;

  factory CopyWith$Input$AddItemsToPlaylistInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AddItemsToPlaylistInput;

  TRes call({
    String? playlistId,
    List<String>? uris,
  });
}

class _CopyWithImpl$Input$AddItemsToPlaylistInput<TRes>
    implements CopyWith$Input$AddItemsToPlaylistInput<TRes> {
  _CopyWithImpl$Input$AddItemsToPlaylistInput(
    this._instance,
    this._then,
  );

  final Input$AddItemsToPlaylistInput _instance;

  final TRes Function(Input$AddItemsToPlaylistInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? playlistId = _undefined,
    Object? uris = _undefined,
  }) =>
      _then(Input$AddItemsToPlaylistInput._({
        ..._instance._$data,
        if (playlistId != _undefined && playlistId != null)
          'playlistId': (playlistId as String),
        if (uris != _undefined && uris != null) 'uris': (uris as List<String>),
      }));
}

class _CopyWithStubImpl$Input$AddItemsToPlaylistInput<TRes>
    implements CopyWith$Input$AddItemsToPlaylistInput<TRes> {
  _CopyWithStubImpl$Input$AddItemsToPlaylistInput(this._res);

  TRes _res;

  call({
    String? playlistId,
    List<String>? uris,
  }) =>
      _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
