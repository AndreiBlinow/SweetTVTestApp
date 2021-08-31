// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: category.proto
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

struct TvService_Category {
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

  var caption: String {
    get {return _caption ?? String()}
    set {_caption = newValue}
  }
  /// Returns true if `caption` has been explicitly set.
  var hasCaption: Bool {return self._caption != nil}
  /// Clears the value of `caption`. Subsequent reads from it will return its default value.
  mutating func clearCaption() {self._caption = nil}

  var icon: Data {
    get {return _icon ?? Data()}
    set {_icon = newValue}
  }
  /// Returns true if `icon` has been explicitly set.
  var hasIcon: Bool {return self._icon != nil}
  /// Clears the value of `icon`. Subsequent reads from it will return its default value.
  mutating func clearIcon() {self._icon = nil}

  var order: Int32 {
    get {return _order ?? 0}
    set {_order = newValue}
  }
  /// Returns true if `order` has been explicitly set.
  var hasOrder: Bool {return self._order != nil}
  /// Clears the value of `order`. Subsequent reads from it will return its default value.
  mutating func clearOrder() {self._order = nil}

  var iconURL: String {
    get {return _iconURL ?? String()}
    set {_iconURL = newValue}
  }
  /// Returns true if `iconURL` has been explicitly set.
  var hasIconURL: Bool {return self._iconURL != nil}
  /// Clears the value of `iconURL`. Subsequent reads from it will return its default value.
  mutating func clearIconURL() {self._iconURL = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _id: Int32? = nil
  fileprivate var _caption: String? = nil
  fileprivate var _icon: Data? = nil
  fileprivate var _order: Int32? = nil
  fileprivate var _iconURL: String? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tv_service"

extension TvService_Category: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Category"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "caption"),
    3: .same(proto: "icon"),
    4: .same(proto: "order"),
    5: .standard(proto: "icon_url"),
  ]

  public var isInitialized: Bool {
    if self._id == nil {return false}
    if self._caption == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._caption) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self._icon) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self._order) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self._iconURL) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._id {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    if let v = self._caption {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    if let v = self._icon {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
    }
    if let v = self._order {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 4)
    }
    if let v = self._iconURL {
      try visitor.visitSingularStringField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TvService_Category, rhs: TvService_Category) -> Bool {
    if lhs._id != rhs._id {return false}
    if lhs._caption != rhs._caption {return false}
    if lhs._icon != rhs._icon {return false}
    if lhs._order != rhs._order {return false}
    if lhs._iconURL != rhs._iconURL {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}