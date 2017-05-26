//
//  FluentTexture.swift
//  FluentTexture
//
//  Created by Thanh Dang on 5/24/17.
//  Copyright © 2017 Thanh Dang. All rights reserved.
//

import AsyncDisplayKit

// MARK:
extension ASLayoutElementStyle {
    @discardableResult
    public func width(_ width: ASDimension) -> Self {
        self.width = width
        return self
    }
    @discardableResult
    public func height(_ height: ASDimension) -> Self {
        self.height = height
        return self
    }
    @discardableResult
    public func minHeight(_ minHeight: ASDimension) -> Self {
        self.minHeight = minHeight
        return self
    }
    @discardableResult
    public func minWidth(_ minWidth: ASDimension) -> Self {
        self.minWidth = minWidth
        return self
    }
    @discardableResult
    public func maxWidth(_ maxWidth: ASDimension) -> Self {
        self.maxWidth = maxWidth
        return self
    }
    @discardableResult
    public func maxHeight(_ maxHeight: ASDimension) -> Self {
        self.maxHeight = maxHeight
        return self
    }

    // MARK:
    @discardableResult
    public func preferredSize(_ preferredSize: CGSize) -> Self {
        self.preferredSize = preferredSize
        return self
    }
    @discardableResult
    public func preferredSize(width: CGFloat, height: CGFloat) -> Self {
        self.preferredSize = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    public func minSize(_ minSize: CGSize) -> Self {
        self.minSize = minSize
        return self
    }
    @discardableResult
    public func minSize(width: CGFloat, height: CGFloat) -> Self {
        self.minSize = CGSize(width: width, height: height)
        return self
    }

    @discardableResult
    public func maxSize(_ maxSize: CGSize) -> Self {
        self.maxSize = maxSize
        return self
    }
    @discardableResult
    public func maxSize(width: CGFloat, height: CGFloat) -> Self {
        self.maxSize = CGSize(width: width, height: height)
        return self
    }

    // MARK:
    @discardableResult
    public func preferredLayoutSize(_ preferredLayoutSize: ASLayoutSize) -> Self {
        self.preferredLayoutSize = preferredLayoutSize
        return self
    }
    @discardableResult
    public func preferredLayoutSize(width: ASDimension, height: ASDimension) -> Self {
        self.preferredLayoutSize = ASLayoutSize(width: width, height: height)
        return self
    }

    @discardableResult
    public func minLayoutSize(_ minLayoutSize: ASLayoutSize) -> Self {
        self.minLayoutSize = minLayoutSize
        return self
    }
    @discardableResult
    public func minLayoutSize(width: ASDimension, height: ASDimension) -> Self {
        self.minLayoutSize = ASLayoutSize(width: width, height: height)
        return self
    }

    @discardableResult
    public func maxLayoutSize(_ maxLayoutSize: ASLayoutSize) -> Self {
        self.maxLayoutSize = maxLayoutSize
        return self
    }
    @discardableResult
    public func maxLayoutSize(width: ASDimension, height: ASDimension) -> Self {
        self.maxLayoutSize = ASLayoutSize(width: width, height: height)
        return self
    }
}

// MARK:
public extension ASStackLayoutElement {
    @discardableResult
    public func spacing(by: CGFloat) -> Self {
        spacingBefore = by
        spacingAfter = by
        return self
    }
    @discardableResult
    public func spacing(before: CGFloat = 0.0, after: CGFloat = 0.0) -> Self {
        spacingBefore = before
        spacingAfter = after
        return self
    }

    // MARK:
    @discardableResult
    public func flexGrow(_ flexGrow: CGFloat) -> Self {
        self.flexGrow = flexGrow
        return self
    }
    @discardableResult
    public func flexShrink(_ flexShrink: CGFloat) -> Self {
        self.flexShrink = flexShrink
        return self
    }
    @discardableResult
    public func flexBasis(_ flexBasis: ASDimension) -> Self {
        self.flexBasis = flexBasis
        return self
    }

    // MARK:
    @discardableResult
    public func alignSelf(_ alignSelf: ASStackLayoutAlignSelf) -> Self {
        self.alignSelf = alignSelf
        return self
    }
    
    // MARK:
    @discardableResult
    public func ascender(_ ascender: CGFloat) -> Self {
        self.ascender = ascender
        return self
    }
    @discardableResult
    public func descender(_ descender: CGFloat) -> Self {
        self.descender = descender
        return self
    }
}

// MARK:
public extension ASAbsoluteLayoutElement {
    @discardableResult
    public func layoutPosition(_ layoutPosition: CGPoint) -> Self {
        self.layoutPosition = layoutPosition
        return self
    }
}

// MARK:
// *Note: When use factory methods below, always call e.g. ASInsetLayoutSpec.insets(.zero) before .child => ASInsetLayoutSpec.insets(.zero).child(child)
public extension ASLayoutSpec {
    @discardableResult
    public func child(_ child: ASLayoutElement) -> Self {
        self.child = child
        return self
    }
    @discardableResult
    public func children(_ children: [ASLayoutElement]) -> Self {
        self.children = children
        return self
    }
    @discardableResult
    public func children(_ children: ASLayoutElement...) -> Self {
        self.children = children
        return self
    }
}

// MARK:
public extension ASAbsoluteLayoutSpec {
    public class func sizing(_ sizing: ASAbsoluteLayoutSpecSizing) -> ASAbsoluteLayoutSpec {
        return ASAbsoluteLayoutSpec().sizing(sizing)
    }
    
    @discardableResult
    public func sizing(_ sizing: ASAbsoluteLayoutSpecSizing) -> Self {
        self.sizing = sizing
        return self
    }
}

// MARK:
// *Note: Don't use ASInsetLayoutSpec.insets(), use ASInsetLayoutSpec.insets(.zero) instead
public extension ASInsetLayoutSpec {
    public class func insets(_ insets: UIEdgeInsets) -> ASInsetLayoutSpec {
        return ASInsetLayoutSpec().insets(insets)
    }
    public class func insets(top: CGFloat = 0.0, left: CGFloat = 0.0, bottom: CGFloat = 0.0, right: CGFloat = 0.0) -> ASInsetLayoutSpec {
        return ASInsetLayoutSpec().insets(UIEdgeInsets(top: top, left: left, bottom: bottom, right: right))
    }
    public class func insets(vertical: CGFloat = 0.0, horizontal: CGFloat = 0.0) -> ASInsetLayoutSpec {
        return ASInsetLayoutSpec().insets(UIEdgeInsets(top: vertical, left: horizontal, bottom: vertical, right: horizontal))
    }
    
    @discardableResult
    public func insets(_ insets: UIEdgeInsets) -> Self {
        self.insets = insets
        return self
    }
    @discardableResult
    public func insets(top: CGFloat = 0.0, left: CGFloat = 0.0, bottom: CGFloat = 0.0, right: CGFloat = 0.0) -> Self {
        self.insets = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
    @discardableResult
    public func insets(vertical: CGFloat = 0.0, horizontal: CGFloat = 0.0) -> Self {
        self.insets = UIEdgeInsets(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
        return self
    }
}

// MARK:
public extension ASBackgroundLayoutSpec {
    public class func background(_ background: ASLayoutElement) -> ASBackgroundLayoutSpec {
        return ASBackgroundLayoutSpec().background(background)
    }
    
    @discardableResult
    public func background(_ background: ASLayoutElement) -> Self {
        self.background = background
        return self
    }
}

// MARK:
public extension ASOverlayLayoutSpec {
    public class func overlay(_ overlay: ASLayoutElement) -> ASOverlayLayoutSpec {
        return ASOverlayLayoutSpec().overlay(overlay)
    }

    @discardableResult
    public func overlay(_ overlay: ASLayoutElement) -> Self {
        self.overlay = overlay
        return self
    }
}

// MARK:
public extension ASRatioLayoutSpec {
    public class func ratio(_ ratio: CGFloat) -> ASRatioLayoutSpec {
        return ASRatioLayoutSpec().ratio(ratio)
    }
    
    @discardableResult
    public func ratio(_ ratio: CGFloat) -> Self {
        self.ratio = ratio
        return self
    }
}

// MARK:
public extension ASRelativeLayoutSpec {
    // *Note: Use some offers below or consider ASCenterLayoutSpec for short but limited
    public class func center(sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec()
                    .vertical(.center)
                    .horizontal(.center)
                    .sizing(sizing)
    }
    public class func start(sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec()
            .vertical(.center)
            .horizontal(.start)
            .sizing(sizing)
    }
    public class func topStart(sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec()
            .vertical(.start)
            .horizontal(.start)
            .sizing(sizing)
    }
    public class func top(sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec()
            .vertical(.start)
            .horizontal(.center)
            .sizing(sizing)
    }
    public class func topEnd(sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec()
            .vertical(.start)
            .horizontal(.end)
            .sizing(sizing)
    }
    public class func end(sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec()
            .vertical(.center)
            .horizontal(.end)
            .sizing(sizing)
    }
    public class func bottomEnd(sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec()
            .vertical(.end)
            .horizontal(.end)
            .sizing(sizing)
    }
    public class func bottom(sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec()
            .vertical(.end)
            .horizontal(.center)
            .sizing(sizing)
    }
    public class func bottomStart(sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec()
            .vertical(.end)
            .horizontal(.start)
            .sizing(sizing)
    }
    
    @discardableResult
    public func horizontal(_ position: ASRelativeLayoutSpecPosition) -> Self {
        self.horizontalPosition = position
        return self
    }
    @discardableResult
    public func vertical(_ position: ASRelativeLayoutSpecPosition) -> Self {
        self.verticalPosition = position
        return self
    }
    @discardableResult
    public func sizing(_ sizingOption: ASRelativeLayoutSpecSizingOption) -> Self {
        self.sizingOption = sizingOption
        return self
    }
}

// MARK:
public extension ASCenterLayoutSpec {
    // ~ ASRelativeLayoutSpec.top
    public class func centerX() -> ASCenterLayoutSpec {
        return ASCenterLayoutSpec().centeringOptions(.X)
    }
    // ~ ASRelativeLayoutSpec.start
    public class func centerY() -> ASCenterLayoutSpec {
        return ASCenterLayoutSpec().centeringOptions(.Y)
    }
    // ~ ASRelativeLayoutSpec.center
    public class func centerXY() -> ASCenterLayoutSpec {
        return ASCenterLayoutSpec().centeringOptions(.XY)
    }
    
    @discardableResult
    public func centeringOptions(_ centeringOptions: ASCenterLayoutSpecCenteringOptions) -> Self {
        self.centeringOptions = centeringOptions
        return self
    }
    @discardableResult
    public func sizingOptions(_ sizingOptions: ASCenterLayoutSpecSizingOptions) -> Self {
        self.sizingOptions = sizingOptions
        return self
    }
}

// MARK:
public extension ASStackLayoutSpec {
    @discardableResult
    public func direction(_ direction: ASStackLayoutDirection) -> Self {
        self.direction = direction
        return self
    }

    @discardableResult
    public func spacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }

    @discardableResult
    public func horizontal(_ horizontal: ASHorizontalAlignment) -> Self {
        self.horizontalAlignment = horizontal
        return self
    }

    @discardableResult
    public func vertical(_ vertical: ASVerticalAlignment) -> Self {
        self.verticalAlignment = vertical
        return self
    }

    @discardableResult
    public func justifyContent(_ justifyContent: ASStackLayoutJustifyContent) -> Self {
        self.justifyContent = justifyContent
        return self
    }

    @discardableResult
    public func alignItems(_ alignItems: ASStackLayoutAlignItems) -> Self {
        self.alignItems = alignItems
        return self
    }

    @discardableResult
    public func flexWrap(_ flexWrap: ASStackLayoutFlexWrap) -> Self {
        self.flexWrap = flexWrap
        return self
    }

    @discardableResult
    public func alignContent(_ alignContent: ASStackLayoutAlignContent) -> Self {
        self.alignContent = alignContent
        return self
    }

    @discardableResult
    public func isConcurrent(_ isConcurrent: Bool) -> Self {
        self.isConcurrent = isConcurrent
        return self
    }
}

// MARK:
public extension ASDisplayNode {
    
}
