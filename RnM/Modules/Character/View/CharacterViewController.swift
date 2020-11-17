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
    private lazy var favButton: UIBarButtonItem = {
        return UIBarButtonItem(image: UIImage(systemName: "heart"), style: .plain, target: self, action: #selector(favButtonTapped))
    }()
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view = characterView
        characterView.tableView.dataSource = self
        characterView.tableView.register(CharacterBasicInfoTableViewCell.self, forCellReuseIdentifier: CharacterBasicInfoTableViewCell.cellID)
        characterView.tableView.register(CharacterDetailsTableViewCell.self, forCellReuseIdentifier: CharacterDetailsTableViewCell.cellID)
        setupFavButton()
        output.viewIsReady()
    }

    // MARK: CharacterViewInput
    func setupInitialState(with character: RnMCharacter) {
        title = character.name
        self.character = character
        if FavoritesService.shared.hasFavCharacter(for: character.id) {
            favButton.image = UIImage(systemName: "heart.fill")
        }
        characterView.tableView.reloadData()
    }
    
    func populateTableView(with sections: [CharacterSection]) {
        self.sections = sections
        characterView.tableView.reloadData()
    }
    
    private func setupFavButton() {
        navigationItem.rightBarButtonItem = favButton
    }
    
    @objc private func favButtonTapped() {
        output.hasMarkedCharacterAsFavorite()
    }
    
    func setFavButton(to favorited: Bool) {
        if favorited {
            favButton.image = UIImage(systemName: "heart.fill")
        } else {
            favButton.image = UIImage(systemName: "heart")
        }
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
        switch indexPath.section {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: CharacterBasicInfoTableViewCell.cellID) as! CharacterBasicInfoTableViewCell
                if let character = character {
                    cell.populateCell(with: character)
                }
                return cell
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: CharacterDetailsTableViewCell.cellID) as! CharacterDetailsTableViewCell
                let info = sections[indexPath.section].items[indexPath.item]
                cell.textLabel?.text = info.key
                cell.detailTextLabel?.text = info.value
                return cell
            default:
                fatalError("Section does not exist")
        }
    }
}
