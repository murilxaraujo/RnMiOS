//
//  UIViewController+.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/20.
//

import UIKit

extension UIViewController {
    func embeddedInNavigationController(with modalPresentationStyle: UIModalPresentationStyle = .overFullScreen) -> UIViewController {
        let navController = UINavigationController(rootViewController: self)
        navController.modalPresentationStyle = modalPresentationStyle
        return navController
    }
}
