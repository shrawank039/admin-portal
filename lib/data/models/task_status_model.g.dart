// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_status_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TaskStatusListResponse> _$taskStatusListResponseSerializer =
    new _$TaskStatusListResponseSerializer();
Serializer<TaskStatusItemResponse> _$taskStatusItemResponseSerializer =
    new _$TaskStatusItemResponseSerializer();
Serializer<TaskStatusEntity> _$taskStatusEntitySerializer =
    new _$TaskStatusEntitySerializer();

class _$TaskStatusListResponseSerializer
    implements StructuredSerializer<TaskStatusListResponse> {
  @override
  final Iterable<Type> types = const [
    TaskStatusListResponse,
    _$TaskStatusListResponse
  ];
  @override
  final String wireName = 'TaskStatusListResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TaskStatusListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TaskStatusEntity)])),
    ];

    return result;
  }

  @override
  TaskStatusListResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskStatusListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TaskStatusEntity)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TaskStatusItemResponseSerializer
    implements StructuredSerializer<TaskStatusItemResponse> {
  @override
  final Iterable<Type> types = const [
    TaskStatusItemResponse,
    _$TaskStatusItemResponse
  ];
  @override
  final String wireName = 'TaskStatusItemResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TaskStatusItemResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(TaskStatusEntity)),
    ];

    return result;
  }

  @override
  TaskStatusItemResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskStatusItemResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TaskStatusEntity))
              as TaskStatusEntity);
          break;
      }
    }

    return result.build();
  }
}

class _$TaskStatusEntitySerializer
    implements StructuredSerializer<TaskStatusEntity> {
  @override
  final Iterable<Type> types = const [TaskStatusEntity, _$TaskStatusEntity];
  @override
  final String wireName = 'TaskStatusEntity';

  @override
  Iterable<Object> serialize(Serializers serializers, TaskStatusEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
      'updated_at',
      serializers.serialize(object.updatedAt,
          specifiedType: const FullType(int)),
      'archived_at',
      serializers.serialize(object.archivedAt,
          specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.statusOrder;
    if (value != null) {
      result
        ..add('status_order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isChanged;
    if (value != null) {
      result
        ..add('isChanged')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isDeleted;
    if (value != null) {
      result
        ..add('is_deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.createdUserId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assignedUserId;
    if (value != null) {
      result
        ..add('assigned_user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idempotencyKey;
    if (value != null) {
      result
        ..add('idempotency_key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TaskStatusEntity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskStatusEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status_order':
          result.statusOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'isChanged':
          result.isChanged = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'archived_at':
          result.archivedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_deleted':
          result.isDeleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'user_id':
          result.createdUserId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assigned_user_id':
          result.assignedUserId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'idempotency_key':
          result.idempotencyKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TaskStatusListResponse extends TaskStatusListResponse {
  @override
  final BuiltList<TaskStatusEntity> data;

  factory _$TaskStatusListResponse(
          [void Function(TaskStatusListResponseBuilder) updates]) =>
      (new TaskStatusListResponseBuilder()..update(updates)).build();

  _$TaskStatusListResponse._({this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, 'TaskStatusListResponse', 'data');
  }

  @override
  TaskStatusListResponse rebuild(
          void Function(TaskStatusListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskStatusListResponseBuilder toBuilder() =>
      new TaskStatusListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskStatusListResponse && data == other.data;
  }

  int __hashCode;
  @override
  int get hashCode {
    return __hashCode ??= $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TaskStatusListResponse')
          ..add('data', data))
        .toString();
  }
}

class TaskStatusListResponseBuilder
    implements Builder<TaskStatusListResponse, TaskStatusListResponseBuilder> {
  _$TaskStatusListResponse _$v;

  ListBuilder<TaskStatusEntity> _data;
  ListBuilder<TaskStatusEntity> get data =>
      _$this._data ??= new ListBuilder<TaskStatusEntity>();
  set data(ListBuilder<TaskStatusEntity> data) => _$this._data = data;

  TaskStatusListResponseBuilder();

  TaskStatusListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskStatusListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskStatusListResponse;
  }

  @override
  void update(void Function(TaskStatusListResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TaskStatusListResponse build() {
    _$TaskStatusListResponse _$result;
    try {
      _$result = _$v ?? new _$TaskStatusListResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TaskStatusListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TaskStatusItemResponse extends TaskStatusItemResponse {
  @override
  final TaskStatusEntity data;

  factory _$TaskStatusItemResponse(
          [void Function(TaskStatusItemResponseBuilder) updates]) =>
      (new TaskStatusItemResponseBuilder()..update(updates)).build();

  _$TaskStatusItemResponse._({this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, 'TaskStatusItemResponse', 'data');
  }

  @override
  TaskStatusItemResponse rebuild(
          void Function(TaskStatusItemResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskStatusItemResponseBuilder toBuilder() =>
      new TaskStatusItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskStatusItemResponse && data == other.data;
  }

  int __hashCode;
  @override
  int get hashCode {
    return __hashCode ??= $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TaskStatusItemResponse')
          ..add('data', data))
        .toString();
  }
}

class TaskStatusItemResponseBuilder
    implements Builder<TaskStatusItemResponse, TaskStatusItemResponseBuilder> {
  _$TaskStatusItemResponse _$v;

  TaskStatusEntityBuilder _data;
  TaskStatusEntityBuilder get data =>
      _$this._data ??= new TaskStatusEntityBuilder();
  set data(TaskStatusEntityBuilder data) => _$this._data = data;

  TaskStatusItemResponseBuilder();

  TaskStatusItemResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskStatusItemResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskStatusItemResponse;
  }

  @override
  void update(void Function(TaskStatusItemResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TaskStatusItemResponse build() {
    _$TaskStatusItemResponse _$result;
    try {
      _$result = _$v ?? new _$TaskStatusItemResponse._(data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TaskStatusItemResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TaskStatusEntity extends TaskStatusEntity {
  @override
  final String name;
  @override
  final String color;
  @override
  final int statusOrder;
  @override
  final bool isChanged;
  @override
  final int createdAt;
  @override
  final int updatedAt;
  @override
  final int archivedAt;
  @override
  final bool isDeleted;
  @override
  final String createdUserId;
  @override
  final String assignedUserId;
  @override
  final String idempotencyKey;
  @override
  final String id;

  factory _$TaskStatusEntity(
          [void Function(TaskStatusEntityBuilder) updates]) =>
      (new TaskStatusEntityBuilder()..update(updates)).build();

  _$TaskStatusEntity._(
      {this.name,
      this.color,
      this.statusOrder,
      this.isChanged,
      this.createdAt,
      this.updatedAt,
      this.archivedAt,
      this.isDeleted,
      this.createdUserId,
      this.assignedUserId,
      this.idempotencyKey,
      this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'TaskStatusEntity', 'name');
    BuiltValueNullFieldError.checkNotNull(color, 'TaskStatusEntity', 'color');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'TaskStatusEntity', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, 'TaskStatusEntity', 'updatedAt');
    BuiltValueNullFieldError.checkNotNull(
        archivedAt, 'TaskStatusEntity', 'archivedAt');
    BuiltValueNullFieldError.checkNotNull(id, 'TaskStatusEntity', 'id');
  }

  @override
  TaskStatusEntity rebuild(void Function(TaskStatusEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskStatusEntityBuilder toBuilder() =>
      new TaskStatusEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskStatusEntity &&
        name == other.name &&
        color == other.color &&
        statusOrder == other.statusOrder &&
        isChanged == other.isChanged &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        archivedAt == other.archivedAt &&
        isDeleted == other.isDeleted &&
        createdUserId == other.createdUserId &&
        assignedUserId == other.assignedUserId &&
        idempotencyKey == other.idempotencyKey &&
        id == other.id;
  }

  int __hashCode;
  @override
  int get hashCode {
    return __hashCode ??= $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, name.hashCode),
                                                color.hashCode),
                                            statusOrder.hashCode),
                                        isChanged.hashCode),
                                    createdAt.hashCode),
                                updatedAt.hashCode),
                            archivedAt.hashCode),
                        isDeleted.hashCode),
                    createdUserId.hashCode),
                assignedUserId.hashCode),
            idempotencyKey.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TaskStatusEntity')
          ..add('name', name)
          ..add('color', color)
          ..add('statusOrder', statusOrder)
          ..add('isChanged', isChanged)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('archivedAt', archivedAt)
          ..add('isDeleted', isDeleted)
          ..add('createdUserId', createdUserId)
          ..add('assignedUserId', assignedUserId)
          ..add('idempotencyKey', idempotencyKey)
          ..add('id', id))
        .toString();
  }
}

class TaskStatusEntityBuilder
    implements Builder<TaskStatusEntity, TaskStatusEntityBuilder> {
  _$TaskStatusEntity _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  int _statusOrder;
  int get statusOrder => _$this._statusOrder;
  set statusOrder(int statusOrder) => _$this._statusOrder = statusOrder;

  bool _isChanged;
  bool get isChanged => _$this._isChanged;
  set isChanged(bool isChanged) => _$this._isChanged = isChanged;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  int _updatedAt;
  int get updatedAt => _$this._updatedAt;
  set updatedAt(int updatedAt) => _$this._updatedAt = updatedAt;

  int _archivedAt;
  int get archivedAt => _$this._archivedAt;
  set archivedAt(int archivedAt) => _$this._archivedAt = archivedAt;

  bool _isDeleted;
  bool get isDeleted => _$this._isDeleted;
  set isDeleted(bool isDeleted) => _$this._isDeleted = isDeleted;

  String _createdUserId;
  String get createdUserId => _$this._createdUserId;
  set createdUserId(String createdUserId) =>
      _$this._createdUserId = createdUserId;

  String _assignedUserId;
  String get assignedUserId => _$this._assignedUserId;
  set assignedUserId(String assignedUserId) =>
      _$this._assignedUserId = assignedUserId;

  String _idempotencyKey;
  String get idempotencyKey => _$this._idempotencyKey;
  set idempotencyKey(String idempotencyKey) =>
      _$this._idempotencyKey = idempotencyKey;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  TaskStatusEntityBuilder() {
    TaskStatusEntity._initializeBuilder(this);
  }

  TaskStatusEntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _color = $v.color;
      _statusOrder = $v.statusOrder;
      _isChanged = $v.isChanged;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _archivedAt = $v.archivedAt;
      _isDeleted = $v.isDeleted;
      _createdUserId = $v.createdUserId;
      _assignedUserId = $v.assignedUserId;
      _idempotencyKey = $v.idempotencyKey;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskStatusEntity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskStatusEntity;
  }

  @override
  void update(void Function(TaskStatusEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TaskStatusEntity build() {
    final _$result = _$v ??
        new _$TaskStatusEntity._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'TaskStatusEntity', 'name'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, 'TaskStatusEntity', 'color'),
            statusOrder: statusOrder,
            isChanged: isChanged,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, 'TaskStatusEntity', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, 'TaskStatusEntity', 'updatedAt'),
            archivedAt: BuiltValueNullFieldError.checkNotNull(
                archivedAt, 'TaskStatusEntity', 'archivedAt'),
            isDeleted: isDeleted,
            createdUserId: createdUserId,
            assignedUserId: assignedUserId,
            idempotencyKey: idempotencyKey,
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'TaskStatusEntity', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
