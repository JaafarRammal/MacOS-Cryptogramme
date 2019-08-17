//  MacCryptoCanvas.swift
//  crypto
//
//  Created by SAMI AL HARAKEH on 1/27/18.
//  Copyright © 2018 ISN. All rights reserved.

import Cocoa

public class MacCryptoCanvas : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawMacScreenCanvas(frame targetFrame: NSRect = NSRect(x: 0, y: 0, width: 1366, height: 768), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = NSGraphicsContext.current!.cgContext
        
        //// Resize to Target Frame
        NSGraphicsContext.saveGraphicsState()
        let resizedFrame: NSRect = resizing.apply(rect: NSRect(x: 0, y: 0, width: 1366, height: 768), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 1366, y: resizedFrame.height / 768)


        //// Color Declarations
        let gradientColor = NSColor(red: 0.177, green: 0.365, blue: 0.998, alpha: 1)
        let gradientColor2 = NSColor(red: 0.051, green: 0.221, blue: 0.998, alpha: 1)
        let gradientColor3 = NSColor(red: 0.15, green: 0, blue: 0.998, alpha: 1)
        let strokeColor = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        let textForeground = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        let fillColor = NSColor(red: 1, green: 1, blue: 1, alpha: 1)
        let fillColor2 = NSColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1)

        //// Gradient Declarations
        let gradient = NSGradient(colors: [gradientColor, gradientColor2, gradientColor3], atLocations: [0.0, 0.38, 1.0], colorSpace: NSColorSpace.sRGB)!

        //// Rectangle Drawing
        let rectanglePath = NSBezierPath(rect: NSRect(x: 0, y: 0, width: 408.55, height: 800))
        NSGraphicsContext.saveGraphicsState()
        rectanglePath.addClip()
        gradient.draw(from: NSPoint(x: 378.11, y: -92.82),
            to: NSPoint(x: 146.05, y: 544.94),
            options: [.drawsBeforeStartingLocation, .drawsAfterEndingLocation])
        NSGraphicsContext.restoreGraphicsState()


        //// Rectangle 2 Drawing
        let rectangle2Path = NSBezierPath(rect: NSRect(x: 34.63, y: 36.53, width: 152.35, height: 33.05))
        strokeColor.setStroke()
        rectangle2Path.lineWidth = 3
        rectangle2Path.stroke()


        //// Rectangle 3 Drawing
        let rectangle3Path = NSBezierPath(rect: NSRect(x: 221.57, y: 36.53, width: 152.35, height: 33.05))
        strokeColor.setStroke()
        rectangle3Path.lineWidth = 3
        rectangle3Path.stroke()


        //// Label Drawing
        let labelRect = NSRect(x: 258.9, y: 41, width: 80.95, height: 25)
        let labelTextContent = "Decrypt"
        let labelStyle = NSMutableParagraphStyle()
        labelStyle.alignment = .center
        let labelFontAttributes = [
            .font: NSFont(name: "StratumNo1-Medium", size: 24.22)!,
            .foregroundColor: textForeground,
            .paragraphStyle: labelStyle,
        ] as [NSAttributedStringKey: Any]

        let labelTextHeight: CGFloat = labelTextContent.boundingRect(with: NSSize(width: labelRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: labelFontAttributes).height
        let labelTextRect: NSRect = NSRect(x: labelRect.minX, y: labelRect.minY + (labelRect.height - labelTextHeight) / 2, width: labelRect.width, height: labelTextHeight)
        NSGraphicsContext.saveGraphicsState()
        labelRect.clip()
        labelTextContent.draw(in: labelTextRect.offsetBy(dx: 0, dy: 0), withAttributes: labelFontAttributes)
        NSGraphicsContext.restoreGraphicsState()


        //// Label 2 Drawing
        let label2Rect = NSRect(x: 32.8, y: 373.66, width: 275.15, height: 40)
        let label2TextContent = "CRYPTOGRAMME"
        let label2Style = NSMutableParagraphStyle()
        label2Style.alignment = .center
        let label2FontAttributes = [
            .font: NSFont(name: "StratumNo1-Medium", size: 38.06)!,
            .foregroundColor: textForeground,
            .paragraphStyle: label2Style,
        ] as [NSAttributedStringKey: Any]

        let label2TextHeight: CGFloat = label2TextContent.boundingRect(with: NSSize(width: label2Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: label2FontAttributes).height
        let label2TextRect: NSRect = NSRect(x: label2Rect.minX, y: label2Rect.minY + (label2Rect.height - label2TextHeight) / 2, width: label2Rect.width, height: label2TextHeight)
        NSGraphicsContext.saveGraphicsState()
        label2Rect.clip()
        label2TextContent.draw(in: label2TextRect.offsetBy(dx: 0, dy: 1), withAttributes: label2FontAttributes)
        NSGraphicsContext.restoreGraphicsState()


        //// Bezier Drawing
        /*let bezierPath = NSBezierPath()
        bezierPath.move(to: NSPoint(x: 299.04, y: 374.43))
        bezierPath.line(to: NSPoint(x: 163.77, y: 374.43))
        bezierPath.curve(to: NSPoint(x: 162.62, y: 375.59), controlPoint1: NSPoint(x: 163.14, y: 374.43), controlPoint2: NSPoint(x: 162.62, y: 374.95))
        bezierPath.curve(to: NSPoint(x: 163.77, y: 376.74), controlPoint1: NSPoint(x: 162.62, y: 376.22), controlPoint2: NSPoint(x: 163.14, y: 376.74))
        bezierPath.line(to: NSPoint(x: 299.04, y: 376.74))
        bezierPath.curve(to: NSPoint(x: 300.19, y: 375.59), controlPoint1: NSPoint(x: 299.68, y: 376.74), controlPoint2: NSPoint(x: 300.19, y: 376.22))
        bezierPath.curve(to: NSPoint(x: 299.04, y: 374.43), controlPoint1: NSPoint(x: 300.19, y: 374.95), controlPoint2: NSPoint(x: 299.68, y: 374.43))
        bezierPath.close()
        fillColor.setFill()
        bezierPath.fill()*/


        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.move(to: NSPoint(x: 53.38, y: 118.06))
        bezier2Path.curve(to: NSPoint(x: 49.59, y: 122.17), controlPoint1: NSPoint(x: 53.46, y: 120.2), controlPoint2: NSPoint(x: 51.71, y: 122.11))
        bezier2Path.curve(to: NSPoint(x: 45.61, y: 118.37), controlPoint1: NSPoint(x: 47.55, y: 122.24), controlPoint2: NSPoint(x: 45.67, y: 120.44))
        bezier2Path.curve(to: NSPoint(x: 49.29, y: 114.29), controlPoint1: NSPoint(x: 45.55, y: 116.22), controlPoint2: NSPoint(x: 47.21, y: 114.38))
        bezier2Path.curve(to: NSPoint(x: 53.38, y: 118.06), controlPoint1: NSPoint(x: 51.49, y: 114.19), controlPoint2: NSPoint(x: 53.3, y: 115.86))
        bezier2Path.close()
        bezier2Path.move(to: NSPoint(x: 49.48, y: 131.34))
        bezier2Path.curve(to: NSPoint(x: 54.51, y: 131.33), controlPoint1: NSPoint(x: 51.15, y: 131.34), controlPoint2: NSPoint(x: 52.83, y: 131.36))
        bezier2Path.curve(to: NSPoint(x: 55.5, y: 132.32), controlPoint1: NSPoint(x: 55.22, y: 131.32), controlPoint2: NSPoint(x: 55.53, y: 131.59))
        bezier2Path.curve(to: NSPoint(x: 55.48, y: 135.79), controlPoint1: NSPoint(x: 55.47, y: 133.47), controlPoint2: NSPoint(x: 55.54, y: 134.64))
        bezier2Path.curve(to: NSPoint(x: 49.47, y: 141.28), controlPoint1: NSPoint(x: 55.34, y: 138.85), controlPoint2: NSPoint(x: 52.61, y: 141.32))
        bezier2Path.curve(to: NSPoint(x: 43.52, y: 135.84), controlPoint1: NSPoint(x: 46.32, y: 141.25), controlPoint2: NSPoint(x: 43.69, y: 138.86))
        bezier2Path.curve(to: NSPoint(x: 43.49, y: 132.37), controlPoint1: NSPoint(x: 43.46, y: 134.69), controlPoint2: NSPoint(x: 43.54, y: 133.52))
        bezier2Path.curve(to: NSPoint(x: 44.56, y: 131.33), controlPoint1: NSPoint(x: 43.47, y: 131.58), controlPoint2: NSPoint(x: 43.81, y: 131.32))
        bezier2Path.curve(to: NSPoint(x: 49.48, y: 131.34), controlPoint1: NSPoint(x: 46.2, y: 131.36), controlPoint2: NSPoint(x: 47.84, y: 131.34))
        bezier2Path.close()
        bezier2Path.move(to: NSPoint(x: 49.43, y: 105.38))
        bezier2Path.curve(to: NSPoint(x: 39.23, y: 105.39), controlPoint1: NSPoint(x: 46.03, y: 105.38), controlPoint2: NSPoint(x: 42.63, y: 105.38))
        bezier2Path.curve(to: NSPoint(x: 34.61, y: 110.05), controlPoint1: NSPoint(x: 36.11, y: 105.4), controlPoint2: NSPoint(x: 34.61, y: 106.91))
        bezier2Path.curve(to: NSPoint(x: 34.61, y: 126.5), controlPoint1: NSPoint(x: 34.6, y: 115.53), controlPoint2: NSPoint(x: 34.6, y: 121.01))
        bezier2Path.curve(to: NSPoint(x: 39.23, y: 131.32), controlPoint1: NSPoint(x: 34.61, y: 129.92), controlPoint2: NSPoint(x: 35.83, y: 131.22))
        bezier2Path.curve(to: NSPoint(x: 40.37, y: 132.45), controlPoint1: NSPoint(x: 40.05, y: 131.35), controlPoint2: NSPoint(x: 40.35, y: 131.63))
        bezier2Path.curve(to: NSPoint(x: 40.58, y: 137.35), controlPoint1: NSPoint(x: 40.4, y: 134.08), controlPoint2: NSPoint(x: 40.19, y: 135.73))
        bezier2Path.curve(to: NSPoint(x: 51, y: 144.31), controlPoint1: NSPoint(x: 41.71, y: 142.06), controlPoint2: NSPoint(x: 45.87, y: 144.85))
        bezier2Path.curve(to: NSPoint(x: 58.64, y: 135.32), controlPoint1: NSPoint(x: 55.08, y: 143.87), controlPoint2: NSPoint(x: 58.6, y: 139.73))
        bezier2Path.curve(to: NSPoint(x: 58.64, y: 132.44), controlPoint1: NSPoint(x: 58.65, y: 134.36), controlPoint2: NSPoint(x: 58.68, y: 133.4))
        bezier2Path.curve(to: NSPoint(x: 59.79, y: 131.33), controlPoint1: NSPoint(x: 58.61, y: 131.6), controlPoint2: NSPoint(x: 58.97, y: 131.29))
        bezier2Path.curve(to: NSPoint(x: 61.57, y: 131.22), controlPoint1: NSPoint(x: 60.38, y: 131.35), controlPoint2: NSPoint(x: 60.98, y: 131.4))
        bezier2Path.curve(to: NSPoint(x: 64.38, y: 127.21), controlPoint1: NSPoint(x: 63.32, y: 130.7), controlPoint2: NSPoint(x: 64.36, y: 129.33))
        bezier2Path.curve(to: NSPoint(x: 64.38, y: 109.56), controlPoint1: NSPoint(x: 64.42, y: 121.32), controlPoint2: NSPoint(x: 64.43, y: 115.44))
        bezier2Path.curve(to: NSPoint(x: 60, y: 105.39), controlPoint1: NSPoint(x: 64.35, y: 106.89), controlPoint2: NSPoint(x: 62.73, y: 105.41))
        bezier2Path.curve(to: NSPoint(x: 49.43, y: 105.38), controlPoint1: NSPoint(x: 56.48, y: 105.37), controlPoint2: NSPoint(x: 52.96, y: 105.38))
        bezier2Path.close()
        fillColor.setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.move(to: NSPoint(x: 192.15, y: 105.38))
        bezier3Path.line(to: NSPoint(x: 78.79, y: 105.38))
        bezier3Path.curve(to: NSPoint(x: 78, y: 106.6), controlPoint1: NSPoint(x: 78.35, y: 105.38), controlPoint2: NSPoint(x: 78, y: 105.92))
        bezier3Path.curve(to: NSPoint(x: 78.79, y: 107.82), controlPoint1: NSPoint(x: 78, y: 107.27), controlPoint2: NSPoint(x: 78.35, y: 107.82))
        bezier3Path.line(to: NSPoint(x: 192.15, y: 107.82))
        bezier3Path.curve(to: NSPoint(x: 192.95, y: 106.6), controlPoint1: NSPoint(x: 192.6, y: 107.82), controlPoint2: NSPoint(x: 192.95, y: 107.27))
        bezier3Path.curve(to: NSPoint(x: 192.15, y: 105.38), controlPoint1: NSPoint(x: 192.95, y: 105.92), controlPoint2: NSPoint(x: 192.6, y: 105.38))
        bezier3Path.close()
        fillColor.setFill()
        bezier3Path.fill()


        //// Label 4 Drawing
        let label4Rect = NSRect(x: 72.17, y: 41, width: 77.94, height: 25)
        let label4TextContent = "Encrypt"
        let label4Style = NSMutableParagraphStyle()
        label4Style.alignment = .center
        let label4FontAttributes = [
            .font: NSFont(name: "StratumNo1-Medium", size: 24.22)!,
            .foregroundColor: textForeground,
            .paragraphStyle: label4Style,
        ] as [NSAttributedStringKey: Any]

        let label4TextHeight: CGFloat = label4TextContent.boundingRect(with: NSSize(width: label4Rect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: label4FontAttributes).height
        let label4TextRect: NSRect = NSRect(x: label4Rect.minX, y: label4Rect.minY + (label4Rect.height - label4TextHeight) / 2, width: label4Rect.width, height: label4TextHeight)
        NSGraphicsContext.saveGraphicsState()
        label4Rect.clip()
        label4TextContent.draw(in: label4TextRect.offsetBy(dx: 0, dy: 0), withAttributes: label4FontAttributes)
        NSGraphicsContext.restoreGraphicsState()


        //// Bezier 4 Drawing
        let bezier4Path = NSBezierPath()
        bezier4Path.move(to: NSPoint(x: 71.81, y: 696.19))
        bezier4Path.line(to: NSPoint(x: 42.79, y: 696.19))
        bezier4Path.line(to: NSPoint(x: 42.79, y: 725.21))
        bezier4Path.line(to: NSPoint(x: 71.81, y: 725.21))
        bezier4Path.line(to: NSPoint(x: 71.81, y: 696.19))
        bezier4Path.close()
        bezier4Path.move(to: NSPoint(x: 34.6, y: 688))
        bezier4Path.line(to: NSPoint(x: 79.99, y: 688))
        bezier4Path.line(to: NSPoint(x: 79.99, y: 733.4))
        bezier4Path.line(to: NSPoint(x: 34.6, y: 733.4))
        bezier4Path.line(to: NSPoint(x: 34.6, y: 688))
        bezier4Path.close()
        fillColor.setFill()
        bezier4Path.fill()


        //// Bezier 5 Drawing
        let bezier5Path = NSBezierPath()
        bezier5Path.move(to: NSPoint(x: 71.81, y: 640.46))
        bezier5Path.line(to: NSPoint(x: 42.79, y: 640.46))
        bezier5Path.line(to: NSPoint(x: 42.79, y: 669.48))
        bezier5Path.line(to: NSPoint(x: 71.81, y: 669.48))
        bezier5Path.line(to: NSPoint(x: 71.81, y: 640.46))
        bezier5Path.close()
        bezier5Path.move(to: NSPoint(x: 34.6, y: 632.27))
        bezier5Path.line(to: NSPoint(x: 79.99, y: 632.27))
        bezier5Path.line(to: NSPoint(x: 79.99, y: 677.66))
        bezier5Path.line(to: NSPoint(x: 34.6, y: 677.66))
        bezier5Path.line(to: NSPoint(x: 34.6, y: 632.27))
        bezier5Path.close()
        fillColor.setFill()
        bezier5Path.fill()


        //// Rectangle 8 Drawing
        let rectangle8Path = NSBezierPath(rect: NSRect(x: 53.2, y: 706.6, width: 8.2, height: 8.2))
        fillColor.setFill()
        rectangle8Path.fill()


        //// Rectangle 9 Drawing
        let rectangle9Path = NSBezierPath(rect: NSRect(x: 108.25, y: 706.6, width: 8.2, height: 8.2))
        fillColor.setFill()
        rectangle9Path.fill()


        //// Rectangle 10 Drawing
        let rectangle10Path = NSBezierPath(rect: NSRect(x: 53.2, y: 650.85, width: 8.2, height: 8.2))
        fillColor.setFill()
        rectangle10Path.fill()


        //// Bezier 6 Drawing
        let bezier6Path = NSBezierPath()
        bezier6Path.move(to: NSPoint(x: 126.87, y: 696.19))
        bezier6Path.line(to: NSPoint(x: 97.85, y: 696.19))
        bezier6Path.line(to: NSPoint(x: 97.85, y: 725.21))
        bezier6Path.line(to: NSPoint(x: 126.87, y: 725.21))
        bezier6Path.line(to: NSPoint(x: 126.87, y: 696.19))
        bezier6Path.close()
        bezier6Path.move(to: NSPoint(x: 89.66, y: 688))
        bezier6Path.line(to: NSPoint(x: 135.06, y: 688))
        bezier6Path.line(to: NSPoint(x: 135.06, y: 733.4))
        bezier6Path.line(to: NSPoint(x: 89.66, y: 733.4))
        bezier6Path.line(to: NSPoint(x: 89.66, y: 688))
        bezier6Path.close()
        fillColor.setFill()
        bezier6Path.fill()


        //// Rectangle 11 Drawing
        let rectangle11Path = NSBezierPath(rect: NSRect(x: 108.05, y: 632.25, width: 8.2, height: 8.2))
        fillColor.setFill()
        rectangle11Path.fill()


        //// Rectangle 12 Drawing
        let rectangle12Path = NSBezierPath(rect: NSRect(x: 126.45, y: 632.25, width: 8.2, height: 8.2))
        fillColor.setFill()
        rectangle12Path.fill()


        //// Bezier 7 Drawing
        let bezier7Path = NSBezierPath()
        bezier7Path.move(to: NSPoint(x: 126.44, y: 677.66))
        bezier7Path.line(to: NSPoint(x: 134.62, y: 677.66))
        bezier7Path.line(to: NSPoint(x: 134.62, y: 653.12))
        bezier7Path.line(to: NSPoint(x: 108.1, y: 653.12))
        bezier7Path.line(to: NSPoint(x: 108.1, y: 661.3))
        bezier7Path.line(to: NSPoint(x: 98.12, y: 661.3))
        bezier7Path.line(to: NSPoint(x: 98.12, y: 632.2))
        bezier7Path.line(to: NSPoint(x: 89.93, y: 632.2))
        bezier7Path.line(to: NSPoint(x: 89.93, y: 677.66))
        bezier7Path.line(to: NSPoint(x: 116.45, y: 677.66))
        bezier7Path.line(to: NSPoint(x: 116.45, y: 669.48))
        bezier7Path.line(to: NSPoint(x: 126.44, y: 669.48))
        bezier7Path.line(to: NSPoint(x: 126.44, y: 677.66))
        bezier7Path.close()
        fillColor.setFill()
        bezier7Path.fill()


        //// Rectangle 13 Drawing
        let rectangle13Path = NSBezierPath(rect: NSRect(x: 443.13, y: 402.27, width: 747.85, height: 331.15))
        fillColor2.setFill()
        rectangle13Path.fill()


        //// Rectangle 14 Drawing
        let rectangle14Path = NSBezierPath(rect: NSRect(x: 443.13, y: 36.53, width: 747.85, height: 331.15))
        fillColor2.setFill()
        rectangle14Path.fill()
        
        NSGraphicsContext.restoreGraphicsState()

    }




    @objc(MacCryptoCanvasResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: NSRect, target: NSRect) -> NSRect {
            if rect == target || target == NSRect.zero {
                return rect
            }

            var scales = NSSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
