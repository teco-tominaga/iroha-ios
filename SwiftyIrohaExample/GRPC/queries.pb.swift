// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: queries.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Iroha_Protocol_GetAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var accountID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_GetSignatories {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var accountID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_GetAccountTransactions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var accountID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_GetAccountAssetTransactions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var accountID: String = String()

  var assetID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_GetTransactions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var txHashes: [Data] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_GetAccountAssets {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var accountID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_GetAccountDetail {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var accountID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_GetAssetInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var assetID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_GetRoles {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_GetRolePermissions {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var roleID: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_QueryPayloadMeta {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var createdTime: UInt64 = 0

  var creatorAccountID: String = String()

  /// used to prevent replay attacks.
  var queryCounter: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Iroha_Protocol_Query {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var payload: Iroha_Protocol_Query.Payload {
    get {return _storage._payload ?? Iroha_Protocol_Query.Payload()}
    set {_uniqueStorage()._payload = newValue}
  }
  /// Returns true if `payload` has been explicitly set.
  var hasPayload: Bool {return _storage._payload != nil}
  /// Clears the value of `payload`. Subsequent reads from it will return its default value.
  mutating func clearPayload() {_storage._payload = nil}

  var signature: Iroha_Protocol_Signature {
    get {return _storage._signature ?? Iroha_Protocol_Signature()}
    set {_uniqueStorage()._signature = newValue}
  }
  /// Returns true if `signature` has been explicitly set.
  var hasSignature: Bool {return _storage._signature != nil}
  /// Clears the value of `signature`. Subsequent reads from it will return its default value.
  mutating func clearSignature() {_storage._signature = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct Payload {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var meta: Iroha_Protocol_QueryPayloadMeta {
      get {return _storage._meta ?? Iroha_Protocol_QueryPayloadMeta()}
      set {_uniqueStorage()._meta = newValue}
    }
    /// Returns true if `meta` has been explicitly set.
    var hasMeta: Bool {return _storage._meta != nil}
    /// Clears the value of `meta`. Subsequent reads from it will return its default value.
    mutating func clearMeta() {_storage._meta = nil}

    var query: OneOf_Query? {
      get {return _storage._query}
      set {_uniqueStorage()._query = newValue}
    }

    var getAccount: Iroha_Protocol_GetAccount {
      get {
        if case .getAccount(let v)? = _storage._query {return v}
        return Iroha_Protocol_GetAccount()
      }
      set {_uniqueStorage()._query = .getAccount(newValue)}
    }

    var getAccountSignatories: Iroha_Protocol_GetSignatories {
      get {
        if case .getAccountSignatories(let v)? = _storage._query {return v}
        return Iroha_Protocol_GetSignatories()
      }
      set {_uniqueStorage()._query = .getAccountSignatories(newValue)}
    }

    var getAccountTransactions: Iroha_Protocol_GetAccountTransactions {
      get {
        if case .getAccountTransactions(let v)? = _storage._query {return v}
        return Iroha_Protocol_GetAccountTransactions()
      }
      set {_uniqueStorage()._query = .getAccountTransactions(newValue)}
    }

    var getAccountAssetTransactions: Iroha_Protocol_GetAccountAssetTransactions {
      get {
        if case .getAccountAssetTransactions(let v)? = _storage._query {return v}
        return Iroha_Protocol_GetAccountAssetTransactions()
      }
      set {_uniqueStorage()._query = .getAccountAssetTransactions(newValue)}
    }

    var getTransactions: Iroha_Protocol_GetTransactions {
      get {
        if case .getTransactions(let v)? = _storage._query {return v}
        return Iroha_Protocol_GetTransactions()
      }
      set {_uniqueStorage()._query = .getTransactions(newValue)}
    }

    var getAccountAssets: Iroha_Protocol_GetAccountAssets {
      get {
        if case .getAccountAssets(let v)? = _storage._query {return v}
        return Iroha_Protocol_GetAccountAssets()
      }
      set {_uniqueStorage()._query = .getAccountAssets(newValue)}
    }

    var getAccountDetail: Iroha_Protocol_GetAccountDetail {
      get {
        if case .getAccountDetail(let v)? = _storage._query {return v}
        return Iroha_Protocol_GetAccountDetail()
      }
      set {_uniqueStorage()._query = .getAccountDetail(newValue)}
    }

    var getRoles: Iroha_Protocol_GetRoles {
      get {
        if case .getRoles(let v)? = _storage._query {return v}
        return Iroha_Protocol_GetRoles()
      }
      set {_uniqueStorage()._query = .getRoles(newValue)}
    }

    var getRolePermissions: Iroha_Protocol_GetRolePermissions {
      get {
        if case .getRolePermissions(let v)? = _storage._query {return v}
        return Iroha_Protocol_GetRolePermissions()
      }
      set {_uniqueStorage()._query = .getRolePermissions(newValue)}
    }

    var getAssetInfo: Iroha_Protocol_GetAssetInfo {
      get {
        if case .getAssetInfo(let v)? = _storage._query {return v}
        return Iroha_Protocol_GetAssetInfo()
      }
      set {_uniqueStorage()._query = .getAssetInfo(newValue)}
    }

    var unknownFields = SwiftProtobuf.UnknownStorage()

    enum OneOf_Query: Equatable {
      case getAccount(Iroha_Protocol_GetAccount)
      case getAccountSignatories(Iroha_Protocol_GetSignatories)
      case getAccountTransactions(Iroha_Protocol_GetAccountTransactions)
      case getAccountAssetTransactions(Iroha_Protocol_GetAccountAssetTransactions)
      case getTransactions(Iroha_Protocol_GetTransactions)
      case getAccountAssets(Iroha_Protocol_GetAccountAssets)
      case getAccountDetail(Iroha_Protocol_GetAccountDetail)
      case getRoles(Iroha_Protocol_GetRoles)
      case getRolePermissions(Iroha_Protocol_GetRolePermissions)
      case getAssetInfo(Iroha_Protocol_GetAssetInfo)

      static func ==(lhs: Iroha_Protocol_Query.Payload.OneOf_Query, rhs: Iroha_Protocol_Query.Payload.OneOf_Query) -> Bool {
        switch (lhs, rhs) {
        case (.getAccount(let l), .getAccount(let r)): return l == r
        case (.getAccountSignatories(let l), .getAccountSignatories(let r)): return l == r
        case (.getAccountTransactions(let l), .getAccountTransactions(let r)): return l == r
        case (.getAccountAssetTransactions(let l), .getAccountAssetTransactions(let r)): return l == r
        case (.getTransactions(let l), .getTransactions(let r)): return l == r
        case (.getAccountAssets(let l), .getAccountAssets(let r)): return l == r
        case (.getAccountDetail(let l), .getAccountDetail(let r)): return l == r
        case (.getRoles(let l), .getRoles(let r)): return l == r
        case (.getRolePermissions(let l), .getRolePermissions(let r)): return l == r
        case (.getAssetInfo(let l), .getAssetInfo(let r)): return l == r
        default: return false
        }
      }
    }

    init() {}

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Iroha_Protocol_BlocksQuery {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var meta: Iroha_Protocol_QueryPayloadMeta {
    get {return _storage._meta ?? Iroha_Protocol_QueryPayloadMeta()}
    set {_uniqueStorage()._meta = newValue}
  }
  /// Returns true if `meta` has been explicitly set.
  var hasMeta: Bool {return _storage._meta != nil}
  /// Clears the value of `meta`. Subsequent reads from it will return its default value.
  mutating func clearMeta() {_storage._meta = nil}

  var signature: Iroha_Protocol_Signature {
    get {return _storage._signature ?? Iroha_Protocol_Signature()}
    set {_uniqueStorage()._signature = newValue}
  }
  /// Returns true if `signature` has been explicitly set.
  var hasSignature: Bool {return _storage._signature != nil}
  /// Clears the value of `signature`. Subsequent reads from it will return its default value.
  mutating func clearSignature() {_storage._signature = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "iroha.protocol"

extension Iroha_Protocol_GetAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetAccount"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "account_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.accountID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accountID.isEmpty {
      try visitor.visitSingularStringField(value: self.accountID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_GetAccount) -> Bool {
    if self.accountID != other.accountID {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_GetSignatories: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetSignatories"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "account_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.accountID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accountID.isEmpty {
      try visitor.visitSingularStringField(value: self.accountID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_GetSignatories) -> Bool {
    if self.accountID != other.accountID {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_GetAccountTransactions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetAccountTransactions"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "account_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.accountID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accountID.isEmpty {
      try visitor.visitSingularStringField(value: self.accountID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_GetAccountTransactions) -> Bool {
    if self.accountID != other.accountID {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_GetAccountAssetTransactions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetAccountAssetTransactions"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "account_id"),
    2: .standard(proto: "asset_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.accountID)
      case 2: try decoder.decodeSingularStringField(value: &self.assetID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accountID.isEmpty {
      try visitor.visitSingularStringField(value: self.accountID, fieldNumber: 1)
    }
    if !self.assetID.isEmpty {
      try visitor.visitSingularStringField(value: self.assetID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_GetAccountAssetTransactions) -> Bool {
    if self.accountID != other.accountID {return false}
    if self.assetID != other.assetID {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_GetTransactions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetTransactions"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tx_hashes"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedBytesField(value: &self.txHashes)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.txHashes.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.txHashes, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_GetTransactions) -> Bool {
    if self.txHashes != other.txHashes {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_GetAccountAssets: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetAccountAssets"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "account_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.accountID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accountID.isEmpty {
      try visitor.visitSingularStringField(value: self.accountID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_GetAccountAssets) -> Bool {
    if self.accountID != other.accountID {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_GetAccountDetail: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetAccountDetail"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "account_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.accountID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.accountID.isEmpty {
      try visitor.visitSingularStringField(value: self.accountID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_GetAccountDetail) -> Bool {
    if self.accountID != other.accountID {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_GetAssetInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetAssetInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "asset_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.assetID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.assetID.isEmpty {
      try visitor.visitSingularStringField(value: self.assetID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_GetAssetInfo) -> Bool {
    if self.assetID != other.assetID {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_GetRoles: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetRoles"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_GetRoles) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_GetRolePermissions: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetRolePermissions"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "role_id"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.roleID)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.roleID.isEmpty {
      try visitor.visitSingularStringField(value: self.roleID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_GetRolePermissions) -> Bool {
    if self.roleID != other.roleID {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_QueryPayloadMeta: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryPayloadMeta"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "created_time"),
    2: .standard(proto: "creator_account_id"),
    3: .standard(proto: "query_counter"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.createdTime)
      case 2: try decoder.decodeSingularStringField(value: &self.creatorAccountID)
      case 3: try decoder.decodeSingularUInt64Field(value: &self.queryCounter)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.createdTime != 0 {
      try visitor.visitSingularUInt64Field(value: self.createdTime, fieldNumber: 1)
    }
    if !self.creatorAccountID.isEmpty {
      try visitor.visitSingularStringField(value: self.creatorAccountID, fieldNumber: 2)
    }
    if self.queryCounter != 0 {
      try visitor.visitSingularUInt64Field(value: self.queryCounter, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_QueryPayloadMeta) -> Bool {
    if self.createdTime != other.createdTime {return false}
    if self.creatorAccountID != other.creatorAccountID {return false}
    if self.queryCounter != other.queryCounter {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_Query: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Query"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "payload"),
    2: .same(proto: "signature"),
  ]

  fileprivate class _StorageClass {
    var _payload: Iroha_Protocol_Query.Payload? = nil
    var _signature: Iroha_Protocol_Signature? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _payload = source._payload
      _signature = source._signature
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._payload)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._signature)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._payload {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._signature {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_Query) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._payload != other_storage._payload {return false}
        if _storage._signature != other_storage._signature {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_Query.Payload: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Iroha_Protocol_Query.protoMessageName + ".Payload"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "meta"),
    3: .standard(proto: "get_account"),
    4: .standard(proto: "get_account_signatories"),
    5: .standard(proto: "get_account_transactions"),
    6: .standard(proto: "get_account_asset_transactions"),
    7: .standard(proto: "get_transactions"),
    8: .standard(proto: "get_account_assets"),
    9: .standard(proto: "get_account_detail"),
    10: .standard(proto: "get_roles"),
    11: .standard(proto: "get_role_permissions"),
    12: .standard(proto: "get_asset_info"),
  ]

  fileprivate class _StorageClass {
    var _meta: Iroha_Protocol_QueryPayloadMeta? = nil
    var _query: Iroha_Protocol_Query.Payload.OneOf_Query?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _meta = source._meta
      _query = source._query
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._meta)
        case 3:
          var v: Iroha_Protocol_GetAccount?
          if let current = _storage._query {
            try decoder.handleConflictingOneOf()
            if case .getAccount(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._query = .getAccount(v)}
        case 4:
          var v: Iroha_Protocol_GetSignatories?
          if let current = _storage._query {
            try decoder.handleConflictingOneOf()
            if case .getAccountSignatories(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._query = .getAccountSignatories(v)}
        case 5:
          var v: Iroha_Protocol_GetAccountTransactions?
          if let current = _storage._query {
            try decoder.handleConflictingOneOf()
            if case .getAccountTransactions(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._query = .getAccountTransactions(v)}
        case 6:
          var v: Iroha_Protocol_GetAccountAssetTransactions?
          if let current = _storage._query {
            try decoder.handleConflictingOneOf()
            if case .getAccountAssetTransactions(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._query = .getAccountAssetTransactions(v)}
        case 7:
          var v: Iroha_Protocol_GetTransactions?
          if let current = _storage._query {
            try decoder.handleConflictingOneOf()
            if case .getTransactions(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._query = .getTransactions(v)}
        case 8:
          var v: Iroha_Protocol_GetAccountAssets?
          if let current = _storage._query {
            try decoder.handleConflictingOneOf()
            if case .getAccountAssets(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._query = .getAccountAssets(v)}
        case 9:
          var v: Iroha_Protocol_GetAccountDetail?
          if let current = _storage._query {
            try decoder.handleConflictingOneOf()
            if case .getAccountDetail(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._query = .getAccountDetail(v)}
        case 10:
          var v: Iroha_Protocol_GetRoles?
          if let current = _storage._query {
            try decoder.handleConflictingOneOf()
            if case .getRoles(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._query = .getRoles(v)}
        case 11:
          var v: Iroha_Protocol_GetRolePermissions?
          if let current = _storage._query {
            try decoder.handleConflictingOneOf()
            if case .getRolePermissions(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._query = .getRolePermissions(v)}
        case 12:
          var v: Iroha_Protocol_GetAssetInfo?
          if let current = _storage._query {
            try decoder.handleConflictingOneOf()
            if case .getAssetInfo(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._query = .getAssetInfo(v)}
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._meta {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      switch _storage._query {
      case .getAccount(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case .getAccountSignatories(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      case .getAccountTransactions(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      case .getAccountAssetTransactions(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      case .getTransactions(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      case .getAccountAssets(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      case .getAccountDetail(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      case .getRoles(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      case .getRolePermissions(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      case .getAssetInfo(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_Query.Payload) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._meta != other_storage._meta {return false}
        if _storage._query != other_storage._query {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Iroha_Protocol_BlocksQuery: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BlocksQuery"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "meta"),
    2: .same(proto: "signature"),
  ]

  fileprivate class _StorageClass {
    var _meta: Iroha_Protocol_QueryPayloadMeta? = nil
    var _signature: Iroha_Protocol_Signature? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _meta = source._meta
      _signature = source._signature
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._meta)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._signature)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._meta {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._signature {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  func _protobuf_generated_isEqualTo(other: Iroha_Protocol_BlocksQuery) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._meta != other_storage._meta {return false}
        if _storage._signature != other_storage._signature {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
