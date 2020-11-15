//
//  CharactersViewController.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/20.
//  
//

import Foundation
import UIKit

class CharactersViewController: BaseViewController, StoryboardLoadable {

    // MARK: Properties

    var presenter: CharactersPresentation?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CharactersViewController: CharactersView {
    // TODO: implement view output methods
}
