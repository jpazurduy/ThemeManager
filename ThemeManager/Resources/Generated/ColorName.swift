// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit.NSColor
  internal typealias Color = NSColor
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit.UIColor
  internal typealias Color = UIColor
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Colors

// swiftlint:disable identifier_name line_length type_body_length
internal struct ColorName {
  internal let rgbaValue: UInt32
  internal var color: Color { return Color(named: self) }

  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#000000"></span>
  /// Alpha: 100% <br/> (0x000000ff)
  internal static let black = ColorName(rgbaValue: 0x000000ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fcdddd"></span>
  /// Alpha: 100% <br/> (0xfcddddff)
  internal static let error300 = ColorName(rgbaValue: 0xfcddddff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ca3b3b"></span>
  /// Alpha: 100% <br/> (0xca3b3bff)
  internal static let error700 = ColorName(rgbaValue: 0xca3b3bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#eef2ff"></span>
  /// Alpha: 100% <br/> (0xeef2ffff)
  internal static let info100 = ColorName(rgbaValue: 0xeef2ffff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f8fafc"></span>
  /// Alpha: 100% <br/> (0xf8fafcff)
  internal static let neutral100 = ColorName(rgbaValue: 0xf8fafcff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#f1f5f9"></span>
  /// Alpha: 100% <br/> (0xf1f5f9ff)
  internal static let neutral200 = ColorName(rgbaValue: 0xf1f5f9ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e2e8f0"></span>
  /// Alpha: 100% <br/> (0xe2e8f0ff)
  internal static let neutral300 = ColorName(rgbaValue: 0xe2e8f0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#cbd5e1"></span>
  /// Alpha: 100% <br/> (0xcbd5e1ff)
  internal static let neutral400 = ColorName(rgbaValue: 0xcbd5e1ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#94a3b8"></span>
  /// Alpha: 100% <br/> (0x94a3b8ff)
  internal static let neutral500 = ColorName(rgbaValue: 0x94a3b8ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#64748b"></span>
  /// Alpha: 100% <br/> (0x64748bff)
  internal static let neutral600 = ColorName(rgbaValue: 0x64748bff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#334155"></span>
  /// Alpha: 100% <br/> (0x334155ff)
  internal static let neutral700 = ColorName(rgbaValue: 0x334155ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#0a132c"></span>
  /// Alpha: 100% <br/> (0x0a132cff)
  internal static let neutral900 = ColorName(rgbaValue: 0x0a132cff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e8e8ed"></span>
  /// Alpha: 100% <br/> (0xe8e8edff)
  internal static let primary100 = ColorName(rgbaValue: 0xe8e8edff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#a1a5b8"></span>
  /// Alpha: 100% <br/> (0xa1a5b8ff)
  internal static let primary200 = ColorName(rgbaValue: 0xa1a5b8ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#b0b2df"></span>
  /// Alpha: 100% <br/> (0xb0b2dfff)
  internal static let primary300 = ColorName(rgbaValue: 0xb0b2dfff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#4d51b8"></span>
  /// Alpha: 100% <br/> (0x4d51b8ff)
  internal static let primary400 = ColorName(rgbaValue: 0x4d51b8ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#393eb0"></span>
  /// Alpha: 100% <br/> (0x393eb0ff)
  internal static let primary500 = ColorName(rgbaValue: 0x393eb0ff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ecf8fb"></span>
  /// Alpha: 100% <br/> (0xecf8fbff)
  internal static let secondary100 = ColorName(rgbaValue: 0xecf8fbff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#e3fdec"></span>
  /// Alpha: 100% <br/> (0xe3fdecff)
  internal static let success200 = ColorName(rgbaValue: 0xe3fdecff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#15803d"></span>
  /// Alpha: 100% <br/> (0x15803dff)
  internal static let success700 = ColorName(rgbaValue: 0x15803dff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#fdf7eb"></span>
  /// Alpha: 100% <br/> (0xfdf7ebff)
  internal static let warning200 = ColorName(rgbaValue: 0xfdf7ebff)
  /// <span style="display:block;width:3em;height:2em;border:1px solid black;background:#ffffff"></span>
  /// Alpha: 100% <br/> (0xffffffff)
  internal static let white = ColorName(rgbaValue: 0xffffffff)
}
// swiftlint:enable identifier_name line_length type_body_length

// MARK: - Implementation Details

internal extension Color {
  convenience init(rgbaValue: UInt32) {
    let components = RGBAComponents(rgbaValue: rgbaValue).normalized
    self.init(red: components[0], green: components[1], blue: components[2], alpha: components[3])
  }
}

private struct RGBAComponents {
  let rgbaValue: UInt32

  private var shifts: [UInt32] {
    [
      rgbaValue >> 24, // red
      rgbaValue >> 16, // green
      rgbaValue >> 8,  // blue
      rgbaValue        // alpha
    ]
  }

  private var components: [CGFloat] {
    shifts.map {
      CGFloat($0 & 0xff)
    }
  }

  var normalized: [CGFloat] {
    components.map { $0 / 255.0 }
  }
}

internal extension Color {
  convenience init(named color: ColorName) {
    self.init(rgbaValue: color.rgbaValue)
  }
}
