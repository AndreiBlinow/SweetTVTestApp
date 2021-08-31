// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: epg.proto
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

struct TvService_EpgRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: Int32 {
    get {return _id ?? 0}
    set {_id = newValue}
  }
  /// Returns true if `id` has been explicitly set.
  var hasID: Bool {return self._id != nil}
  /// Clears the value of `id`. Subsequent reads from it will return its default value.
  mutating func clearID() {self._id = nil}

  var text: String {
    get {return _text ?? String()}
    set {_text = newValue}
  }
  /// Returns true if `text` has been explicitly set.
  var hasText: Bool {return self._text != nil}
  /// Clears the value of `text`. Subsequent reads from it will return its default value.
  mutating func clearText() {self._text = nil}

  var timeStart: Int64 {
    get {return _timeStart ?? 0}
    set {_timeStart = newValue}
  }
  /// Returns true if `timeStart` has been explicitly set.
  var hasTimeStart: Bool {return self._timeStart != nil}
  /// Clears the value of `timeStart`. Subsequent reads from it will return its default value.
  mutating func clearTimeStart() {self._timeStart = nil}

  var timeStop: Int64 {
    get {return _timeStop ?? 0}
    set {_timeStop = newValue}
  }
  /// Returns true if `timeStop` has been explicitly set.
  var hasTimeStop: Bool {return self._timeStop != nil}
  /// Clears the value of `timeStop`. Subsequent reads from it will return its default value.
  mutating func clearTimeStop() {self._timeStop = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _id: Int32? = nil
  fileprivate var _text: String? = nil
  fileprivate var _timeStart: Int64? = nil
  fileprivate var _timeStop: Int64? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tv_service"

extension TvService_EpgRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".EpgRecord"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "text"),
    3: .standard(proto: "time_start"),
    4: .standard(proto: "time_stop"),
  ]

  public var isInitialized: Bool {
    if self._id == nil {return false}
    if self._text == nil {return false}
    if self._timeStart == nil {return false}
    if self._timeStop == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._text) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self._timeStart) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self._timeStop) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._id {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    if let v = self._text {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    if let v = self._timeStart {
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 3)
    }
    if let v = self._timeStop {
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TvService_EpgRecord, rhs: TvService_EpgRecord) -> Bool {
    if lhs._id != rhs._id {return false}
    if lhs._text != rhs._text {return false}
    if lhs._timeStart != rhs._timeStart {return false}
    if lhs._timeStop != rhs._timeStop {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}