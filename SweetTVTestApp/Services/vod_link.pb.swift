// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: vod_link.proto
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

enum MovieService_DRMType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case drmNone // = 0
  case drmAes // = 1
  case drmWidevine // = 2
  case drmPlayready // = 3
  case drmFairplay // = 4

  init() {
    self = .drmNone
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .drmNone
    case 1: self = .drmAes
    case 2: self = .drmWidevine
    case 3: self = .drmPlayready
    case 4: self = .drmFairplay
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .drmNone: return 0
    case .drmAes: return 1
    case .drmWidevine: return 2
    case .drmPlayready: return 3
    case .drmFairplay: return 4
    }
  }

}

#if swift(>=4.2)

extension MovieService_DRMType: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

enum MovieService_AllowedTracks: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case sdOnly // = 0
  case sdHd // = 1
  case sdUhd1 // = 2
  case sdUhd2 // = 3

  init() {
    self = .sdOnly
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .sdOnly
    case 1: self = .sdHd
    case 2: self = .sdUhd1
    case 3: self = .sdUhd2
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .sdOnly: return 0
    case .sdHd: return 1
    case .sdUhd1: return 2
    case .sdUhd2: return 3
    }
  }

}

#if swift(>=4.2)

extension MovieService_AllowedTracks: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

struct MovieService_VodLink {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var movieID: Int32 {
    get {return _movieID ?? 0}
    set {_movieID = newValue}
  }
  /// Returns true if `movieID` has been explicitly set.
  var hasMovieID: Bool {return self._movieID != nil}
  /// Clears the value of `movieID`. Subsequent reads from it will return its default value.
  mutating func clearMovieID() {self._movieID = nil}

  var episodeID: Int32 {
    get {return _episodeID ?? 0}
    set {_episodeID = newValue}
  }
  /// Returns true if `episodeID` has been explicitly set.
  var hasEpisodeID: Bool {return self._episodeID != nil}
  /// Clears the value of `episodeID`. Subsequent reads from it will return its default value.
  mutating func clearEpisodeID() {self._episodeID = nil}

  var ip: UInt32 {
    get {return _ip ?? 0}
    set {_ip = newValue}
  }
  /// Returns true if `ip` has been explicitly set.
  var hasIp: Bool {return self._ip != nil}
  /// Clears the value of `ip`. Subsequent reads from it will return its default value.
  mutating func clearIp() {self._ip = nil}

  var validUntil: UInt64 {
    get {return _validUntil ?? 0}
    set {_validUntil = newValue}
  }
  /// Returns true if `validUntil` has been explicitly set.
  var hasValidUntil: Bool {return self._validUntil != nil}
  /// Clears the value of `validUntil`. Subsequent reads from it will return its default value.
  mutating func clearValidUntil() {self._validUntil = nil}

  var videoQuality: Int32 {
    get {return _videoQuality ?? 0}
    set {_videoQuality = newValue}
  }
  /// Returns true if `videoQuality` has been explicitly set.
  var hasVideoQuality: Bool {return self._videoQuality != nil}
  /// Clears the value of `videoQuality`. Subsequent reads from it will return its default value.
  mutating func clearVideoQuality() {self._videoQuality = nil}

  var drmType: MovieService_DRMType {
    get {return _drmType ?? .drmNone}
    set {_drmType = newValue}
  }
  /// Returns true if `drmType` has been explicitly set.
  var hasDrmType: Bool {return self._drmType != nil}
  /// Clears the value of `drmType`. Subsequent reads from it will return its default value.
  mutating func clearDrmType() {self._drmType = nil}

  var audioTrack: Int32 {
    get {return _audioTrack ?? 0}
    set {_audioTrack = newValue}
  }
  /// Returns true if `audioTrack` has been explicitly set.
  var hasAudioTrack: Bool {return self._audioTrack != nil}
  /// Clears the value of `audioTrack`. Subsequent reads from it will return its default value.
  mutating func clearAudioTrack() {self._audioTrack = nil}

  var subtitleLanguage: String {
    get {return _subtitleLanguage ?? String()}
    set {_subtitleLanguage = newValue}
  }
  /// Returns true if `subtitleLanguage` has been explicitly set.
  var hasSubtitleLanguage: Bool {return self._subtitleLanguage != nil}
  /// Clears the value of `subtitleLanguage`. Subsequent reads from it will return its default value.
  mutating func clearSubtitleLanguage() {self._subtitleLanguage = nil}

  var cutDuration: UInt32 {
    get {return _cutDuration ?? 0}
    set {_cutDuration = newValue}
  }
  /// Returns true if `cutDuration` has been explicitly set.
  var hasCutDuration: Bool {return self._cutDuration != nil}
  /// Clears the value of `cutDuration`. Subsequent reads from it will return its default value.
  mutating func clearCutDuration() {self._cutDuration = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _movieID: Int32? = nil
  fileprivate var _episodeID: Int32? = nil
  fileprivate var _ip: UInt32? = nil
  fileprivate var _validUntil: UInt64? = nil
  fileprivate var _videoQuality: Int32? = nil
  fileprivate var _drmType: MovieService_DRMType? = nil
  fileprivate var _audioTrack: Int32? = nil
  fileprivate var _subtitleLanguage: String? = nil
  fileprivate var _cutDuration: UInt32? = nil
}

struct MovieService_VodDRMLink {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var contractID: UInt64 {
    get {return _contractID ?? 0}
    set {_contractID = newValue}
  }
  /// Returns true if `contractID` has been explicitly set.
  var hasContractID: Bool {return self._contractID != nil}
  /// Clears the value of `contractID`. Subsequent reads from it will return its default value.
  mutating func clearContractID() {self._contractID = nil}

  var contentID: String {
    get {return _contentID ?? String()}
    set {_contentID = newValue}
  }
  /// Returns true if `contentID` has been explicitly set.
  var hasContentID: Bool {return self._contentID != nil}
  /// Clears the value of `contentID`. Subsequent reads from it will return its default value.
  mutating func clearContentID() {self._contentID = nil}

  var allowedTracks: MovieService_AllowedTracks {
    get {return _allowedTracks ?? .sdOnly}
    set {_allowedTracks = newValue}
  }
  /// Returns true if `allowedTracks` has been explicitly set.
  var hasAllowedTracks: Bool {return self._allowedTracks != nil}
  /// Clears the value of `allowedTracks`. Subsequent reads from it will return its default value.
  mutating func clearAllowedTracks() {self._allowedTracks = nil}

  var ip: UInt32 {
    get {return _ip ?? 0}
    set {_ip = newValue}
  }
  /// Returns true if `ip` has been explicitly set.
  var hasIp: Bool {return self._ip != nil}
  /// Clears the value of `ip`. Subsequent reads from it will return its default value.
  mutating func clearIp() {self._ip = nil}

  var validUntil: UInt64 {
    get {return _validUntil ?? 0}
    set {_validUntil = newValue}
  }
  /// Returns true if `validUntil` has been explicitly set.
  var hasValidUntil: Bool {return self._validUntil != nil}
  /// Clears the value of `validUntil`. Subsequent reads from it will return its default value.
  mutating func clearValidUntil() {self._validUntil = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _contractID: UInt64? = nil
  fileprivate var _contentID: String? = nil
  fileprivate var _allowedTracks: MovieService_AllowedTracks? = nil
  fileprivate var _ip: UInt32? = nil
  fileprivate var _validUntil: UInt64? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "movie_service"

extension MovieService_DRMType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DRM_NONE"),
    1: .same(proto: "DRM_AES"),
    2: .same(proto: "DRM_WIDEVINE"),
    3: .same(proto: "DRM_PLAYREADY"),
    4: .same(proto: "DRM_FAIRPLAY"),
  ]
}

extension MovieService_AllowedTracks: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SD_ONLY"),
    1: .same(proto: "SD_HD"),
    2: .same(proto: "SD_UHD1"),
    3: .same(proto: "SD_UHD2"),
  ]
}

extension MovieService_VodLink: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VodLink"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "movie_id"),
    2: .standard(proto: "episode_id"),
    3: .same(proto: "ip"),
    4: .standard(proto: "valid_until"),
    5: .standard(proto: "video_quality"),
    6: .standard(proto: "drm_type"),
    7: .standard(proto: "audio_track"),
    8: .standard(proto: "subtitle_language"),
    9: .standard(proto: "cut_duration"),
  ]

  public var isInitialized: Bool {
    if self._movieID == nil {return false}
    if self._ip == nil {return false}
    if self._validUntil == nil {return false}
    if self._videoQuality == nil {return false}
    if self._drmType == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._movieID) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self._episodeID) }()
      case 3: try { try decoder.decodeSingularUInt32Field(value: &self._ip) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self._validUntil) }()
      case 5: try { try decoder.decodeSingularInt32Field(value: &self._videoQuality) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self._drmType) }()
      case 7: try { try decoder.decodeSingularInt32Field(value: &self._audioTrack) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self._subtitleLanguage) }()
      case 9: try { try decoder.decodeSingularUInt32Field(value: &self._cutDuration) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._movieID {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    if let v = self._episodeID {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
    }
    if let v = self._ip {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 3)
    }
    if let v = self._validUntil {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 4)
    }
    if let v = self._videoQuality {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 5)
    }
    if let v = self._drmType {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 6)
    }
    if let v = self._audioTrack {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 7)
    }
    if let v = self._subtitleLanguage {
      try visitor.visitSingularStringField(value: v, fieldNumber: 8)
    }
    if let v = self._cutDuration {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: MovieService_VodLink, rhs: MovieService_VodLink) -> Bool {
    if lhs._movieID != rhs._movieID {return false}
    if lhs._episodeID != rhs._episodeID {return false}
    if lhs._ip != rhs._ip {return false}
    if lhs._validUntil != rhs._validUntil {return false}
    if lhs._videoQuality != rhs._videoQuality {return false}
    if lhs._drmType != rhs._drmType {return false}
    if lhs._audioTrack != rhs._audioTrack {return false}
    if lhs._subtitleLanguage != rhs._subtitleLanguage {return false}
    if lhs._cutDuration != rhs._cutDuration {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension MovieService_VodDRMLink: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".VodDRMLink"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "contract_id"),
    2: .standard(proto: "content_id"),
    3: .standard(proto: "allowed_tracks"),
    4: .same(proto: "ip"),
    5: .standard(proto: "valid_until"),
  ]

  public var isInitialized: Bool {
    if self._contractID == nil {return false}
    if self._contentID == nil {return false}
    if self._allowedTracks == nil {return false}
    if self._ip == nil {return false}
    if self._validUntil == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self._contractID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._contentID) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self._allowedTracks) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self._ip) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self._validUntil) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._contractID {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 1)
    }
    if let v = self._contentID {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    if let v = self._allowedTracks {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 3)
    }
    if let v = self._ip {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 4)
    }
    if let v = self._validUntil {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: MovieService_VodDRMLink, rhs: MovieService_VodDRMLink) -> Bool {
    if lhs._contractID != rhs._contractID {return false}
    if lhs._contentID != rhs._contentID {return false}
    if lhs._allowedTracks != rhs._allowedTracks {return false}
    if lhs._ip != rhs._ip {return false}
    if lhs._validUntil != rhs._validUntil {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
