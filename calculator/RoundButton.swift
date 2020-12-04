//
//  RoundButton.swift
//  calculator
//
//  Created by Weronika Materna on 04/12/2020.
//  Copyright © 2020 Weronika Materna. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
		@IBInspectable var cornerRadius: CGFloat = 0 {
			didSet {
				self.layer.cornerRadius = cornerRadius
			}
		}
}

