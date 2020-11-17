//
//  UIImageView+.swift
//  RnM
//
//  Created by Murilo Araujo on 16/11/20.
//

import Foundation
import UIKit

// TODO: - Replace with caching library before release
fileprivate var imageCache = [String:UIImage]()

extension UIImageView {
    func loadImage(from urlString: String) {
        if let imageCached = imageCache[urlString] {
            self.image = imageCached
            return
        }
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if error != nil { return }
            
            if let data = data,
               let image = UIImage(data: data) {
                imageCache[urlString] = image
                DispatchQueue.main.async {
                    self.image = image
                }
            }
        }.resume()
    }
}
