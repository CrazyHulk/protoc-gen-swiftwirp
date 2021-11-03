// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: example/cmd/haberdasher/service.proto
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

/// A Hat is a piece of headwear made by a Haberdasher.
struct Haberdasher_Hat {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The size of a hat should always be in inches.
  var size: Int32 = 0

  /// The color of a hat will never be 'invisible', but other than
  /// that, anything is fair game.
  var color: String = String()

  /// The name of a hat is it's type. Like, 'bowler', or something.
  var name: String = String()

  var createdOn: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createdOn ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createdOn = newValue}
  }
  /// Returns true if `createdOn` has been explicitly set.
  var hasCreatedOn: Bool {return self._createdOn != nil}
  /// Clears the value of `createdOn`. Subsequent reads from it will return its default value.
  mutating func clearCreatedOn() {self._createdOn = nil}

  var rgbColor: Haberdasher_Color {
    get {return _rgbColor ?? Haberdasher_Color()}
    set {_rgbColor = newValue}
  }
  /// Returns true if `rgbColor` has been explicitly set.
  var hasRgbColor: Bool {return self._rgbColor != nil}
  /// Clears the value of `rgbColor`. Subsequent reads from it will return its default value.
  mutating func clearRgbColor() {self._rgbColor = nil}

  var availableSizes: [Haberdasher_Size] = []

  var roles: [Int32] = []

  var dictionary: Dictionary<String,Int64> = [:]

  var dictionaryWithMessage: Dictionary<String,Haberdasher_Size> = [:]

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _createdOn: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _rgbColor: Haberdasher_Color? = nil
}

struct Haberdasher_Color {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var red: Int32 = 0

  var green: Int32 = 0

  var blue: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Haberdasher_Receipt {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var total: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Size is passed when requesting a new hat to be made. It's always
/// measured in inches.
struct Haberdasher_Size {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var inches: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "haberdasher"

extension Haberdasher_Hat: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Hat"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "size"),
    2: .same(proto: "color"),
    3: .same(proto: "name"),
    4: .standard(proto: "created_on"),
    5: .same(proto: "rgbColor"),
    6: .same(proto: "availableSizes"),
    7: .same(proto: "roles"),
    8: .same(proto: "dictionary"),
    9: .same(proto: "dictionaryWithMessage"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.size) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.color) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._createdOn) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._rgbColor) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.availableSizes) }()
      case 7: try { try decoder.decodeRepeatedInt32Field(value: &self.roles) }()
      case 8: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufInt64>.self, value: &self.dictionary) }()
      case 9: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Haberdasher_Size>.self, value: &self.dictionaryWithMessage) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.size != 0 {
      try visitor.visitSingularInt32Field(value: self.size, fieldNumber: 1)
    }
    if !self.color.isEmpty {
      try visitor.visitSingularStringField(value: self.color, fieldNumber: 2)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    try { if let v = self._createdOn {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    try { if let v = self._rgbColor {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    if !self.availableSizes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.availableSizes, fieldNumber: 6)
    }
    if !self.roles.isEmpty {
      try visitor.visitPackedInt32Field(value: self.roles, fieldNumber: 7)
    }
    if !self.dictionary.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufInt64>.self, value: self.dictionary, fieldNumber: 8)
    }
    if !self.dictionaryWithMessage.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Haberdasher_Size>.self, value: self.dictionaryWithMessage, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Haberdasher_Hat, rhs: Haberdasher_Hat) -> Bool {
    if lhs.size != rhs.size {return false}
    if lhs.color != rhs.color {return false}
    if lhs.name != rhs.name {return false}
    if lhs._createdOn != rhs._createdOn {return false}
    if lhs._rgbColor != rhs._rgbColor {return false}
    if lhs.availableSizes != rhs.availableSizes {return false}
    if lhs.roles != rhs.roles {return false}
    if lhs.dictionary != rhs.dictionary {return false}
    if lhs.dictionaryWithMessage != rhs.dictionaryWithMessage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Haberdasher_Color: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Color"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "red"),
    2: .same(proto: "green"),
    3: .same(proto: "blue"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.red) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.green) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.blue) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.red != 0 {
      try visitor.visitSingularInt32Field(value: self.red, fieldNumber: 1)
    }
    if self.green != 0 {
      try visitor.visitSingularInt32Field(value: self.green, fieldNumber: 2)
    }
    if self.blue != 0 {
      try visitor.visitSingularInt32Field(value: self.blue, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Haberdasher_Color, rhs: Haberdasher_Color) -> Bool {
    if lhs.red != rhs.red {return false}
    if lhs.green != rhs.green {return false}
    if lhs.blue != rhs.blue {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Haberdasher_Receipt: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Receipt"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "total"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.total) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.total != 0 {
      try visitor.visitSingularDoubleField(value: self.total, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Haberdasher_Receipt, rhs: Haberdasher_Receipt) -> Bool {
    if lhs.total != rhs.total {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Haberdasher_Size: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Size"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "inches"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.inches) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.inches != 0 {
      try visitor.visitSingularInt32Field(value: self.inches, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Haberdasher_Size, rhs: Haberdasher_Size) -> Bool {
    if lhs.inches != rhs.inches {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}