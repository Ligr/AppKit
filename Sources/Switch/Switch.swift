//
//  Switch.swift
//  OddsOn
//
//  Created by Alex on 3/3/19.
//  Copyright © 2019 NA. All rights reserved.
//

import UIKit
import AppKit

@IBDesignable
public final class Switch: UIControl {

    @IBInspectable var width: CGFloat = 3 {
        didSet {
            borderWidth = width
        }
    }

    @IBInspectable var indicatorSize: CGFloat = 18 {
        didSet {
            setNeedsLayout()
        }
    }

    @IBInspectable var indicatorOffset: CGFloat = 6 {
        didSet {
            setNeedsLayout()
        }
    }

    @IBInspectable var selectedColor: UIColor = .white {
        didSet {
            refresh()
        }
    }

    @IBInspectable var unselectedColor: UIColor = UIColor(48, 73, 121) {
        didSet {
            refresh()
        }
    }

    @IBInspectable var indicatorSelectedColor: UIColor = .white {
        didSet {
            refresh()
        }
    }

    @IBInspectable var indicatorUnselectedColor: UIColor = UIColor(48, 73, 121) {
        didSet {
            refresh()
        }
    }

    @IBInspectable var isOn: Bool = false {
        didSet {
            UIView.animate(withDuration: CATransaction.animationDuration()) {
                self.refresh()
                self.setNeedsLayout()
                self.layoutIfNeeded()
            }
        }
    }

    private var indicator: UIView = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    override public func layoutSubviews() {
        super.layoutSubviews()

        let x: CGFloat
        if isOn {
            x = bounds.size.width - indicatorOffset - indicatorSize - width / 2
        } else {
            x = width / 2 + indicatorOffset
        }
        cornerRadius = bounds.size.height / 2
        indicator.frame.origin.x = x
        indicator.frame.origin.y = bounds.size.height / 2 - indicator.frame.size.height / 2
        indicator.frame.size = CGSize(width: indicatorSize, height: indicatorSize)
        indicator.cornerRadius = indicatorSize / 2
    }

    override public var intrinsicContentSize: CGSize {
        return CGSize(width: 53, height: 30)
    }

    @IBAction private func touchUpAction() {
        isOn = !isOn
        sendActions(for: .valueChanged)
    }

}

private extension Switch {

    func setup() {
        borderWidth = width
        indicator.isUserInteractionEnabled = false
        addSubview(indicator)
        refresh()
        addTarget(self, action: #selector(touchUpAction), for: .touchUpInside)
    }

    func refresh() {
        if isOn {
            borderColor = selectedColor
            indicator.backgroundColor = indicatorSelectedColor
        } else {
            borderColor = unselectedColor
            indicator.backgroundColor = indicatorUnselectedColor
        }
    }

}
