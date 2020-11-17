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
    lazy var characterView: CharacterView = {return CharacterView(frame: view.frame)}()
    var output: CharacterViewOutput!
    private var character: RnMCharacter?
    private var sections: [CharacterSection] = []
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view = characterView
        output.viewIsReady()
    }


    // MARK: CharacterViewInput
    func setupInitialState(with character: RnMCharacter) {
        title = character.name
        self.character = character
    }
}

extension CharacterViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
