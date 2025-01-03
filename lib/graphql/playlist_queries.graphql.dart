import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Query$GetFeaturedPlaylists {
  Query$GetFeaturedPlaylists({
    required this.featuredPlaylists,
    this.$__typename = 'Query',
  });

  factory Query$GetFeaturedPlaylists.fromJson(Map<String, dynamic> json) {
    final l$featuredPlaylists = json['featuredPlaylists'];
    final l$$__typename = json['__typename'];
    return Query$GetFeaturedPlaylists(
      featuredPlaylists: (l$featuredPlaylists as List<dynamic>)
          .map((e) => Query$GetFeaturedPlaylists$featuredPlaylists.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetFeaturedPlaylists$featuredPlaylists> featuredPlaylists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$featuredPlaylists = featuredPlaylists;
    _resultData['featuredPlaylists'] =
        l$featuredPlaylists.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$featuredPlaylists = featuredPlaylists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$featuredPlaylists.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFeaturedPlaylists ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$featuredPlaylists = featuredPlaylists;
    final lOther$featuredPlaylists = other.featuredPlaylists;
    if (l$featuredPlaylists.length != lOther$featuredPlaylists.length) {
      return false;
    }
    for (int i = 0; i < l$featuredPlaylists.length; i++) {
      final l$featuredPlaylists$entry = l$featuredPlaylists[i];
      final lOther$featuredPlaylists$entry = lOther$featuredPlaylists[i];
      if (l$featuredPlaylists$entry != lOther$featuredPlaylists$entry) {
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

extension UtilityExtension$Query$GetFeaturedPlaylists
    on Query$GetFeaturedPlaylists {
  CopyWith$Query$GetFeaturedPlaylists<Query$GetFeaturedPlaylists>
      get copyWith => CopyWith$Query$GetFeaturedPlaylists(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFeaturedPlaylists<TRes> {
  factory CopyWith$Query$GetFeaturedPlaylists(
    Query$GetFeaturedPlaylists instance,
    TRes Function(Query$GetFeaturedPlaylists) then,
  ) = _CopyWithImpl$Query$GetFeaturedPlaylists;

  factory CopyWith$Query$GetFeaturedPlaylists.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFeaturedPlaylists;

  TRes call({
    List<Query$GetFeaturedPlaylists$featuredPlaylists>? featuredPlaylists,
    String? $__typename,
  });
  TRes featuredPlaylists(
      Iterable<Query$GetFeaturedPlaylists$featuredPlaylists> Function(
              Iterable<
                  CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists<
                      Query$GetFeaturedPlaylists$featuredPlaylists>>)
          _fn);
}

class _CopyWithImpl$Query$GetFeaturedPlaylists<TRes>
    implements CopyWith$Query$GetFeaturedPlaylists<TRes> {
  _CopyWithImpl$Query$GetFeaturedPlaylists(
    this._instance,
    this._then,
  );

  final Query$GetFeaturedPlaylists _instance;

  final TRes Function(Query$GetFeaturedPlaylists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? featuredPlaylists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFeaturedPlaylists(
        featuredPlaylists:
            featuredPlaylists == _undefined || featuredPlaylists == null
                ? _instance.featuredPlaylists
                : (featuredPlaylists
                    as List<Query$GetFeaturedPlaylists$featuredPlaylists>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes featuredPlaylists(
          Iterable<Query$GetFeaturedPlaylists$featuredPlaylists> Function(
                  Iterable<
                      CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists<
                          Query$GetFeaturedPlaylists$featuredPlaylists>>)
              _fn) =>
      call(
          featuredPlaylists: _fn(_instance.featuredPlaylists
              .map((e) => CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFeaturedPlaylists<TRes>
    implements CopyWith$Query$GetFeaturedPlaylists<TRes> {
  _CopyWithStubImpl$Query$GetFeaturedPlaylists(this._res);

  TRes _res;

  call({
    List<Query$GetFeaturedPlaylists$featuredPlaylists>? featuredPlaylists,
    String? $__typename,
  }) =>
      _res;

  featuredPlaylists(_fn) => _res;
}

const documentNodeQueryGetFeaturedPlaylists = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFeaturedPlaylists'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'featuredPlaylists'),
        alias: null,
        arguments: [],
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tracks'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'durationMs'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'explicit'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'uri'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetFeaturedPlaylists$featuredPlaylists {
  Query$GetFeaturedPlaylists$featuredPlaylists({
    required this.id,
    required this.name,
    this.description,
    this.tracks,
    this.$__typename = 'Playlist',
  });

  factory Query$GetFeaturedPlaylists$featuredPlaylists.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$tracks = json['tracks'];
    final l$$__typename = json['__typename'];
    return Query$GetFeaturedPlaylists$featuredPlaylists(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      tracks: (l$tracks as List<dynamic>?)
          ?.map((e) =>
              Query$GetFeaturedPlaylists$featuredPlaylists$tracks.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final List<Query$GetFeaturedPlaylists$featuredPlaylists$tracks>? tracks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$tracks = tracks;
    _resultData['tracks'] = l$tracks?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$tracks = tracks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$tracks == null ? null : Object.hashAll(l$tracks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFeaturedPlaylists$featuredPlaylists ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$tracks = tracks;
    final lOther$tracks = other.tracks;
    if (l$tracks != null && lOther$tracks != null) {
      if (l$tracks.length != lOther$tracks.length) {
        return false;
      }
      for (int i = 0; i < l$tracks.length; i++) {
        final l$tracks$entry = l$tracks[i];
        final lOther$tracks$entry = lOther$tracks[i];
        if (l$tracks$entry != lOther$tracks$entry) {
          return false;
        }
      }
    } else if (l$tracks != lOther$tracks) {
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

extension UtilityExtension$Query$GetFeaturedPlaylists$featuredPlaylists
    on Query$GetFeaturedPlaylists$featuredPlaylists {
  CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists<
          Query$GetFeaturedPlaylists$featuredPlaylists>
      get copyWith => CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists<TRes> {
  factory CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists(
    Query$GetFeaturedPlaylists$featuredPlaylists instance,
    TRes Function(Query$GetFeaturedPlaylists$featuredPlaylists) then,
  ) = _CopyWithImpl$Query$GetFeaturedPlaylists$featuredPlaylists;

  factory CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFeaturedPlaylists$featuredPlaylists;

  TRes call({
    String? id,
    String? name,
    String? description,
    List<Query$GetFeaturedPlaylists$featuredPlaylists$tracks>? tracks,
    String? $__typename,
  });
  TRes tracks(
      Iterable<Query$GetFeaturedPlaylists$featuredPlaylists$tracks>? Function(
              Iterable<
                  CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists$tracks<
                      Query$GetFeaturedPlaylists$featuredPlaylists$tracks>>?)
          _fn);
}

class _CopyWithImpl$Query$GetFeaturedPlaylists$featuredPlaylists<TRes>
    implements CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists<TRes> {
  _CopyWithImpl$Query$GetFeaturedPlaylists$featuredPlaylists(
    this._instance,
    this._then,
  );

  final Query$GetFeaturedPlaylists$featuredPlaylists _instance;

  final TRes Function(Query$GetFeaturedPlaylists$featuredPlaylists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? tracks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFeaturedPlaylists$featuredPlaylists(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        tracks: tracks == _undefined
            ? _instance.tracks
            : (tracks
                as List<Query$GetFeaturedPlaylists$featuredPlaylists$tracks>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes tracks(
          Iterable<Query$GetFeaturedPlaylists$featuredPlaylists$tracks>? Function(
                  Iterable<
                      CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists$tracks<
                          Query$GetFeaturedPlaylists$featuredPlaylists$tracks>>?)
              _fn) =>
      call(
          tracks: _fn(_instance.tracks?.map((e) =>
              CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists$tracks(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$GetFeaturedPlaylists$featuredPlaylists<TRes>
    implements CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists<TRes> {
  _CopyWithStubImpl$Query$GetFeaturedPlaylists$featuredPlaylists(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    List<Query$GetFeaturedPlaylists$featuredPlaylists$tracks>? tracks,
    String? $__typename,
  }) =>
      _res;

  tracks(_fn) => _res;
}

class Query$GetFeaturedPlaylists$featuredPlaylists$tracks {
  Query$GetFeaturedPlaylists$featuredPlaylists$tracks({
    required this.id,
    required this.name,
    required this.durationMs,
    required this.explicit,
    required this.uri,
    this.$__typename = 'Track',
  });

  factory Query$GetFeaturedPlaylists$featuredPlaylists$tracks.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$durationMs = json['durationMs'];
    final l$explicit = json['explicit'];
    final l$uri = json['uri'];
    final l$$__typename = json['__typename'];
    return Query$GetFeaturedPlaylists$featuredPlaylists$tracks(
      id: (l$id as String),
      name: (l$name as String),
      durationMs: (l$durationMs as int),
      explicit: (l$explicit as bool),
      uri: (l$uri as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int durationMs;

  final bool explicit;

  final String uri;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$durationMs = durationMs;
    _resultData['durationMs'] = l$durationMs;
    final l$explicit = explicit;
    _resultData['explicit'] = l$explicit;
    final l$uri = uri;
    _resultData['uri'] = l$uri;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$durationMs = durationMs;
    final l$explicit = explicit;
    final l$uri = uri;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$durationMs,
      l$explicit,
      l$uri,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFeaturedPlaylists$featuredPlaylists$tracks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$durationMs = durationMs;
    final lOther$durationMs = other.durationMs;
    if (l$durationMs != lOther$durationMs) {
      return false;
    }
    final l$explicit = explicit;
    final lOther$explicit = other.explicit;
    if (l$explicit != lOther$explicit) {
      return false;
    }
    final l$uri = uri;
    final lOther$uri = other.uri;
    if (l$uri != lOther$uri) {
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

extension UtilityExtension$Query$GetFeaturedPlaylists$featuredPlaylists$tracks
    on Query$GetFeaturedPlaylists$featuredPlaylists$tracks {
  CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists$tracks<
          Query$GetFeaturedPlaylists$featuredPlaylists$tracks>
      get copyWith =>
          CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists$tracks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists$tracks<
    TRes> {
  factory CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists$tracks(
    Query$GetFeaturedPlaylists$featuredPlaylists$tracks instance,
    TRes Function(Query$GetFeaturedPlaylists$featuredPlaylists$tracks) then,
  ) = _CopyWithImpl$Query$GetFeaturedPlaylists$featuredPlaylists$tracks;

  factory CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists$tracks.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetFeaturedPlaylists$featuredPlaylists$tracks;

  TRes call({
    String? id,
    String? name,
    int? durationMs,
    bool? explicit,
    String? uri,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFeaturedPlaylists$featuredPlaylists$tracks<TRes>
    implements
        CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists$tracks<TRes> {
  _CopyWithImpl$Query$GetFeaturedPlaylists$featuredPlaylists$tracks(
    this._instance,
    this._then,
  );

  final Query$GetFeaturedPlaylists$featuredPlaylists$tracks _instance;

  final TRes Function(Query$GetFeaturedPlaylists$featuredPlaylists$tracks)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? durationMs = _undefined,
    Object? explicit = _undefined,
    Object? uri = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFeaturedPlaylists$featuredPlaylists$tracks(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        durationMs: durationMs == _undefined || durationMs == null
            ? _instance.durationMs
            : (durationMs as int),
        explicit: explicit == _undefined || explicit == null
            ? _instance.explicit
            : (explicit as bool),
        uri: uri == _undefined || uri == null ? _instance.uri : (uri as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFeaturedPlaylists$featuredPlaylists$tracks<
        TRes>
    implements
        CopyWith$Query$GetFeaturedPlaylists$featuredPlaylists$tracks<TRes> {
  _CopyWithStubImpl$Query$GetFeaturedPlaylists$featuredPlaylists$tracks(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? durationMs,
    bool? explicit,
    String? uri,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetPlaylist {
  factory Variables$Query$GetPlaylist({required String id}) =>
      Variables$Query$GetPlaylist._({
        r'id': id,
      });

  Variables$Query$GetPlaylist._(this._$data);

  factory Variables$Query$GetPlaylist.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetPlaylist._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetPlaylist<Variables$Query$GetPlaylist>
      get copyWith => CopyWith$Variables$Query$GetPlaylist(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetPlaylist ||
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

abstract class CopyWith$Variables$Query$GetPlaylist<TRes> {
  factory CopyWith$Variables$Query$GetPlaylist(
    Variables$Query$GetPlaylist instance,
    TRes Function(Variables$Query$GetPlaylist) then,
  ) = _CopyWithImpl$Variables$Query$GetPlaylist;

  factory CopyWith$Variables$Query$GetPlaylist.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPlaylist;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetPlaylist<TRes>
    implements CopyWith$Variables$Query$GetPlaylist<TRes> {
  _CopyWithImpl$Variables$Query$GetPlaylist(
    this._instance,
    this._then,
  );

  final Variables$Query$GetPlaylist _instance;

  final TRes Function(Variables$Query$GetPlaylist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetPlaylist._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetPlaylist<TRes>
    implements CopyWith$Variables$Query$GetPlaylist<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPlaylist(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetPlaylist {
  Query$GetPlaylist({
    this.playlist,
    this.$__typename = 'Query',
  });

  factory Query$GetPlaylist.fromJson(Map<String, dynamic> json) {
    final l$playlist = json['playlist'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist(
      playlist: l$playlist == null
          ? null
          : Query$GetPlaylist$playlist.fromJson(
              (l$playlist as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPlaylist$playlist? playlist;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$playlist = playlist;
    _resultData['playlist'] = l$playlist?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$playlist = playlist;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$playlist,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaylist || runtimeType != other.runtimeType) {
      return false;
    }
    final l$playlist = playlist;
    final lOther$playlist = other.playlist;
    if (l$playlist != lOther$playlist) {
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

extension UtilityExtension$Query$GetPlaylist on Query$GetPlaylist {
  CopyWith$Query$GetPlaylist<Query$GetPlaylist> get copyWith =>
      CopyWith$Query$GetPlaylist(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPlaylist<TRes> {
  factory CopyWith$Query$GetPlaylist(
    Query$GetPlaylist instance,
    TRes Function(Query$GetPlaylist) then,
  ) = _CopyWithImpl$Query$GetPlaylist;

  factory CopyWith$Query$GetPlaylist.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist;

  TRes call({
    Query$GetPlaylist$playlist? playlist,
    String? $__typename,
  });
  CopyWith$Query$GetPlaylist$playlist<TRes> get playlist;
}

class _CopyWithImpl$Query$GetPlaylist<TRes>
    implements CopyWith$Query$GetPlaylist<TRes> {
  _CopyWithImpl$Query$GetPlaylist(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist _instance;

  final TRes Function(Query$GetPlaylist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? playlist = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist(
        playlist: playlist == _undefined
            ? _instance.playlist
            : (playlist as Query$GetPlaylist$playlist?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPlaylist$playlist<TRes> get playlist {
    final local$playlist = _instance.playlist;
    return local$playlist == null
        ? CopyWith$Query$GetPlaylist$playlist.stub(_then(_instance))
        : CopyWith$Query$GetPlaylist$playlist(
            local$playlist, (e) => call(playlist: e));
  }
}

class _CopyWithStubImpl$Query$GetPlaylist<TRes>
    implements CopyWith$Query$GetPlaylist<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist(this._res);

  TRes _res;

  call({
    Query$GetPlaylist$playlist? playlist,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPlaylist$playlist<TRes> get playlist =>
      CopyWith$Query$GetPlaylist$playlist.stub(_res);
}

const documentNodeQueryGetPlaylist = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPlaylist'),
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
        name: NameNode(value: 'playlist'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'tracks'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'durationMs'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'explicit'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'uri'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetPlaylist$playlist {
  Query$GetPlaylist$playlist({
    required this.id,
    required this.name,
    this.description,
    this.tracks,
    this.$__typename = 'Playlist',
  });

  factory Query$GetPlaylist$playlist.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$tracks = json['tracks'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      tracks: (l$tracks as List<dynamic>?)
          ?.map((e) => Query$GetPlaylist$playlist$tracks.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final List<Query$GetPlaylist$playlist$tracks>? tracks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$tracks = tracks;
    _resultData['tracks'] = l$tracks?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$tracks = tracks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$tracks == null ? null : Object.hashAll(l$tracks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaylist$playlist ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$tracks = tracks;
    final lOther$tracks = other.tracks;
    if (l$tracks != null && lOther$tracks != null) {
      if (l$tracks.length != lOther$tracks.length) {
        return false;
      }
      for (int i = 0; i < l$tracks.length; i++) {
        final l$tracks$entry = l$tracks[i];
        final lOther$tracks$entry = lOther$tracks[i];
        if (l$tracks$entry != lOther$tracks$entry) {
          return false;
        }
      }
    } else if (l$tracks != lOther$tracks) {
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

extension UtilityExtension$Query$GetPlaylist$playlist
    on Query$GetPlaylist$playlist {
  CopyWith$Query$GetPlaylist$playlist<Query$GetPlaylist$playlist>
      get copyWith => CopyWith$Query$GetPlaylist$playlist(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist<TRes> {
  factory CopyWith$Query$GetPlaylist$playlist(
    Query$GetPlaylist$playlist instance,
    TRes Function(Query$GetPlaylist$playlist) then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist;

  factory CopyWith$Query$GetPlaylist$playlist.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist;

  TRes call({
    String? id,
    String? name,
    String? description,
    List<Query$GetPlaylist$playlist$tracks>? tracks,
    String? $__typename,
  });
  TRes tracks(
      Iterable<Query$GetPlaylist$playlist$tracks>? Function(
              Iterable<
                  CopyWith$Query$GetPlaylist$playlist$tracks<
                      Query$GetPlaylist$playlist$tracks>>?)
          _fn);
}

class _CopyWithImpl$Query$GetPlaylist$playlist<TRes>
    implements CopyWith$Query$GetPlaylist$playlist<TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist _instance;

  final TRes Function(Query$GetPlaylist$playlist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? tracks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        tracks: tracks == _undefined
            ? _instance.tracks
            : (tracks as List<Query$GetPlaylist$playlist$tracks>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes tracks(
          Iterable<Query$GetPlaylist$playlist$tracks>? Function(
                  Iterable<
                      CopyWith$Query$GetPlaylist$playlist$tracks<
                          Query$GetPlaylist$playlist$tracks>>?)
              _fn) =>
      call(
          tracks: _fn(_instance.tracks
              ?.map((e) => CopyWith$Query$GetPlaylist$playlist$tracks(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist<TRes>
    implements CopyWith$Query$GetPlaylist$playlist<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    List<Query$GetPlaylist$playlist$tracks>? tracks,
    String? $__typename,
  }) =>
      _res;

  tracks(_fn) => _res;
}

class Query$GetPlaylist$playlist$tracks {
  Query$GetPlaylist$playlist$tracks({
    required this.id,
    required this.name,
    required this.durationMs,
    required this.explicit,
    required this.uri,
    this.$__typename = 'Track',
  });

  factory Query$GetPlaylist$playlist$tracks.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$durationMs = json['durationMs'];
    final l$explicit = json['explicit'];
    final l$uri = json['uri'];
    final l$$__typename = json['__typename'];
    return Query$GetPlaylist$playlist$tracks(
      id: (l$id as String),
      name: (l$name as String),
      durationMs: (l$durationMs as int),
      explicit: (l$explicit as bool),
      uri: (l$uri as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int durationMs;

  final bool explicit;

  final String uri;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$durationMs = durationMs;
    _resultData['durationMs'] = l$durationMs;
    final l$explicit = explicit;
    _resultData['explicit'] = l$explicit;
    final l$uri = uri;
    _resultData['uri'] = l$uri;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$durationMs = durationMs;
    final l$explicit = explicit;
    final l$uri = uri;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$durationMs,
      l$explicit,
      l$uri,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPlaylist$playlist$tracks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$durationMs = durationMs;
    final lOther$durationMs = other.durationMs;
    if (l$durationMs != lOther$durationMs) {
      return false;
    }
    final l$explicit = explicit;
    final lOther$explicit = other.explicit;
    if (l$explicit != lOther$explicit) {
      return false;
    }
    final l$uri = uri;
    final lOther$uri = other.uri;
    if (l$uri != lOther$uri) {
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

extension UtilityExtension$Query$GetPlaylist$playlist$tracks
    on Query$GetPlaylist$playlist$tracks {
  CopyWith$Query$GetPlaylist$playlist$tracks<Query$GetPlaylist$playlist$tracks>
      get copyWith => CopyWith$Query$GetPlaylist$playlist$tracks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPlaylist$playlist$tracks<TRes> {
  factory CopyWith$Query$GetPlaylist$playlist$tracks(
    Query$GetPlaylist$playlist$tracks instance,
    TRes Function(Query$GetPlaylist$playlist$tracks) then,
  ) = _CopyWithImpl$Query$GetPlaylist$playlist$tracks;

  factory CopyWith$Query$GetPlaylist$playlist$tracks.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPlaylist$playlist$tracks;

  TRes call({
    String? id,
    String? name,
    int? durationMs,
    bool? explicit,
    String? uri,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPlaylist$playlist$tracks<TRes>
    implements CopyWith$Query$GetPlaylist$playlist$tracks<TRes> {
  _CopyWithImpl$Query$GetPlaylist$playlist$tracks(
    this._instance,
    this._then,
  );

  final Query$GetPlaylist$playlist$tracks _instance;

  final TRes Function(Query$GetPlaylist$playlist$tracks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? durationMs = _undefined,
    Object? explicit = _undefined,
    Object? uri = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPlaylist$playlist$tracks(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        durationMs: durationMs == _undefined || durationMs == null
            ? _instance.durationMs
            : (durationMs as int),
        explicit: explicit == _undefined || explicit == null
            ? _instance.explicit
            : (explicit as bool),
        uri: uri == _undefined || uri == null ? _instance.uri : (uri as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPlaylist$playlist$tracks<TRes>
    implements CopyWith$Query$GetPlaylist$playlist$tracks<TRes> {
  _CopyWithStubImpl$Query$GetPlaylist$playlist$tracks(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? durationMs,
    bool? explicit,
    String? uri,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$AddItemsToPlaylist {
  factory Variables$Mutation$AddItemsToPlaylist(
          {required Input$AddItemsToPlaylistInput input}) =>
      Variables$Mutation$AddItemsToPlaylist._({
        r'input': input,
      });

  Variables$Mutation$AddItemsToPlaylist._(this._$data);

  factory Variables$Mutation$AddItemsToPlaylist.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AddItemsToPlaylistInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$AddItemsToPlaylist._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AddItemsToPlaylistInput get input =>
      (_$data['input'] as Input$AddItemsToPlaylistInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddItemsToPlaylist<
          Variables$Mutation$AddItemsToPlaylist>
      get copyWith => CopyWith$Variables$Mutation$AddItemsToPlaylist(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddItemsToPlaylist ||
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

abstract class CopyWith$Variables$Mutation$AddItemsToPlaylist<TRes> {
  factory CopyWith$Variables$Mutation$AddItemsToPlaylist(
    Variables$Mutation$AddItemsToPlaylist instance,
    TRes Function(Variables$Mutation$AddItemsToPlaylist) then,
  ) = _CopyWithImpl$Variables$Mutation$AddItemsToPlaylist;

  factory CopyWith$Variables$Mutation$AddItemsToPlaylist.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddItemsToPlaylist;

  TRes call({Input$AddItemsToPlaylistInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddItemsToPlaylist<TRes>
    implements CopyWith$Variables$Mutation$AddItemsToPlaylist<TRes> {
  _CopyWithImpl$Variables$Mutation$AddItemsToPlaylist(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddItemsToPlaylist _instance;

  final TRes Function(Variables$Mutation$AddItemsToPlaylist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$AddItemsToPlaylist._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$AddItemsToPlaylistInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AddItemsToPlaylist<TRes>
    implements CopyWith$Variables$Mutation$AddItemsToPlaylist<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddItemsToPlaylist(this._res);

  TRes _res;

  call({Input$AddItemsToPlaylistInput? input}) => _res;
}

class Mutation$AddItemsToPlaylist {
  Mutation$AddItemsToPlaylist({
    required this.addItemsToPlaylist,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddItemsToPlaylist.fromJson(Map<String, dynamic> json) {
    final l$addItemsToPlaylist = json['addItemsToPlaylist'];
    final l$$__typename = json['__typename'];
    return Mutation$AddItemsToPlaylist(
      addItemsToPlaylist:
          Mutation$AddItemsToPlaylist$addItemsToPlaylist.fromJson(
              (l$addItemsToPlaylist as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddItemsToPlaylist$addItemsToPlaylist addItemsToPlaylist;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addItemsToPlaylist = addItemsToPlaylist;
    _resultData['addItemsToPlaylist'] = l$addItemsToPlaylist.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addItemsToPlaylist = addItemsToPlaylist;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$addItemsToPlaylist,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddItemsToPlaylist ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addItemsToPlaylist = addItemsToPlaylist;
    final lOther$addItemsToPlaylist = other.addItemsToPlaylist;
    if (l$addItemsToPlaylist != lOther$addItemsToPlaylist) {
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

extension UtilityExtension$Mutation$AddItemsToPlaylist
    on Mutation$AddItemsToPlaylist {
  CopyWith$Mutation$AddItemsToPlaylist<Mutation$AddItemsToPlaylist>
      get copyWith => CopyWith$Mutation$AddItemsToPlaylist(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddItemsToPlaylist<TRes> {
  factory CopyWith$Mutation$AddItemsToPlaylist(
    Mutation$AddItemsToPlaylist instance,
    TRes Function(Mutation$AddItemsToPlaylist) then,
  ) = _CopyWithImpl$Mutation$AddItemsToPlaylist;

  factory CopyWith$Mutation$AddItemsToPlaylist.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddItemsToPlaylist;

  TRes call({
    Mutation$AddItemsToPlaylist$addItemsToPlaylist? addItemsToPlaylist,
    String? $__typename,
  });
  CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist<TRes>
      get addItemsToPlaylist;
}

class _CopyWithImpl$Mutation$AddItemsToPlaylist<TRes>
    implements CopyWith$Mutation$AddItemsToPlaylist<TRes> {
  _CopyWithImpl$Mutation$AddItemsToPlaylist(
    this._instance,
    this._then,
  );

  final Mutation$AddItemsToPlaylist _instance;

  final TRes Function(Mutation$AddItemsToPlaylist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addItemsToPlaylist = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddItemsToPlaylist(
        addItemsToPlaylist:
            addItemsToPlaylist == _undefined || addItemsToPlaylist == null
                ? _instance.addItemsToPlaylist
                : (addItemsToPlaylist
                    as Mutation$AddItemsToPlaylist$addItemsToPlaylist),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist<TRes>
      get addItemsToPlaylist {
    final local$addItemsToPlaylist = _instance.addItemsToPlaylist;
    return CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist(
        local$addItemsToPlaylist, (e) => call(addItemsToPlaylist: e));
  }
}

class _CopyWithStubImpl$Mutation$AddItemsToPlaylist<TRes>
    implements CopyWith$Mutation$AddItemsToPlaylist<TRes> {
  _CopyWithStubImpl$Mutation$AddItemsToPlaylist(this._res);

  TRes _res;

  call({
    Mutation$AddItemsToPlaylist$addItemsToPlaylist? addItemsToPlaylist,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist<TRes>
      get addItemsToPlaylist =>
          CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist.stub(_res);
}

const documentNodeMutationAddItemsToPlaylist = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AddItemsToPlaylist'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'AddItemsToPlaylistInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addItemsToPlaylist'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'success'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'playlist'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'tracks'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'durationMs'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'explicit'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'uri'),
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
]);

class Mutation$AddItemsToPlaylist$addItemsToPlaylist {
  Mutation$AddItemsToPlaylist$addItemsToPlaylist({
    required this.code,
    required this.success,
    required this.message,
    this.playlist,
    this.$__typename = 'AddItemsToPlaylistPayload',
  });

  factory Mutation$AddItemsToPlaylist$addItemsToPlaylist.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$success = json['success'];
    final l$message = json['message'];
    final l$playlist = json['playlist'];
    final l$$__typename = json['__typename'];
    return Mutation$AddItemsToPlaylist$addItemsToPlaylist(
      code: (l$code as int),
      success: (l$success as bool),
      message: (l$message as String),
      playlist: l$playlist == null
          ? null
          : Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist.fromJson(
              (l$playlist as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int code;

  final bool success;

  final String message;

  final Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist? playlist;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$success = success;
    _resultData['success'] = l$success;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$playlist = playlist;
    _resultData['playlist'] = l$playlist?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$success = success;
    final l$message = message;
    final l$playlist = playlist;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$success,
      l$message,
      l$playlist,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddItemsToPlaylist$addItemsToPlaylist ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$success = success;
    final lOther$success = other.success;
    if (l$success != lOther$success) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$playlist = playlist;
    final lOther$playlist = other.playlist;
    if (l$playlist != lOther$playlist) {
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

extension UtilityExtension$Mutation$AddItemsToPlaylist$addItemsToPlaylist
    on Mutation$AddItemsToPlaylist$addItemsToPlaylist {
  CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist<
          Mutation$AddItemsToPlaylist$addItemsToPlaylist>
      get copyWith => CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist<TRes> {
  factory CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist(
    Mutation$AddItemsToPlaylist$addItemsToPlaylist instance,
    TRes Function(Mutation$AddItemsToPlaylist$addItemsToPlaylist) then,
  ) = _CopyWithImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist;

  factory CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist;

  TRes call({
    int? code,
    bool? success,
    String? message,
    Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist? playlist,
    String? $__typename,
  });
  CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist<TRes>
      get playlist;
}

class _CopyWithImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist<TRes>
    implements CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist<TRes> {
  _CopyWithImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist(
    this._instance,
    this._then,
  );

  final Mutation$AddItemsToPlaylist$addItemsToPlaylist _instance;

  final TRes Function(Mutation$AddItemsToPlaylist$addItemsToPlaylist) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? success = _undefined,
    Object? message = _undefined,
    Object? playlist = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddItemsToPlaylist$addItemsToPlaylist(
        code:
            code == _undefined || code == null ? _instance.code : (code as int),
        success: success == _undefined || success == null
            ? _instance.success
            : (success as bool),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        playlist: playlist == _undefined
            ? _instance.playlist
            : (playlist
                as Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist<TRes>
      get playlist {
    final local$playlist = _instance.playlist;
    return local$playlist == null
        ? CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist.stub(
            _then(_instance))
        : CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist(
            local$playlist, (e) => call(playlist: e));
  }
}

class _CopyWithStubImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist<TRes>
    implements CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist<TRes> {
  _CopyWithStubImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist(this._res);

  TRes _res;

  call({
    int? code,
    bool? success,
    String? message,
    Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist? playlist,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist<TRes>
      get playlist =>
          CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist.stub(
              _res);
}

class Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist {
  Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist({
    required this.id,
    required this.name,
    this.description,
    this.tracks,
    this.$__typename = 'Playlist',
  });

  factory Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$tracks = json['tracks'];
    final l$$__typename = json['__typename'];
    return Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      tracks: (l$tracks as List<dynamic>?)
          ?.map((e) =>
              Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final List<Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks>?
      tracks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$tracks = tracks;
    _resultData['tracks'] = l$tracks?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$tracks = tracks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$tracks == null ? null : Object.hashAll(l$tracks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$tracks = tracks;
    final lOther$tracks = other.tracks;
    if (l$tracks != null && lOther$tracks != null) {
      if (l$tracks.length != lOther$tracks.length) {
        return false;
      }
      for (int i = 0; i < l$tracks.length; i++) {
        final l$tracks$entry = l$tracks[i];
        final lOther$tracks$entry = lOther$tracks[i];
        if (l$tracks$entry != lOther$tracks$entry) {
          return false;
        }
      }
    } else if (l$tracks != lOther$tracks) {
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

extension UtilityExtension$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist
    on Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist {
  CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist<
          Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist>
      get copyWith =>
          CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist<
    TRes> {
  factory CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist(
    Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist instance,
    TRes Function(Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist) then,
  ) = _CopyWithImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist;

  factory CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist;

  TRes call({
    String? id,
    String? name,
    String? description,
    List<Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks>?
        tracks,
    String? $__typename,
  });
  TRes tracks(
      Iterable<Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks>? Function(
              Iterable<
                  CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks<
                      Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks>>?)
          _fn);
}

class _CopyWithImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist<
        TRes>
    implements
        CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist<TRes> {
  _CopyWithImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist(
    this._instance,
    this._then,
  );

  final Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist _instance;

  final TRes Function(Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? tracks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        tracks: tracks == _undefined
            ? _instance.tracks
            : (tracks as List<
                Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes tracks(
          Iterable<Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks>? Function(
                  Iterable<
                      CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks<
                          Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks>>?)
              _fn) =>
      call(
          tracks: _fn(_instance.tracks?.map((e) =>
              CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist<
        TRes>
    implements
        CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist<TRes> {
  _CopyWithStubImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    List<Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks>?
        tracks,
    String? $__typename,
  }) =>
      _res;

  tracks(_fn) => _res;
}

class Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks {
  Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks({
    required this.id,
    required this.name,
    required this.durationMs,
    required this.explicit,
    required this.uri,
    this.$__typename = 'Track',
  });

  factory Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$durationMs = json['durationMs'];
    final l$explicit = json['explicit'];
    final l$uri = json['uri'];
    final l$$__typename = json['__typename'];
    return Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks(
      id: (l$id as String),
      name: (l$name as String),
      durationMs: (l$durationMs as int),
      explicit: (l$explicit as bool),
      uri: (l$uri as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int durationMs;

  final bool explicit;

  final String uri;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$durationMs = durationMs;
    _resultData['durationMs'] = l$durationMs;
    final l$explicit = explicit;
    _resultData['explicit'] = l$explicit;
    final l$uri = uri;
    _resultData['uri'] = l$uri;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$durationMs = durationMs;
    final l$explicit = explicit;
    final l$uri = uri;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$durationMs,
      l$explicit,
      l$uri,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$durationMs = durationMs;
    final lOther$durationMs = other.durationMs;
    if (l$durationMs != lOther$durationMs) {
      return false;
    }
    final l$explicit = explicit;
    final lOther$explicit = other.explicit;
    if (l$explicit != lOther$explicit) {
      return false;
    }
    final l$uri = uri;
    final lOther$uri = other.uri;
    if (l$uri != lOther$uri) {
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

extension UtilityExtension$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks
    on Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks {
  CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks<
          Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks>
      get copyWith =>
          CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks<
    TRes> {
  factory CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks(
    Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks instance,
    TRes Function(
            Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks)
        then,
  ) = _CopyWithImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks;

  factory CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks;

  TRes call({
    String? id,
    String? name,
    int? durationMs,
    bool? explicit,
    String? uri,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks<
        TRes>
    implements
        CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks<
            TRes> {
  _CopyWithImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks(
    this._instance,
    this._then,
  );

  final Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks
      _instance;

  final TRes Function(
      Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? durationMs = _undefined,
    Object? explicit = _undefined,
    Object? uri = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        durationMs: durationMs == _undefined || durationMs == null
            ? _instance.durationMs
            : (durationMs as int),
        explicit: explicit == _undefined || explicit == null
            ? _instance.explicit
            : (explicit as bool),
        uri: uri == _undefined || uri == null ? _instance.uri : (uri as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks<
        TRes>
    implements
        CopyWith$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks<
            TRes> {
  _CopyWithStubImpl$Mutation$AddItemsToPlaylist$addItemsToPlaylist$playlist$tracks(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? durationMs,
    bool? explicit,
    String? uri,
    String? $__typename,
  }) =>
      _res;
}
