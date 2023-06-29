//
//  Extensions.swift
//  FitnessBoss
//
//  Created by APPLE on 6/6/23.
//

import Foundation
import UIKit

//extension UIView {
//    func anchor(
//        top: NSLayoutYAxisAnchor? = nil,
//        leading: NSLayoutXAxisAnchor? = nil,
//        bottom: NSLayoutYAxisAnchor? = nil,
//        trailing: NSLayoutXAxisAnchor? = nil,
//        padding: UIEdgeInsets = .zero,
//        size: CGSize = .zero
//    ) {
//        translatesAutoresizingMaskIntoConstraints = false
//
//        if let top = top {
//            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
//        }
//
//        if let leading = leading {
//            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
//        }
//
//        if let bottom = bottom {
//            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
//        }
//
//        if let trailing = trailing {
//            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
//        }
//
//        if size.width != 0 {
//            widthAnchor.constraint(equalToConstant: size.width).isActive = true
//        }
//
//        if size.height != 0 {
//            heightAnchor.constraint(equalToConstant: size.height).isActive = true
//        }
//    }
//}







extension UIView{
    func anchor(top : NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom:NSLayoutYAxisAnchor?,trailing: NSLayoutXAxisAnchor?, padding :UIEdgeInsets = .zero, size: CGSize = .zero){
        translatesAutoresizingMaskIntoConstraints = false

        if let top = top {
            topAnchor.constraint(equalTo: top, constant:
                                    padding.top).isActive = true
        }

        if let leading =  leading {
            leadingAnchor.constraint(equalTo: leading, constant:
                                        padding.top).isActive = true
        }

        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true

        }

        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }

        if size.width != 0 {
            widthAnchor.constraint(equalToConstant:
                                    size.width).isActive = true
        }
    }
}



//extension UIView {
//func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, topConstant: CGFloat, leftConstant: CGFloat, bottomConstant:CGFloat, rightConstant: CGFloat, width: CGFloat, height: CGFloat) {
//translatesAutoresizingMaskIntoConstraints = false
//if let top = top {
// self.topAnchor.constraint(equalTo: top, constant:       paddingTop).isActive = true
//}
//if let left = left {
// self.leftAnchor.constraint(equalTo: left, constant:  paddingLeft).isActive = true
//}
//if let bottom = bottom {
// bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
//}
//if let right = right {
// rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
//}
//if width != 0 {
// widthAnchor.constraint(equalToConstant: width).isActive = true
//}
//if height != 0 {
// heightAnchor.constraint(equalToConstant: height).isActive = true
//  }
// }
//}
