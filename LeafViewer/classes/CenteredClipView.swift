//
// Created by hideki on 2017/06/20.
// Copyright (c) 2017 hideki. All rights reserved.
//

import Foundation
import Cocoa

class CenteredClipView: NSClipView {

    override func constrainBoundsRect(_ proposedBounds: NSRect) -> NSRect {
        var rect = super.constrainBoundsRect(proposedBounds)
        if let containerView = self.documentView as NSView? {

            if (rect.size.width > containerView.frame.size.width) {
                rect.origin.x = (containerView.frame.width - rect.width) / 2
            }

            if (rect.size.height > containerView.frame.size.height) {
                rect.origin.y = (containerView.frame.height - rect.height) / 2
            }
        }

        return rect
    }

    override var isFlipped: Bool {
        return true
    }


}
