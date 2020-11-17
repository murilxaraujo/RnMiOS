//
//  CharacterCharacterViewController.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

import UIKit
import RnMService

class CharacterViewController: UIViewController, CharacterViewInput {

    var output: CharacterViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: CharacterViewInput
    func setupInitialState(with character: RnMCharacter) {
        title = character.name
    }
}
