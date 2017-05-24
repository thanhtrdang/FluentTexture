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
    public func minSize(_ minSize: CGSize) -> Self {
        self.minSize = minSize
        return self
    }
    @discardableResult
    public func maxSize(_ maxSize: CGSize) -> Self {
        self.maxSize = maxSize
        return self
    }

    // MARK:
    @discardableResult
    public func preferredLayoutSize(_ preferredLayoutSize: ASLayoutSize) -> Self {
        self.preferredLayoutSize = preferredLayoutSize
        return self
    }
    @discardableResult
    public func minLayoutSize(_ minLayoutSize: ASLayoutSize) -> Self {
        self.minLayoutSize = minLayoutSize
        return self
    }
    @discardableResult
    public func maxLayoutSize(_ maxLayoutSize: ASLayoutSize) -> Self {
        self.maxLayoutSize = maxLayoutSize
        return self
    }
}

// MARK:
public extension ASStackLayoutElement {
    @discardableResult
    public func spacingBefore(_ spacingBefore: CGFloat) -> Self {
        self.spacingBefore = spacingBefore
        return self
    }
    @discardableResult
    public func spacingAfter(_ spacingAfter: CGFloat) -> Self {
        self.spacingAfter = spacingAfter
        return self
    }
    @discardableResult
    public func spacing(_ before: CGFloat, _ after: CGFloat) -> Self {
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
    @discardableResult
    public func sizing(_ sizing: ASAbsoluteLayoutSpecSizing) -> Self {
        self.sizing = sizing
        return self
    }
}

// MARK:
public extension ASInsetLayoutSpec {
    public class func insets(_ insets: UIEdgeInsets) -> ASInsetLayoutSpec {
        return ASInsetLayoutSpec().insets(insets)
    }
    
    @discardableResult
    public func insets(_ insets: UIEdgeInsets) -> Self {
        self.insets = insets
        return self
    }
}

// MARK:
public extension ASBackgroundLayoutSpec {
    @discardableResult
    public func background(_ background: ASLayoutElement) -> Self {
        self.background = background
        return self
    }
}

// MARK:
public extension ASOverlayLayoutSpec {
    @discardableResult
    public func overlay(_ overlay: ASLayoutElement) -> Self {
        self.overlay = overlay
        return self
    }
}

// MARK:
public extension ASRatioLayoutSpec {
    @discardableResult
    public func ratio(_ ratio: CGFloat) -> Self {
        self.ratio = ratio
        return self
    }
}

// MARK:
public extension ASRelativeLayoutSpec {
    @discardableResult
    public func horizontalPosition(_ horizontalPosition: ASRelativeLayoutSpecPosition) -> Self {
        self.horizontalPosition = horizontalPosition
        return self
    }
    @discardableResult
    public func verticalPosition(_ verticalPosition: ASRelativeLayoutSpecPosition) -> Self {
        self.verticalPosition = verticalPosition
        return self
    }
    @discardableResult
    public func sizingOption(_ sizingOption: ASRelativeLayoutSpecSizingOption) -> Self {
        self.sizingOption = sizingOption
        return self
    }    
}

// MARK:
public extension ASCenterLayoutSpec {
    public class func centerX() -> ASCenterLayoutSpec {
        return ASCenterLayoutSpec().centeringOptions(.X)
    }
    public class func centerY() -> ASCenterLayoutSpec {
        return ASCenterLayoutSpec().centeringOptions(.Y)
    }
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
