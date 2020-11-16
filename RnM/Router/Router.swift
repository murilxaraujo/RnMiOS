//
//  Router.swift
//  RnM
//
//  Created by Murilo Araujo on 16/11/20.
//

import UIKit

class Router {
    
    static func push(_ vc: UIViewController) {
        let rootVc = UIApplication.shared.windows.first?.rootViewController
        if let navController = rootVc as? UINavigationController {
            navController.show(vc, sender: nil)
            return
        }
        Router.present(vc, with: .automatic)
    }
    
    static func present(_ vc: UIViewController, with presentationStyle: UIModalPresentationStyle = .overFullScreen) {
        let rootVc = UIApplication.shared.windows.first?.rootViewController
        vc.modalPresentationStyle = presentationStyle
        rootVc?.present(vc, animated: true, completion: nil)
    }
    
}
