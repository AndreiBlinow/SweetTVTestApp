// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: channel.proto
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

struct TvService_Channel {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: Int32 {
    get {return _storage._id ?? 0}
    set {_uniqueStorage()._id = newValue}
  }
  /// Returns true if `id` has been explicitly set.
  var hasID: Bool {return _storage._id != nil}
  /// Clears the value of `id`. Subsequent reads from it will return its default value.
  mutating func clearID() {_uniqueStorage()._id = nil}

  var name: String {
    get {return _storage._name ?? String()}
    set {_uniqueStorage()._name = newValue}
  }
  /// Returns true if `name` has been explicitly set.
  var hasName: Bool {return _storage._name != nil}
  /// Clears the value of `name`. Subsequent reads from it will return its default value.
  mutating func clearName() {_uniqueStorage()._name = nil}

  var icon: Data {
    get {return _storage._icon ?? Data()}
    set {_uniqueStorage()._icon = newValue}
  }
  /// Returns true if `icon` has been explicitly set.
  var hasIcon: Bool {return _storage._icon != nil}
  /// Clears the value of `icon`. Subsequent reads from it will return its default value.
  mutating func clearIcon() {_uniqueStorage()._icon = nil}

  var epg: [TvService_EpgRecord] {
    get {return _storage._epg}
    set {_uniqueStorage()._epg = newValue}
  }

  var offset: [Int32] {
    get {return _storage._offset}
    set {_uniqueStorage()._offset = newValue}
  }

  var available: Bool {
    get {return _storage._available ?? true}
    set {_uniqueStorage()._available = newValue}
  }
  /// Returns true if `available` has been explicitly set.
  var hasAvailable: Bool {return _storage._available != nil}
  /// Clears the value of `available`. Subsequent reads from it will return its default value.
  mutating func clearAvailable() {_uniqueStorage()._available = nil}

  var hidden: Bool {
    get {return _storage._hidden ?? false}
    set {_uniqueStorage()._hidden = newValue}
  }
  /// Returns true if `hidden` has been explicitly set.
  var hasHidden: Bool {return _storage._hidden != nil}
  /// Clears the value of `hidden`. Subsequent reads from it will return its default value.
  mutating func clearHidden() {_uniqueStorage()._hidden = nil}

  var category: [Int32] {
    get {return _storage._category}
    set {_uniqueStorage()._category = newValue}
  }

  var hiddenInFullList: Bool {
    get {return _storage._hiddenInFullList ?? false}
    set {_uniqueStorage()._hiddenInFullList = newValue}
  }
  /// Returns true if `hiddenInFullList` has been explicitly set.
  var hasHiddenInFullList: Bool {return _storage._hiddenInFullList != nil}
  /// Clears the value of `hiddenInFullList`. Subsequent reads from it will return its default value.
  mutating func clearHiddenInFullList() {_uniqueStorage()._hiddenInFullList = nil}

  var iconBig: Data {
    get {return _storage._iconBig ?? Data()}
    set {_uniqueStorage()._iconBig = newValue}
  }
  /// Returns true if `iconBig` has been explicitly set.
  var hasIconBig: Bool {return _storage._iconBig != nil}
  /// Clears the value of `iconBig`. Subsequent reads from it will return its default value.
  mutating func clearIconBig() {_uniqueStorage()._iconBig = nil}

  var catchup: Bool {
    get {return _storage._catchup ?? false}
    set {_uniqueStorage()._catchup = newValue}
  }
  /// Returns true if `catchup` has been explicitly set.
  var hasCatchup: Bool {return _storage._catchup != nil}
  /// Clears the value of `catchup`. Subsequent reads from it will return its default value.
  mutating func clearCatchup() {_uniqueStorage()._catchup = nil}

  var catchupDuration: Int32 {
    get {return _storage._catchupDuration ?? 0}
    set {_uniqueStorage()._catchupDuration = newValue}
  }
  /// Returns true if `catchupDuration` has been explicitly set.
  var hasCatchupDuration: Bool {return _storage._catchupDuration != nil}
  /// Clears the value of `catchupDuration`. Subsequent reads from it will return its default value.
  mutating func clearCatchupDuration() {_uniqueStorage()._catchupDuration = nil}

  var iconURL: String {
    get {return _storage._iconURL ?? String()}
    set {_uniqueStorage()._iconURL = newValue}
  }
  /// Returns true if `iconURL` has been explicitly set.
  var hasIconURL: Bool {return _storage._iconURL != nil}
  /// Clears the value of `iconURL`. Subsequent reads from it will return its default value.
  mutating func clearIconURL() {_uniqueStorage()._iconURL = nil}

  var tariffs: [Int32] {
    get {return _storage._tariffs}
    set {_uniqueStorage()._tariffs = newValue}
  }

  var drm: Bool {
    get {return _storage._drm ?? false}
    set {_uniqueStorage()._drm = newValue}
  }
  /// Returns true if `drm` has been explicitly set.
  var hasDrm: Bool {return _storage._drm != nil}
  /// Clears the value of `drm`. Subsequent reads from it will return its default value.
  mutating func clearDrm() {_uniqueStorage()._drm = nil}

  var ownerID: Int32 {
    get {return _storage._ownerID ?? 0}
    set {_uniqueStorage()._ownerID = newValue}
  }
  /// Returns true if `ownerID` has been explicitly set.
  var hasOwnerID: Bool {return _storage._ownerID != nil}
  /// Clears the value of `ownerID`. Subsequent reads from it will return its default value.
  mutating func clearOwnerID() {_uniqueStorage()._ownerID = nil}

  var slug: String {
    get {return _storage._slug ?? String()}
    set {_uniqueStorage()._slug = newValue}
  }
  /// Returns true if `slug` has been explicitly set.
  var hasSlug: Bool {return _storage._slug != nil}
  /// Clears the value of `slug`. Subsequent reads from it will return its default value.
  mutating func clearSlug() {_uniqueStorage()._slug = nil}

  var number: Int32 {
    get {return _storage._number ?? 0}
    set {_uniqueStorage()._number = newValue}
  }
  /// Returns true if `number` has been explicitly set.
  var hasNumber: Bool {return _storage._number != nil}
  /// Clears the value of `number`. Subsequent reads from it will return its default value.
  mutating func clearNumber() {_uniqueStorage()._number = nil}

  var bannerURL: String {
    get {return _storage._bannerURL ?? String()}
    set {_uniqueStorage()._bannerURL = newValue}
  }
  /// Returns true if `bannerURL` has been explicitly set.
  var hasBannerURL: Bool {return _storage._bannerURL != nil}
  /// Clears the value of `bannerURL`. Subsequent reads from it will return its default value.
  mutating func clearBannerURL() {_uniqueStorage()._bannerURL = nil}

  var darkThemeIconURL: String {
    get {return _storage._darkThemeIconURL ?? String()}
    set {_uniqueStorage()._darkThemeIconURL = newValue}
  }
  /// Returns true if `darkThemeIconURL` has been explicitly set.
  var hasDarkThemeIconURL: Bool {return _storage._darkThemeIconURL != nil}
  /// Clears the value of `darkThemeIconURL`. Subsequent reads from it will return its default value.
  mutating func clearDarkThemeIconURL() {_uniqueStorage()._darkThemeIconURL = nil}

  var colour: String {
    get {return _storage._colour ?? String()}
    set {_uniqueStorage()._colour = newValue}
  }
  /// Returns true if `colour` has been explicitly set.
  var hasColour: Bool {return _storage._colour != nil}
  /// Clears the value of `colour`. Subsequent reads from it will return its default value.
  mutating func clearColour() {_uniqueStorage()._colour = nil}

  var iconV2URL: String {
    get {return _storage._iconV2URL ?? String()}
    set {_uniqueStorage()._iconV2URL = newValue}
  }
  /// Returns true if `iconV2URL` has been explicitly set.
  var hasIconV2URL: Bool {return _storage._iconV2URL != nil}
  /// Clears the value of `iconV2URL`. Subsequent reads from it will return its default value.
  mutating func clearIconV2URL() {_uniqueStorage()._iconV2URL = nil}

  var availabilityInfo: String {
    get {return _storage._availabilityInfo ?? String()}
    set {_uniqueStorage()._availabilityInfo = newValue}
  }
  /// Returns true if `availabilityInfo` has been explicitly set.
  var hasAvailabilityInfo: Bool {return _storage._availabilityInfo != nil}
  /// Clears the value of `availabilityInfo`. Subsequent reads from it will return its default value.
  mutating func clearAvailabilityInfo() {_uniqueStorage()._availabilityInfo = nil}

  var availabilityInfoColor: String {
    get {return _storage._availabilityInfoColor ?? String()}
    set {_uniqueStorage()._availabilityInfoColor = newValue}
  }
  /// Returns true if `availabilityInfoColor` has been explicitly set.
  var hasAvailabilityInfoColor: Bool {return _storage._availabilityInfoColor != nil}
  /// Clears the value of `availabilityInfoColor`. Subsequent reads from it will return its default value.
  mutating func clearAvailabilityInfoColor() {_uniqueStorage()._availabilityInfoColor = nil}

  /// 100+ reserved for flags
  var rewindDisabled: Bool {
    get {return _storage._rewindDisabled ?? false}
    set {_uniqueStorage()._rewindDisabled = newValue}
  }
  /// Returns true if `rewindDisabled` has been explicitly set.
  var hasRewindDisabled: Bool {return _storage._rewindDisabled != nil}
  /// Clears the value of `rewindDisabled`. Subsequent reads from it will return its default value.
  mutating func clearRewindDisabled() {_uniqueStorage()._rewindDisabled = nil}

  var fastForwardDisabled: Bool {
    get {return _storage._fastForwardDisabled ?? false}
    set {_uniqueStorage()._fastForwardDisabled = newValue}
  }
  /// Returns true if `fastForwardDisabled` has been explicitly set.
  var hasFastForwardDisabled: Bool {return _storage._fastForwardDisabled != nil}
  /// Clears the value of `fastForwardDisabled`. Subsequent reads from it will return its default value.
  mutating func clearFastForwardDisabled() {_uniqueStorage()._fastForwardDisabled = nil}

  var speedupDisabled: Bool {
    get {return _storage._speedupDisabled ?? false}
    set {_uniqueStorage()._speedupDisabled = newValue}
  }
  /// Returns true if `speedupDisabled` has been explicitly set.
  var hasSpeedupDisabled: Bool {return _storage._speedupDisabled != nil}
  /// Clears the value of `speedupDisabled`. Subsequent reads from it will return its default value.
  mutating func clearSpeedupDisabled() {_uniqueStorage()._speedupDisabled = nil}

  /// 200+ reserved for messages
  var rewindMessage: String {
    get {return _storage._rewindMessage ?? String()}
    set {_uniqueStorage()._rewindMessage = newValue}
  }
  /// Returns true if `rewindMessage` has been explicitly set.
  var hasRewindMessage: Bool {return _storage._rewindMessage != nil}
  /// Clears the value of `rewindMessage`. Subsequent reads from it will return its default value.
  mutating func clearRewindMessage() {_uniqueStorage()._rewindMessage = nil}

  var fastForwardMessage: String {
    get {return _storage._fastForwardMessage ?? String()}
    set {_uniqueStorage()._fastForwardMessage = newValue}
  }
  /// Returns true if `fastForwardMessage` has been explicitly set.
  var hasFastForwardMessage: Bool {return _storage._fastForwardMessage != nil}
  /// Clears the value of `fastForwardMessage`. Subsequent reads from it will return its default value.
  mutating func clearFastForwardMessage() {_uniqueStorage()._fastForwardMessage = nil}

  var speedupMessage: String {
    get {return _storage._speedupMessage ?? String()}
    set {_uniqueStorage()._speedupMessage = newValue}
  }
  /// Returns true if `speedupMessage` has been explicitly set.
  var hasSpeedupMessage: Bool {return _storage._speedupMessage != nil}
  /// Clears the value of `speedupMessage`. Subsequent reads from it will return its default value.
  mutating func clearSpeedupMessage() {_uniqueStorage()._speedupMessage = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tv_service"

extension TvService_Channel: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Channel"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "name"),
    3: .same(proto: "icon"),
    4: .same(proto: "epg"),
    5: .same(proto: "offset"),
    6: .same(proto: "available"),
    7: .same(proto: "hidden"),
    8: .same(proto: "category"),
    9: .standard(proto: "hidden_in_full_list"),
    10: .standard(proto: "icon_big"),
    11: .same(proto: "catchup"),
    12: .standard(proto: "catchup_duration"),
    13: .standard(proto: "icon_url"),
    14: .same(proto: "tariffs"),
    15: .same(proto: "drm"),
    16: .standard(proto: "owner_id"),
    17: .same(proto: "slug"),
    18: .same(proto: "number"),
    19: .standard(proto: "banner_url"),
    20: .standard(proto: "dark_theme_icon_url"),
    21: .same(proto: "colour"),
    22: .standard(proto: "icon_v2_url"),
    38: .standard(proto: "availability_info"),
    44: .standard(proto: "availability_info_color"),
    100: .standard(proto: "rewind_disabled"),
    101: .standard(proto: "fast_forward_disabled"),
    102: .standard(proto: "speedup_disabled"),
    200: .standard(proto: "rewind_message"),
    201: .standard(proto: "fast_forward_message"),
    202: .standard(proto: "speedup_message"),
  ]

  fileprivate class _StorageClass {
    var _id: Int32? = nil
    var _name: String? = nil
    var _icon: Data? = nil
    var _epg: [TvService_EpgRecord] = []
    var _offset: [Int32] = []
    var _available: Bool? = nil
    var _hidden: Bool? = nil
    var _category: [Int32] = []
    var _hiddenInFullList: Bool? = nil
    var _iconBig: Data? = nil
    var _catchup: Bool? = nil
    var _catchupDuration: Int32? = nil
    var _iconURL: String? = nil
    var _tariffs: [Int32] = []
    var _drm: Bool? = nil
    var _ownerID: Int32? = nil
    var _slug: String? = nil
    var _number: Int32? = nil
    var _bannerURL: String? = nil
    var _darkThemeIconURL: String? = nil
    var _colour: String? = nil
    var _iconV2URL: String? = nil
    var _availabilityInfo: String? = nil
    var _availabilityInfoColor: String? = nil
    var _rewindDisabled: Bool? = nil
    var _fastForwardDisabled: Bool? = nil
    var _speedupDisabled: Bool? = nil
    var _rewindMessage: String? = nil
    var _fastForwardMessage: String? = nil
    var _speedupMessage: String? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _name = source._name
      _icon = source._icon
      _epg = source._epg
      _offset = source._offset
      _available = source._available
      _hidden = source._hidden
      _category = source._category
      _hiddenInFullList = source._hiddenInFullList
      _iconBig = source._iconBig
      _catchup = source._catchup
      _catchupDuration = source._catchupDuration
      _iconURL = source._iconURL
      _tariffs = source._tariffs
      _drm = source._drm
      _ownerID = source._ownerID
      _slug = source._slug
      _number = source._number
      _bannerURL = source._bannerURL
      _darkThemeIconURL = source._darkThemeIconURL
      _colour = source._colour
      _iconV2URL = source._iconV2URL
      _availabilityInfo = source._availabilityInfo
      _availabilityInfoColor = source._availabilityInfoColor
      _rewindDisabled = source._rewindDisabled
      _fastForwardDisabled = source._fastForwardDisabled
      _speedupDisabled = source._speedupDisabled
      _rewindMessage = source._rewindMessage
      _fastForwardMessage = source._fastForwardMessage
      _speedupMessage = source._speedupMessage
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._id == nil {return false}
      if _storage._name == nil {return false}
      if _storage._hidden == nil {return false}
      if !SwiftProtobuf.Internal.areAllInitialized(_storage._epg) {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularInt32Field(value: &_storage._id) }()
        case 2: try { try decoder.decodeSingularStringField(value: &_storage._name) }()
        case 3: try { try decoder.decodeSingularBytesField(value: &_storage._icon) }()
        case 4: try { try decoder.decodeRepeatedMessageField(value: &_storage._epg) }()
        case 5: try { try decoder.decodeRepeatedInt32Field(value: &_storage._offset) }()
        case 6: try { try decoder.decodeSingularBoolField(value: &_storage._available) }()
        case 7: try { try decoder.decodeSingularBoolField(value: &_storage._hidden) }()
        case 8: try { try decoder.decodeRepeatedInt32Field(value: &_storage._category) }()
        case 9: try { try decoder.decodeSingularBoolField(value: &_storage._hiddenInFullList) }()
        case 10: try { try decoder.decodeSingularBytesField(value: &_storage._iconBig) }()
        case 11: try { try decoder.decodeSingularBoolField(value: &_storage._catchup) }()
        case 12: try { try decoder.decodeSingularInt32Field(value: &_storage._catchupDuration) }()
        case 13: try { try decoder.decodeSingularStringField(value: &_storage._iconURL) }()
        case 14: try { try decoder.decodeRepeatedInt32Field(value: &_storage._tariffs) }()
        case 15: try { try decoder.decodeSingularBoolField(value: &_storage._drm) }()
        case 16: try { try decoder.decodeSingularInt32Field(value: &_storage._ownerID) }()
        case 17: try { try decoder.decodeSingularStringField(value: &_storage._slug) }()
        case 18: try { try decoder.decodeSingularInt32Field(value: &_storage._number) }()
        case 19: try { try decoder.decodeSingularStringField(value: &_storage._bannerURL) }()
        case 20: try { try decoder.decodeSingularStringField(value: &_storage._darkThemeIconURL) }()
        case 21: try { try decoder.decodeSingularStringField(value: &_storage._colour) }()
        case 22: try { try decoder.decodeSingularStringField(value: &_storage._iconV2URL) }()
        case 38: try { try decoder.decodeSingularStringField(value: &_storage._availabilityInfo) }()
        case 44: try { try decoder.decodeSingularStringField(value: &_storage._availabilityInfoColor) }()
        case 100: try { try decoder.decodeSingularBoolField(value: &_storage._rewindDisabled) }()
        case 101: try { try decoder.decodeSingularBoolField(value: &_storage._fastForwardDisabled) }()
        case 102: try { try decoder.decodeSingularBoolField(value: &_storage._speedupDisabled) }()
        case 200: try { try decoder.decodeSingularStringField(value: &_storage._rewindMessage) }()
        case 201: try { try decoder.decodeSingularStringField(value: &_storage._fastForwardMessage) }()
        case 202: try { try decoder.decodeSingularStringField(value: &_storage._speedupMessage) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._id {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
      }
      if let v = _storage._name {
        try visitor.visitSingularStringField(value: v, fieldNumber: 2)
      }
      if let v = _storage._icon {
        try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
      }
      if !_storage._epg.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._epg, fieldNumber: 4)
      }
      if !_storage._offset.isEmpty {
        try visitor.visitRepeatedInt32Field(value: _storage._offset, fieldNumber: 5)
      }
      if let v = _storage._available {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 6)
      }
      if let v = _storage._hidden {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 7)
      }
      if !_storage._category.isEmpty {
        try visitor.visitRepeatedInt32Field(value: _storage._category, fieldNumber: 8)
      }
      if let v = _storage._hiddenInFullList {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 9)
      }
      if let v = _storage._iconBig {
        try visitor.visitSingularBytesField(value: v, fieldNumber: 10)
      }
      if let v = _storage._catchup {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 11)
      }
      if let v = _storage._catchupDuration {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 12)
      }
      if let v = _storage._iconURL {
        try visitor.visitSingularStringField(value: v, fieldNumber: 13)
      }
      if !_storage._tariffs.isEmpty {
        try visitor.visitRepeatedInt32Field(value: _storage._tariffs, fieldNumber: 14)
      }
      if let v = _storage._drm {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 15)
      }
      if let v = _storage._ownerID {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 16)
      }
      if let v = _storage._slug {
        try visitor.visitSingularStringField(value: v, fieldNumber: 17)
      }
      if let v = _storage._number {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 18)
      }
      if let v = _storage._bannerURL {
        try visitor.visitSingularStringField(value: v, fieldNumber: 19)
      }
      if let v = _storage._darkThemeIconURL {
        try visitor.visitSingularStringField(value: v, fieldNumber: 20)
      }
      if let v = _storage._colour {
        try visitor.visitSingularStringField(value: v, fieldNumber: 21)
      }
      if let v = _storage._iconV2URL {
        try visitor.visitSingularStringField(value: v, fieldNumber: 22)
      }
      if let v = _storage._availabilityInfo {
        try visitor.visitSingularStringField(value: v, fieldNumber: 38)
      }
      if let v = _storage._availabilityInfoColor {
        try visitor.visitSingularStringField(value: v, fieldNumber: 44)
      }
      if let v = _storage._rewindDisabled {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 100)
      }
      if let v = _storage._fastForwardDisabled {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 101)
      }
      if let v = _storage._speedupDisabled {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 102)
      }
      if let v = _storage._rewindMessage {
        try visitor.visitSingularStringField(value: v, fieldNumber: 200)
      }
      if let v = _storage._fastForwardMessage {
        try visitor.visitSingularStringField(value: v, fieldNumber: 201)
      }
      if let v = _storage._speedupMessage {
        try visitor.visitSingularStringField(value: v, fieldNumber: 202)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TvService_Channel, rhs: TvService_Channel) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._id != rhs_storage._id {return false}
        if _storage._name != rhs_storage._name {return false}
        if _storage._icon != rhs_storage._icon {return false}
        if _storage._epg != rhs_storage._epg {return false}
        if _storage._offset != rhs_storage._offset {return false}
        if _storage._available != rhs_storage._available {return false}
        if _storage._hidden != rhs_storage._hidden {return false}
        if _storage._category != rhs_storage._category {return false}
        if _storage._hiddenInFullList != rhs_storage._hiddenInFullList {return false}
        if _storage._iconBig != rhs_storage._iconBig {return false}
        if _storage._catchup != rhs_storage._catchup {return false}
        if _storage._catchupDuration != rhs_storage._catchupDuration {return false}
        if _storage._iconURL != rhs_storage._iconURL {return false}
        if _storage._tariffs != rhs_storage._tariffs {return false}
        if _storage._drm != rhs_storage._drm {return false}
        if _storage._ownerID != rhs_storage._ownerID {return false}
        if _storage._slug != rhs_storage._slug {return false}
        if _storage._number != rhs_storage._number {return false}
        if _storage._bannerURL != rhs_storage._bannerURL {return false}
        if _storage._darkThemeIconURL != rhs_storage._darkThemeIconURL {return false}
        if _storage._colour != rhs_storage._colour {return false}
        if _storage._iconV2URL != rhs_storage._iconV2URL {return false}
        if _storage._availabilityInfo != rhs_storage._availabilityInfo {return false}
        if _storage._availabilityInfoColor != rhs_storage._availabilityInfoColor {return false}
        if _storage._rewindDisabled != rhs_storage._rewindDisabled {return false}
        if _storage._fastForwardDisabled != rhs_storage._fastForwardDisabled {return false}
        if _storage._speedupDisabled != rhs_storage._speedupDisabled {return false}
        if _storage._rewindMessage != rhs_storage._rewindMessage {return false}
        if _storage._fastForwardMessage != rhs_storage._fastForwardMessage {return false}
        if _storage._speedupMessage != rhs_storage._speedupMessage {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
