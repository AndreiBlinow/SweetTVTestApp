// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: http_streamer_link.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct TvService_HttpStreamerLink {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var link: String {
    get {return _link ?? String()}
    set {_link = newValue}
  }
  /// Returns true if `link` has been explicitly set.
  var hasLink: Bool {return self._link != nil}
  /// Clears the value of `link`. Subsequent reads from it will return its default value.
  mutating func clearLink() {self._link = nil}

  var auth: String {
    get {return _auth ?? String()}
    set {_auth = newValue}
  }
  /// Returns true if `auth` has been explicitly set.
  var hasAuth: Bool {return self._auth != nil}
  /// Clears the value of `auth`. Subsequent reads from it will return its default value.
  mutating func clearAuth() {self._auth = nil}

  var firstBatchSize: UInt32 {
    get {return _firstBatchSize ?? 0}
    set {_firstBatchSize = newValue}
  }
  /// Returns true if `firstBatchSize` has been explicitly set.
  var hasFirstBatchSize: Bool {return self._firstBatchSize != nil}
  /// Clears the value of `firstBatchSize`. Subsequent reads from it will return its default value.
  mutating func clearFirstBatchSize() {self._firstBatchSize = nil}

  var validUntil: UInt64 {
    get {return _validUntil ?? 0}
    set {_validUntil = newValue}
  }
  /// Returns true if `validUntil` has been explicitly set.
  var hasValidUntil: Bool {return self._validUntil != nil}
  /// Clears the value of `validUntil`. Subsequent reads from it will return its default value.
  mutating func clearValidUntil() {self._validUntil = nil}

  var ip: UInt32 {
    get {return _ip ?? 0}
    set {_ip = newValue}
  }
  /// Returns true if `ip` has been explicitly set.
  var hasIp: Bool {return self._ip != nil}
  /// Clears the value of `ip`. Subsequent reads from it will return its default value.
  mutating func clearIp() {self._ip = nil}

  var timeStart: UInt64 {
    get {return _timeStart ?? 0}
    set {_timeStart = newValue}
  }
  /// Returns true if `timeStart` has been explicitly set.
  var hasTimeStart: Bool {return self._timeStart != nil}
  /// Clears the value of `timeStart`. Subsequent reads from it will return its default value.
  mutating func clearTimeStart() {self._timeStart = nil}

  var timeStop: UInt64 {
    get {return _timeStop ?? 0}
    set {_timeStop = newValue}
  }
  /// Returns true if `timeStop` has been explicitly set.
  var hasTimeStop: Bool {return self._timeStop != nil}
  /// Clears the value of `timeStop`. Subsequent reads from it will return its default value.
  mutating func clearTimeStop() {self._timeStop = nil}

  var multistream: Bool {
    get {return _multistream ?? false}
    set {_multistream = newValue}
  }
  /// Returns true if `multistream` has been explicitly set.
  var hasMultistream: Bool {return self._multistream != nil}
  /// Clears the value of `multistream`. Subsequent reads from it will return its default value.
  mutating func clearMultistream() {self._multistream = nil}

  var streamName: String {
    get {return _streamName ?? String()}
    set {_streamName = newValue}
  }
  /// Returns true if `streamName` has been explicitly set.
  var hasStreamName: Bool {return self._streamName != nil}
  /// Clears the value of `streamName`. Subsequent reads from it will return its default value.
  mutating func clearStreamName() {self._streamName = nil}

  var contractID: UInt64 {
    get {return _contractID ?? 0}
    set {_contractID = newValue}
  }
  /// Returns true if `contractID` has been explicitly set.
  var hasContractID: Bool {return self._contractID != nil}
  /// Clears the value of `contractID`. Subsequent reads from it will return its default value.
  mutating func clearContractID() {self._contractID = nil}

  var locale: String {
    get {return _locale ?? String()}
    set {_locale = newValue}
  }
  /// Returns true if `locale` has been explicitly set.
  var hasLocale: Bool {return self._locale != nil}
  /// Clears the value of `locale`. Subsequent reads from it will return its default value.
  mutating func clearLocale() {self._locale = nil}

  var streamID: Int32 {
    get {return _streamID ?? 0}
    set {_streamID = newValue}
  }
  /// Returns true if `streamID` has been explicitly set.
  var hasStreamID: Bool {return self._streamID != nil}
  /// Clears the value of `streamID`. Subsequent reads from it will return its default value.
  mutating func clearStreamID() {self._streamID = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _link: String? = nil
  fileprivate var _auth: String? = nil
  fileprivate var _firstBatchSize: UInt32? = nil
  fileprivate var _validUntil: UInt64? = nil
  fileprivate var _ip: UInt32? = nil
  fileprivate var _timeStart: UInt64? = nil
  fileprivate var _timeStop: UInt64? = nil
  fileprivate var _multistream: Bool? = nil
  fileprivate var _streamName: String? = nil
  fileprivate var _contractID: UInt64? = nil
  fileprivate var _locale: String? = nil
  fileprivate var _streamID: Int32? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tv_service"

extension TvService_HttpStreamerLink: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".HttpStreamerLink"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "link"),
    2: .same(proto: "auth"),
    3: .standard(proto: "first_batch_size"),
    4: .standard(proto: "valid_until"),
    5: .same(proto: "ip"),
    6: .standard(proto: "time_start"),
    7: .standard(proto: "time_stop"),
    8: .same(proto: "multistream"),
    9: .standard(proto: "stream_name"),
    10: .standard(proto: "contract_id"),
    11: .same(proto: "locale"),
    12: .standard(proto: "stream_id"),
  ]

  public var isInitialized: Bool {
    if self._link == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._link) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._auth) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self._firstBatchSize) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self._validUntil) }()
      case 5: try { try decoder.decodeSingularUInt32Field(value: &self._ip) }()
      case 6: try { try decoder.decodeSingularUInt64Field(value: &self._timeStart) }()
      case 7: try { try decoder.decodeSingularUInt64Field(value: &self._timeStop) }()
      case 8: try { try decoder.decodeSingularBoolField(value: &self._multistream) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self._streamName) }()
      case 10: try { try decoder.decodeSingularUInt64Field(value: &self._contractID) }()
      case 11: try { try decoder.decodeSingularStringField(value: &self._locale) }()
      case 12: try { try decoder.decodeSingularInt32Field(value: &self._streamID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._link {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }
    if let v = self._auth {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    if let v = self._firstBatchSize {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 3)
    }
    if let v = self._validUntil {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 4)
    }
    if let v = self._ip {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 5)
    }
    if let v = self._timeStart {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 6)
    }
    if let v = self._timeStop {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 7)
    }
    if let v = self._multistream {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 8)
    }
    if let v = self._streamName {
      try visitor.visitSingularStringField(value: v, fieldNumber: 9)
    }
    if let v = self._contractID {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 10)
    }
    if let v = self._locale {
      try visitor.visitSingularStringField(value: v, fieldNumber: 11)
    }
    if let v = self._streamID {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 12)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TvService_HttpStreamerLink, rhs: TvService_HttpStreamerLink) -> Bool {
    if lhs._link != rhs._link {return false}
    if lhs._auth != rhs._auth {return false}
    if lhs._firstBatchSize != rhs._firstBatchSize {return false}
    if lhs._validUntil != rhs._validUntil {return false}
    if lhs._ip != rhs._ip {return false}
    if lhs._timeStart != rhs._timeStart {return false}
    if lhs._timeStop != rhs._timeStop {return false}
    if lhs._multistream != rhs._multistream {return false}
    if lhs._streamName != rhs._streamName {return false}
    if lhs._contractID != rhs._contractID {return false}
    if lhs._locale != rhs._locale {return false}
    if lhs._streamID != rhs._streamID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
