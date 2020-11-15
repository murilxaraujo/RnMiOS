//
//  CharacterViewController.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/20.
//  
//

import Foundation
import UIKit

class CharacterViewController: BaseViewController, StoryboardLoadable {

    // MARK: Properties

    var presenter: CharacterPresentation?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CharacterViewController: CharacterView {
    // TODO: implement view output methods
}
