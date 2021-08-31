// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tv_show.proto
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

struct TvService_Record {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var channelID: Int32 {
    get {return _channelID ?? 0}
    set {_channelID = newValue}
  }
  /// Returns true if `channelID` has been explicitly set.
  var hasChannelID: Bool {return self._channelID != nil}
  /// Clears the value of `channelID`. Subsequent reads from it will return its default value.
  mutating func clearChannelID() {self._channelID = nil}

  var epgID: Int32 {
    get {return _epgID ?? 0}
    set {_epgID = newValue}
  }
  /// Returns true if `epgID` has been explicitly set.
  var hasEpgID: Bool {return self._epgID != nil}
  /// Clears the value of `epgID`. Subsequent reads from it will return its default value.
  mutating func clearEpgID() {self._epgID = nil}

  var title: String {
    get {return _title ?? String()}
    set {_title = newValue}
  }
  /// Returns true if `title` has been explicitly set.
  var hasTitle: Bool {return self._title != nil}
  /// Clears the value of `title`. Subsequent reads from it will return its default value.
  mutating func clearTitle() {self._title = nil}

  var available: Bool {
    get {return _available ?? true}
    set {_available = newValue}
  }
  /// Returns true if `available` has been explicitly set.
  var hasAvailable: Bool {return self._available != nil}
  /// Clears the value of `available`. Subsequent reads from it will return its default value.
  mutating func clearAvailable() {self._available = nil}

  var tariffs: [Int32] = []

  var imageURL: String {
    get {return _imageURL ?? String()}
    set {_imageURL = newValue}
  }
  /// Returns true if `imageURL` has been explicitly set.
  var hasImageURL: Bool {return self._imageURL != nil}
  /// Clears the value of `imageURL`. Subsequent reads from it will return its default value.
  mutating func clearImageURL() {self._imageURL = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _channelID: Int32? = nil
  fileprivate var _epgID: Int32? = nil
  fileprivate var _title: String? = nil
  fileprivate var _available: Bool? = nil
  fileprivate var _imageURL: String? = nil
}

struct TvService_TvShow {
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

  var title: String {
    get {return _title ?? String()}
    set {_title = newValue}
  }
  /// Returns true if `title` has been explicitly set.
  var hasTitle: Bool {return self._title != nil}
  /// Clears the value of `title`. Subsequent reads from it will return its default value.
  mutating func clearTitle() {self._title = nil}

  var description_p: String {
    get {return _description_p ?? String()}
    set {_description_p = newValue}
  }
  /// Returns true if `description_p` has been explicitly set.
  var hasDescription_p: Bool {return self._description_p != nil}
  /// Clears the value of `description_p`. Subsequent reads from it will return its default value.
  mutating func clearDescription_p() {self._description_p = nil}

  var lastShowDate: String {
    get {return _lastShowDate ?? String()}
    set {_lastShowDate = newValue}
  }
  /// Returns true if `lastShowDate` has been explicitly set.
  var hasLastShowDate: Bool {return self._lastShowDate != nil}
  /// Clears the value of `lastShowDate`. Subsequent reads from it will return its default value.
  mutating func clearLastShowDate() {self._lastShowDate = nil}

  var productionYear: Int32 {
    get {return _productionYear ?? 0}
    set {_productionYear = newValue}
  }
  /// Returns true if `productionYear` has been explicitly set.
  var hasProductionYear: Bool {return self._productionYear != nil}
  /// Clears the value of `productionYear`. Subsequent reads from it will return its default value.
  mutating func clearProductionYear() {self._productionYear = nil}

  var duration: Int32 {
    get {return _duration ?? 0}
    set {_duration = newValue}
  }
  /// Returns true if `duration` has been explicitly set.
  var hasDuration: Bool {return self._duration != nil}
  /// Clears the value of `duration`. Subsequent reads from it will return its default value.
  mutating func clearDuration() {self._duration = nil}

  var ageLimit: Int32 {
    get {return _ageLimit ?? 0}
    set {_ageLimit = newValue}
  }
  /// Returns true if `ageLimit` has been explicitly set.
  var hasAgeLimit: Bool {return self._ageLimit != nil}
  /// Clears the value of `ageLimit`. Subsequent reads from it will return its default value.
  mutating func clearAgeLimit() {self._ageLimit = nil}

  var rating: Float {
    get {return _rating ?? 0}
    set {_rating = newValue}
  }
  /// Returns true if `rating` has been explicitly set.
  var hasRating: Bool {return self._rating != nil}
  /// Clears the value of `rating`. Subsequent reads from it will return its default value.
  mutating func clearRating() {self._rating = nil}

  var posterURL: String {
    get {return _posterURL ?? String()}
    set {_posterURL = newValue}
  }
  /// Returns true if `posterURL` has been explicitly set.
  var hasPosterURL: Bool {return self._posterURL != nil}
  /// Clears the value of `posterURL`. Subsequent reads from it will return its default value.
  mutating func clearPosterURL() {self._posterURL = nil}

  var bannerURL: String {
    get {return _bannerURL ?? String()}
    set {_bannerURL = newValue}
  }
  /// Returns true if `bannerURL` has been explicitly set.
  var hasBannerURL: Bool {return self._bannerURL != nil}
  /// Clears the value of `bannerURL`. Subsequent reads from it will return its default value.
  mutating func clearBannerURL() {self._bannerURL = nil}

  var genres: [Int32] = []

  var people: [Int32] = []

  var slug: String {
    get {return _slug ?? String()}
    set {_slug = newValue}
  }
  /// Returns true if `slug` has been explicitly set.
  var hasSlug: Bool {return self._slug != nil}
  /// Clears the value of `slug`. Subsequent reads from it will return its default value.
  mutating func clearSlug() {self._slug = nil}

  var trailerURL: String {
    get {return _trailerURL ?? String()}
    set {_trailerURL = newValue}
  }
  /// Returns true if `trailerURL` has been explicitly set.
  var hasTrailerURL: Bool {return self._trailerURL != nil}
  /// Clears the value of `trailerURL`. Subsequent reads from it will return its default value.
  mutating func clearTrailerURL() {self._trailerURL = nil}

  var records: [TvService_Record] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _id: Int32? = nil
  fileprivate var _title: String? = nil
  fileprivate var _description_p: String? = nil
  fileprivate var _lastShowDate: String? = nil
  fileprivate var _productionYear: Int32? = nil
  fileprivate var _duration: Int32? = nil
  fileprivate var _ageLimit: Int32? = nil
  fileprivate var _rating: Float? = nil
  fileprivate var _posterURL: String? = nil
  fileprivate var _bannerURL: String? = nil
  fileprivate var _slug: String? = nil
  fileprivate var _trailerURL: String? = nil
}

struct TvService_GetTvShowInfoRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var tvShows: [Int32] = []

  var offset: Int32 {
    get {return _offset ?? 0}
    set {_offset = newValue}
  }
  /// Returns true if `offset` has been explicitly set.
  var hasOffset: Bool {return self._offset != nil}
  /// Clears the value of `offset`. Subsequent reads from it will return its default value.
  mutating func clearOffset() {self._offset = nil}

  var limit: Int32 {
    get {return _limit ?? 0}
    set {_limit = newValue}
  }
  /// Returns true if `limit` has been explicitly set.
  var hasLimit: Bool {return self._limit != nil}
  /// Clears the value of `limit`. Subsequent reads from it will return its default value.
  mutating func clearLimit() {self._limit = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _offset: Int32? = nil
  fileprivate var _limit: Int32? = nil
}

struct TvService_GetTvShowInfoResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var tvShows: [TvService_TvShow] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tv_service"

extension TvService_Record: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Record"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "channel_id"),
    2: .standard(proto: "epg_id"),
    3: .same(proto: "title"),
    4: .same(proto: "available"),
    5: .same(proto: "tariffs"),
    6: .standard(proto: "image_url"),
  ]

  public var isInitialized: Bool {
    if self._channelID == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._channelID) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self._epgID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._title) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self._available) }()
      case 5: try { try decoder.decodeRepeatedInt32Field(value: &self.tariffs) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self._imageURL) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._channelID {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    if let v = self._epgID {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
    }
    if let v = self._title {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    }
    if let v = self._available {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 4)
    }
    if !self.tariffs.isEmpty {
      try visitor.visitRepeatedInt32Field(value: self.tariffs, fieldNumber: 5)
    }
    if let v = self._imageURL {
      try visitor.visitSingularStringField(value: v, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TvService_Record, rhs: TvService_Record) -> Bool {
    if lhs._channelID != rhs._channelID {return false}
    if lhs._epgID != rhs._epgID {return false}
    if lhs._title != rhs._title {return false}
    if lhs._available != rhs._available {return false}
    if lhs.tariffs != rhs.tariffs {return false}
    if lhs._imageURL != rhs._imageURL {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TvService_TvShow: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TvShow"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "title"),
    3: .same(proto: "description"),
    4: .standard(proto: "last_show_date"),
    5: .standard(proto: "production_year"),
    6: .same(proto: "duration"),
    7: .standard(proto: "age_limit"),
    8: .same(proto: "rating"),
    9: .standard(proto: "poster_url"),
    10: .standard(proto: "banner_url"),
    11: .same(proto: "genres"),
    12: .same(proto: "people"),
    13: .same(proto: "slug"),
    14: .standard(proto: "trailer_url"),
    15: .same(proto: "records"),
  ]

  public var isInitialized: Bool {
    if self._id == nil {return false}
    if !SwiftProtobuf.Internal.areAllInitialized(self.records) {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._title) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._description_p) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self._lastShowDate) }()
      case 5: try { try decoder.decodeSingularInt32Field(value: &self._productionYear) }()
      case 6: try { try decoder.decodeSingularInt32Field(value: &self._duration) }()
      case 7: try { try decoder.decodeSingularInt32Field(value: &self._ageLimit) }()
      case 8: try { try decoder.decodeSingularFloatField(value: &self._rating) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self._posterURL) }()
      case 10: try { try decoder.decodeSingularStringField(value: &self._bannerURL) }()
      case 11: try { try decoder.decodeRepeatedInt32Field(value: &self.genres) }()
      case 12: try { try decoder.decodeRepeatedInt32Field(value: &self.people) }()
      case 13: try { try decoder.decodeSingularStringField(value: &self._slug) }()
      case 14: try { try decoder.decodeSingularStringField(value: &self._trailerURL) }()
      case 15: try { try decoder.decodeRepeatedMessageField(value: &self.records) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._id {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    }
    if let v = self._title {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    if let v = self._description_p {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    }
    if let v = self._lastShowDate {
      try visitor.visitSingularStringField(value: v, fieldNumber: 4)
    }
    if let v = self._productionYear {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 5)
    }
    if let v = self._duration {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 6)
    }
    if let v = self._ageLimit {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 7)
    }
    if let v = self._rating {
      try visitor.visitSingularFloatField(value: v, fieldNumber: 8)
    }
    if let v = self._posterURL {
      try visitor.visitSingularStringField(value: v, fieldNumber: 9)
    }
    if let v = self._bannerURL {
      try visitor.visitSingularStringField(value: v, fieldNumber: 10)
    }
    if !self.genres.isEmpty {
      try visitor.visitRepeatedInt32Field(value: self.genres, fieldNumber: 11)
    }
    if !self.people.isEmpty {
      try visitor.visitRepeatedInt32Field(value: self.people, fieldNumber: 12)
    }
    if let v = self._slug {
      try visitor.visitSingularStringField(value: v, fieldNumber: 13)
    }
    if let v = self._trailerURL {
      try visitor.visitSingularStringField(value: v, fieldNumber: 14)
    }
    if !self.records.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.records, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TvService_TvShow, rhs: TvService_TvShow) -> Bool {
    if lhs._id != rhs._id {return false}
    if lhs._title != rhs._title {return false}
    if lhs._description_p != rhs._description_p {return false}
    if lhs._lastShowDate != rhs._lastShowDate {return false}
    if lhs._productionYear != rhs._productionYear {return false}
    if lhs._duration != rhs._duration {return false}
    if lhs._ageLimit != rhs._ageLimit {return false}
    if lhs._rating != rhs._rating {return false}
    if lhs._posterURL != rhs._posterURL {return false}
    if lhs._bannerURL != rhs._bannerURL {return false}
    if lhs.genres != rhs.genres {return false}
    if lhs.people != rhs.people {return false}
    if lhs._slug != rhs._slug {return false}
    if lhs._trailerURL != rhs._trailerURL {return false}
    if lhs.records != rhs.records {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TvService_GetTvShowInfoRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetTvShowInfoRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tv_shows"),
    2: .same(proto: "offset"),
    3: .same(proto: "limit"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedInt32Field(value: &self.tvShows) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self._offset) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self._limit) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.tvShows.isEmpty {
      try visitor.visitRepeatedInt32Field(value: self.tvShows, fieldNumber: 1)
    }
    if let v = self._offset {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
    }
    if let v = self._limit {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TvService_GetTvShowInfoRequest, rhs: TvService_GetTvShowInfoRequest) -> Bool {
    if lhs.tvShows != rhs.tvShows {return false}
    if lhs._offset != rhs._offset {return false}
    if lhs._limit != rhs._limit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TvService_GetTvShowInfoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetTvShowInfoResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "tv_shows"),
  ]

  public var isInitialized: Bool {
    if !SwiftProtobuf.Internal.areAllInitialized(self.tvShows) {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.tvShows) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.tvShows.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tvShows, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TvService_GetTvShowInfoResponse, rhs: TvService_GetTvShowInfoResponse) -> Bool {
    if lhs.tvShows != rhs.tvShows {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}