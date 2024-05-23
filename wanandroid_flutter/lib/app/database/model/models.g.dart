// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetAccountCacheCollection on Isar {
  IsarCollection<int, AccountCache> get accountCaches => this.collection();
}

const AccountCacheSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'AccountCache',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'username',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'updateTime',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'password',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, AccountCache>(
    serialize: serializeAccountCache,
    deserialize: deserializeAccountCache,
    deserializeProperty: deserializeAccountCacheProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeAccountCache(IsarWriter writer, AccountCache object) {
  IsarCore.writeString(writer, 1, object.username);
  IsarCore.writeLong(
      writer, 2, object.updateTime.toUtc().microsecondsSinceEpoch);
  {
    final value = object.password;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  return object.id;
}

@isarProtected
AccountCache deserializeAccountCache(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _username;
  _username = IsarCore.readString(reader, 1) ?? '';
  final DateTime _updateTime;
  {
    final value = IsarCore.readLong(reader, 2);
    if (value == -9223372036854775808) {
      _updateTime =
          DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _updateTime =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final String? _password;
  _password = IsarCore.readString(reader, 3);
  final object = AccountCache(
    id: _id,
    username: _username,
    updateTime: _updateTime,
    password: _password,
  );
  return object;
}

@isarProtected
dynamic deserializeAccountCacheProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        final value = IsarCore.readLong(reader, 2);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 3:
      return IsarCore.readString(reader, 3);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _AccountCacheUpdate {
  bool call({
    required int id,
    String? username,
    DateTime? updateTime,
    String? password,
  });
}

class _AccountCacheUpdateImpl implements _AccountCacheUpdate {
  const _AccountCacheUpdateImpl(this.collection);

  final IsarCollection<int, AccountCache> collection;

  @override
  bool call({
    required int id,
    Object? username = ignore,
    Object? updateTime = ignore,
    Object? password = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (username != ignore) 1: username as String?,
          if (updateTime != ignore) 2: updateTime as DateTime?,
          if (password != ignore) 3: password as String?,
        }) >
        0;
  }
}

sealed class _AccountCacheUpdateAll {
  int call({
    required List<int> id,
    String? username,
    DateTime? updateTime,
    String? password,
  });
}

class _AccountCacheUpdateAllImpl implements _AccountCacheUpdateAll {
  const _AccountCacheUpdateAllImpl(this.collection);

  final IsarCollection<int, AccountCache> collection;

  @override
  int call({
    required List<int> id,
    Object? username = ignore,
    Object? updateTime = ignore,
    Object? password = ignore,
  }) {
    return collection.updateProperties(id, {
      if (username != ignore) 1: username as String?,
      if (updateTime != ignore) 2: updateTime as DateTime?,
      if (password != ignore) 3: password as String?,
    });
  }
}

extension AccountCacheUpdate on IsarCollection<int, AccountCache> {
  _AccountCacheUpdate get update => _AccountCacheUpdateImpl(this);

  _AccountCacheUpdateAll get updateAll => _AccountCacheUpdateAllImpl(this);
}

sealed class _AccountCacheQueryUpdate {
  int call({
    String? username,
    DateTime? updateTime,
    String? password,
  });
}

class _AccountCacheQueryUpdateImpl implements _AccountCacheQueryUpdate {
  const _AccountCacheQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<AccountCache> query;
  final int? limit;

  @override
  int call({
    Object? username = ignore,
    Object? updateTime = ignore,
    Object? password = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (username != ignore) 1: username as String?,
      if (updateTime != ignore) 2: updateTime as DateTime?,
      if (password != ignore) 3: password as String?,
    });
  }
}

extension AccountCacheQueryUpdate on IsarQuery<AccountCache> {
  _AccountCacheQueryUpdate get updateFirst =>
      _AccountCacheQueryUpdateImpl(this, limit: 1);

  _AccountCacheQueryUpdate get updateAll => _AccountCacheQueryUpdateImpl(this);
}

class _AccountCacheQueryBuilderUpdateImpl implements _AccountCacheQueryUpdate {
  const _AccountCacheQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<AccountCache, AccountCache, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? username = ignore,
    Object? updateTime = ignore,
    Object? password = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (username != ignore) 1: username as String?,
        if (updateTime != ignore) 2: updateTime as DateTime?,
        if (password != ignore) 3: password as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension AccountCacheQueryBuilderUpdate
    on QueryBuilder<AccountCache, AccountCache, QOperations> {
  _AccountCacheQueryUpdate get updateFirst =>
      _AccountCacheQueryBuilderUpdateImpl(this, limit: 1);

  _AccountCacheQueryUpdate get updateAll =>
      _AccountCacheQueryBuilderUpdateImpl(this);
}

extension AccountCacheQueryFilter
    on QueryBuilder<AccountCache, AccountCache, QFilterCondition> {
  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      updateTimeEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      updateTimeGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      updateTimeGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      updateTimeLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      updateTimeLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      updateTimeBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterFilterCondition>
      passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }
}

extension AccountCacheQueryObject
    on QueryBuilder<AccountCache, AccountCache, QFilterCondition> {}

extension AccountCacheQuerySortBy
    on QueryBuilder<AccountCache, AccountCache, QSortBy> {
  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> sortByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> sortByUsernameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> sortByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> sortByPasswordDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension AccountCacheQuerySortThenBy
    on QueryBuilder<AccountCache, AccountCache, QSortThenBy> {
  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> thenByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> thenByUsernameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> thenByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterSortBy> thenByPasswordDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension AccountCacheQueryWhereDistinct
    on QueryBuilder<AccountCache, AccountCache, QDistinct> {
  QueryBuilder<AccountCache, AccountCache, QAfterDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterDistinct>
      distinctByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<AccountCache, AccountCache, QAfterDistinct> distinctByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }
}

extension AccountCacheQueryProperty1
    on QueryBuilder<AccountCache, AccountCache, QProperty> {
  QueryBuilder<AccountCache, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<AccountCache, String, QAfterProperty> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AccountCache, DateTime, QAfterProperty> updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AccountCache, String?, QAfterProperty> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension AccountCacheQueryProperty2<R>
    on QueryBuilder<AccountCache, R, QAfterProperty> {
  QueryBuilder<AccountCache, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<AccountCache, (R, String), QAfterProperty> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AccountCache, (R, DateTime), QAfterProperty>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AccountCache, (R, String?), QAfterProperty> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension AccountCacheQueryProperty3<R1, R2>
    on QueryBuilder<AccountCache, (R1, R2), QAfterProperty> {
  QueryBuilder<AccountCache, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<AccountCache, (R1, R2, String), QOperations> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<AccountCache, (R1, R2, DateTime), QOperations>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<AccountCache, (R1, R2, String?), QOperations>
      passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetSearchHistoryCacheCollection on Isar {
  IsarCollection<int, SearchHistoryCache> get searchHistoryCaches =>
      this.collection();
}

const SearchHistoryCacheSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'SearchHistoryCache',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'keyword',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'updateTime',
        type: IsarType.dateTime,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, SearchHistoryCache>(
    serialize: serializeSearchHistoryCache,
    deserialize: deserializeSearchHistoryCache,
    deserializeProperty: deserializeSearchHistoryCacheProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeSearchHistoryCache(IsarWriter writer, SearchHistoryCache object) {
  IsarCore.writeString(writer, 1, object.keyword);
  IsarCore.writeLong(
      writer, 2, object.updateTime.toUtc().microsecondsSinceEpoch);
  return object.id;
}

@isarProtected
SearchHistoryCache deserializeSearchHistoryCache(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _keyword;
  _keyword = IsarCore.readString(reader, 1) ?? '';
  final DateTime _updateTime;
  {
    final value = IsarCore.readLong(reader, 2);
    if (value == -9223372036854775808) {
      _updateTime =
          DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _updateTime =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = SearchHistoryCache(
    id: _id,
    keyword: _keyword,
    updateTime: _updateTime,
  );
  return object;
}

@isarProtected
dynamic deserializeSearchHistoryCacheProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      {
        final value = IsarCore.readLong(reader, 2);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _SearchHistoryCacheUpdate {
  bool call({
    required int id,
    String? keyword,
    DateTime? updateTime,
  });
}

class _SearchHistoryCacheUpdateImpl implements _SearchHistoryCacheUpdate {
  const _SearchHistoryCacheUpdateImpl(this.collection);

  final IsarCollection<int, SearchHistoryCache> collection;

  @override
  bool call({
    required int id,
    Object? keyword = ignore,
    Object? updateTime = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (keyword != ignore) 1: keyword as String?,
          if (updateTime != ignore) 2: updateTime as DateTime?,
        }) >
        0;
  }
}

sealed class _SearchHistoryCacheUpdateAll {
  int call({
    required List<int> id,
    String? keyword,
    DateTime? updateTime,
  });
}

class _SearchHistoryCacheUpdateAllImpl implements _SearchHistoryCacheUpdateAll {
  const _SearchHistoryCacheUpdateAllImpl(this.collection);

  final IsarCollection<int, SearchHistoryCache> collection;

  @override
  int call({
    required List<int> id,
    Object? keyword = ignore,
    Object? updateTime = ignore,
  }) {
    return collection.updateProperties(id, {
      if (keyword != ignore) 1: keyword as String?,
      if (updateTime != ignore) 2: updateTime as DateTime?,
    });
  }
}

extension SearchHistoryCacheUpdate on IsarCollection<int, SearchHistoryCache> {
  _SearchHistoryCacheUpdate get update => _SearchHistoryCacheUpdateImpl(this);

  _SearchHistoryCacheUpdateAll get updateAll =>
      _SearchHistoryCacheUpdateAllImpl(this);
}

sealed class _SearchHistoryCacheQueryUpdate {
  int call({
    String? keyword,
    DateTime? updateTime,
  });
}

class _SearchHistoryCacheQueryUpdateImpl
    implements _SearchHistoryCacheQueryUpdate {
  const _SearchHistoryCacheQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<SearchHistoryCache> query;
  final int? limit;

  @override
  int call({
    Object? keyword = ignore,
    Object? updateTime = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (keyword != ignore) 1: keyword as String?,
      if (updateTime != ignore) 2: updateTime as DateTime?,
    });
  }
}

extension SearchHistoryCacheQueryUpdate on IsarQuery<SearchHistoryCache> {
  _SearchHistoryCacheQueryUpdate get updateFirst =>
      _SearchHistoryCacheQueryUpdateImpl(this, limit: 1);

  _SearchHistoryCacheQueryUpdate get updateAll =>
      _SearchHistoryCacheQueryUpdateImpl(this);
}

class _SearchHistoryCacheQueryBuilderUpdateImpl
    implements _SearchHistoryCacheQueryUpdate {
  const _SearchHistoryCacheQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<SearchHistoryCache, SearchHistoryCache, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? keyword = ignore,
    Object? updateTime = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (keyword != ignore) 1: keyword as String?,
        if (updateTime != ignore) 2: updateTime as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension SearchHistoryCacheQueryBuilderUpdate
    on QueryBuilder<SearchHistoryCache, SearchHistoryCache, QOperations> {
  _SearchHistoryCacheQueryUpdate get updateFirst =>
      _SearchHistoryCacheQueryBuilderUpdateImpl(this, limit: 1);

  _SearchHistoryCacheQueryUpdate get updateAll =>
      _SearchHistoryCacheQueryBuilderUpdateImpl(this);
}

extension SearchHistoryCacheQueryFilter
    on QueryBuilder<SearchHistoryCache, SearchHistoryCache, QFilterCondition> {
  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      keywordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      updateTimeEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      updateTimeGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      updateTimeGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      updateTimeLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      updateTimeLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterFilterCondition>
      updateTimeBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension SearchHistoryCacheQueryObject
    on QueryBuilder<SearchHistoryCache, SearchHistoryCache, QFilterCondition> {}

extension SearchHistoryCacheQuerySortBy
    on QueryBuilder<SearchHistoryCache, SearchHistoryCache, QSortBy> {
  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      sortByKeyword({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      sortByKeywordDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension SearchHistoryCacheQuerySortThenBy
    on QueryBuilder<SearchHistoryCache, SearchHistoryCache, QSortThenBy> {
  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      thenByKeyword({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      thenByKeywordDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension SearchHistoryCacheQueryWhereDistinct
    on QueryBuilder<SearchHistoryCache, SearchHistoryCache, QDistinct> {
  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterDistinct>
      distinctByKeyword({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SearchHistoryCache, SearchHistoryCache, QAfterDistinct>
      distinctByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }
}

extension SearchHistoryCacheQueryProperty1
    on QueryBuilder<SearchHistoryCache, SearchHistoryCache, QProperty> {
  QueryBuilder<SearchHistoryCache, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SearchHistoryCache, String, QAfterProperty> keywordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SearchHistoryCache, DateTime, QAfterProperty>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension SearchHistoryCacheQueryProperty2<R>
    on QueryBuilder<SearchHistoryCache, R, QAfterProperty> {
  QueryBuilder<SearchHistoryCache, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SearchHistoryCache, (R, String), QAfterProperty>
      keywordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SearchHistoryCache, (R, DateTime), QAfterProperty>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension SearchHistoryCacheQueryProperty3<R1, R2>
    on QueryBuilder<SearchHistoryCache, (R1, R2), QAfterProperty> {
  QueryBuilder<SearchHistoryCache, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SearchHistoryCache, (R1, R2, String), QOperations>
      keywordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SearchHistoryCache, (R1, R2, DateTime), QOperations>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetUserSettingsCacheCollection on Isar {
  IsarCollection<int, UserSettingsCache> get userSettingsCaches =>
      this.collection();
}

const UserSettingsCacheSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'UserSettingsCache',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'updateTime',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'rememberPassword',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'themeMode',
        type: IsarType.byte,
        enumMap: {"system": 0, "light": 1, "dark": 2},
      ),
      IsarPropertySchema(
        name: 'language',
        type: IsarType.byte,
        enumMap: {"system": 0, "en": 1, "zh": 2},
      ),
      IsarPropertySchema(
        name: 'userId',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, UserSettingsCache>(
    serialize: serializeUserSettingsCache,
    deserialize: deserializeUserSettingsCache,
    deserializeProperty: deserializeUserSettingsCacheProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeUserSettingsCache(IsarWriter writer, UserSettingsCache object) {
  IsarCore.writeLong(
      writer, 1, object.updateTime.toUtc().microsecondsSinceEpoch);
  {
    final value = object.rememberPassword;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeBool(writer, 2, value);
    }
  }
  IsarCore.writeByte(writer, 3, object.themeMode.index);
  IsarCore.writeByte(writer, 4, object.language.index);
  IsarCore.writeLong(writer, 5, object.userId ?? -9223372036854775808);
  return object.id;
}

@isarProtected
UserSettingsCache deserializeUserSettingsCache(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final DateTime _updateTime;
  {
    final value = IsarCore.readLong(reader, 1);
    if (value == -9223372036854775808) {
      _updateTime =
          DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _updateTime =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final bool? _rememberPassword;
  {
    if (IsarCore.readNull(reader, 2)) {
      _rememberPassword = null;
    } else {
      _rememberPassword = IsarCore.readBool(reader, 2);
    }
  }
  final ThemeMode _themeMode;
  {
    if (IsarCore.readNull(reader, 3)) {
      _themeMode = ThemeMode.system;
    } else {
      _themeMode = _userSettingsCacheThemeMode[IsarCore.readByte(reader, 3)] ??
          ThemeMode.system;
    }
  }
  final Language _language;
  {
    if (IsarCore.readNull(reader, 4)) {
      _language = Language.system;
    } else {
      _language = _userSettingsCacheLanguage[IsarCore.readByte(reader, 4)] ??
          Language.system;
    }
  }
  final int? _userId;
  {
    final value = IsarCore.readLong(reader, 5);
    if (value == -9223372036854775808) {
      _userId = null;
    } else {
      _userId = value;
    }
  }
  final object = UserSettingsCache(
    id: _id,
    updateTime: _updateTime,
    rememberPassword: _rememberPassword,
    themeMode: _themeMode,
    language: _language,
    userId: _userId,
  );
  return object;
}

@isarProtected
dynamic deserializeUserSettingsCacheProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      {
        final value = IsarCore.readLong(reader, 1);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 2:
      {
        if (IsarCore.readNull(reader, 2)) {
          return null;
        } else {
          return IsarCore.readBool(reader, 2);
        }
      }
    case 3:
      {
        if (IsarCore.readNull(reader, 3)) {
          return ThemeMode.system;
        } else {
          return _userSettingsCacheThemeMode[IsarCore.readByte(reader, 3)] ??
              ThemeMode.system;
        }
      }
    case 4:
      {
        if (IsarCore.readNull(reader, 4)) {
          return Language.system;
        } else {
          return _userSettingsCacheLanguage[IsarCore.readByte(reader, 4)] ??
              Language.system;
        }
      }
    case 5:
      {
        final value = IsarCore.readLong(reader, 5);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _UserSettingsCacheUpdate {
  bool call({
    required int id,
    DateTime? updateTime,
    bool? rememberPassword,
    ThemeMode? themeMode,
    Language? language,
    int? userId,
  });
}

class _UserSettingsCacheUpdateImpl implements _UserSettingsCacheUpdate {
  const _UserSettingsCacheUpdateImpl(this.collection);

  final IsarCollection<int, UserSettingsCache> collection;

  @override
  bool call({
    required int id,
    Object? updateTime = ignore,
    Object? rememberPassword = ignore,
    Object? themeMode = ignore,
    Object? language = ignore,
    Object? userId = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (updateTime != ignore) 1: updateTime as DateTime?,
          if (rememberPassword != ignore) 2: rememberPassword as bool?,
          if (themeMode != ignore) 3: themeMode as ThemeMode?,
          if (language != ignore) 4: language as Language?,
          if (userId != ignore) 5: userId as int?,
        }) >
        0;
  }
}

sealed class _UserSettingsCacheUpdateAll {
  int call({
    required List<int> id,
    DateTime? updateTime,
    bool? rememberPassword,
    ThemeMode? themeMode,
    Language? language,
    int? userId,
  });
}

class _UserSettingsCacheUpdateAllImpl implements _UserSettingsCacheUpdateAll {
  const _UserSettingsCacheUpdateAllImpl(this.collection);

  final IsarCollection<int, UserSettingsCache> collection;

  @override
  int call({
    required List<int> id,
    Object? updateTime = ignore,
    Object? rememberPassword = ignore,
    Object? themeMode = ignore,
    Object? language = ignore,
    Object? userId = ignore,
  }) {
    return collection.updateProperties(id, {
      if (updateTime != ignore) 1: updateTime as DateTime?,
      if (rememberPassword != ignore) 2: rememberPassword as bool?,
      if (themeMode != ignore) 3: themeMode as ThemeMode?,
      if (language != ignore) 4: language as Language?,
      if (userId != ignore) 5: userId as int?,
    });
  }
}

extension UserSettingsCacheUpdate on IsarCollection<int, UserSettingsCache> {
  _UserSettingsCacheUpdate get update => _UserSettingsCacheUpdateImpl(this);

  _UserSettingsCacheUpdateAll get updateAll =>
      _UserSettingsCacheUpdateAllImpl(this);
}

sealed class _UserSettingsCacheQueryUpdate {
  int call({
    DateTime? updateTime,
    bool? rememberPassword,
    ThemeMode? themeMode,
    Language? language,
    int? userId,
  });
}

class _UserSettingsCacheQueryUpdateImpl
    implements _UserSettingsCacheQueryUpdate {
  const _UserSettingsCacheQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<UserSettingsCache> query;
  final int? limit;

  @override
  int call({
    Object? updateTime = ignore,
    Object? rememberPassword = ignore,
    Object? themeMode = ignore,
    Object? language = ignore,
    Object? userId = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (updateTime != ignore) 1: updateTime as DateTime?,
      if (rememberPassword != ignore) 2: rememberPassword as bool?,
      if (themeMode != ignore) 3: themeMode as ThemeMode?,
      if (language != ignore) 4: language as Language?,
      if (userId != ignore) 5: userId as int?,
    });
  }
}

extension UserSettingsCacheQueryUpdate on IsarQuery<UserSettingsCache> {
  _UserSettingsCacheQueryUpdate get updateFirst =>
      _UserSettingsCacheQueryUpdateImpl(this, limit: 1);

  _UserSettingsCacheQueryUpdate get updateAll =>
      _UserSettingsCacheQueryUpdateImpl(this);
}

class _UserSettingsCacheQueryBuilderUpdateImpl
    implements _UserSettingsCacheQueryUpdate {
  const _UserSettingsCacheQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<UserSettingsCache, UserSettingsCache, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? updateTime = ignore,
    Object? rememberPassword = ignore,
    Object? themeMode = ignore,
    Object? language = ignore,
    Object? userId = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (updateTime != ignore) 1: updateTime as DateTime?,
        if (rememberPassword != ignore) 2: rememberPassword as bool?,
        if (themeMode != ignore) 3: themeMode as ThemeMode?,
        if (language != ignore) 4: language as Language?,
        if (userId != ignore) 5: userId as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension UserSettingsCacheQueryBuilderUpdate
    on QueryBuilder<UserSettingsCache, UserSettingsCache, QOperations> {
  _UserSettingsCacheQueryUpdate get updateFirst =>
      _UserSettingsCacheQueryBuilderUpdateImpl(this, limit: 1);

  _UserSettingsCacheQueryUpdate get updateAll =>
      _UserSettingsCacheQueryBuilderUpdateImpl(this);
}

const _userSettingsCacheThemeMode = {
  0: ThemeMode.system,
  1: ThemeMode.light,
  2: ThemeMode.dark,
};
const _userSettingsCacheLanguage = {
  0: Language.system,
  1: Language.en,
  2: Language.zh,
};

extension UserSettingsCacheQueryFilter
    on QueryBuilder<UserSettingsCache, UserSettingsCache, QFilterCondition> {
  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      updateTimeEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      updateTimeGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      updateTimeGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      updateTimeLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      updateTimeLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      updateTimeBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      rememberPasswordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      rememberPasswordIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      rememberPasswordEqualTo(
    bool? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      themeModeEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      themeModeGreaterThan(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      themeModeGreaterThanOrEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      themeModeLessThan(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      themeModeLessThanOrEqualTo(
    ThemeMode value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      themeModeBetween(
    ThemeMode lower,
    ThemeMode upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      languageEqualTo(
    Language value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      languageGreaterThan(
    Language value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      languageGreaterThanOrEqualTo(
    Language value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      languageLessThan(
    Language value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      languageLessThanOrEqualTo(
    Language value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      languageBetween(
    Language lower,
    Language upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower.index,
          upper: upper.index,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      userIdEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      userIdGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      userIdGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      userIdLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      userIdLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterFilterCondition>
      userIdBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension UserSettingsCacheQueryObject
    on QueryBuilder<UserSettingsCache, UserSettingsCache, QFilterCondition> {}

extension UserSettingsCacheQuerySortBy
    on QueryBuilder<UserSettingsCache, UserSettingsCache, QSortBy> {
  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByRememberPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByRememberPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension UserSettingsCacheQuerySortThenBy
    on QueryBuilder<UserSettingsCache, UserSettingsCache, QSortThenBy> {
  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByUpdateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByRememberPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByRememberPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByThemeModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }
}

extension UserSettingsCacheQueryWhereDistinct
    on QueryBuilder<UserSettingsCache, UserSettingsCache, QDistinct> {
  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterDistinct>
      distinctByUpdateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterDistinct>
      distinctByRememberPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterDistinct>
      distinctByThemeMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterDistinct>
      distinctByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<UserSettingsCache, UserSettingsCache, QAfterDistinct>
      distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }
}

extension UserSettingsCacheQueryProperty1
    on QueryBuilder<UserSettingsCache, UserSettingsCache, QProperty> {
  QueryBuilder<UserSettingsCache, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserSettingsCache, DateTime, QAfterProperty>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserSettingsCache, bool?, QAfterProperty>
      rememberPasswordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<UserSettingsCache, ThemeMode, QAfterProperty>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<UserSettingsCache, Language, QAfterProperty> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<UserSettingsCache, int?, QAfterProperty> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension UserSettingsCacheQueryProperty2<R>
    on QueryBuilder<UserSettingsCache, R, QAfterProperty> {
  QueryBuilder<UserSettingsCache, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserSettingsCache, (R, DateTime), QAfterProperty>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserSettingsCache, (R, bool?), QAfterProperty>
      rememberPasswordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<UserSettingsCache, (R, ThemeMode), QAfterProperty>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<UserSettingsCache, (R, Language), QAfterProperty>
      languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<UserSettingsCache, (R, int?), QAfterProperty> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension UserSettingsCacheQueryProperty3<R1, R2>
    on QueryBuilder<UserSettingsCache, (R1, R2), QAfterProperty> {
  QueryBuilder<UserSettingsCache, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserSettingsCache, (R1, R2, DateTime), QOperations>
      updateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserSettingsCache, (R1, R2, bool?), QOperations>
      rememberPasswordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<UserSettingsCache, (R1, R2, ThemeMode), QOperations>
      themeModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<UserSettingsCache, (R1, R2, Language), QOperations>
      languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<UserSettingsCache, (R1, R2, int?), QOperations>
      userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}
