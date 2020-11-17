//
//  CharactersCharactersViewController.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

import UIKit
import RnMService

class CharactersViewController: UIViewController, CharactersViewInput {

    var output: CharactersViewOutput!
    
    private lazy var charactersView = { return CharactersView(frame: view.frame) }()
    private var characters: [RnMCharacter] = []
    private var isWaitingForData = false
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view = charactersView
        title = "Personagens"
        navigationController?.navigationBar.prefersLargeTitles = true
        charactersView.tableView.delegate = self
        charactersView.tableView.dataSource = self
        charactersView.tableView.register(CharacterTableViewCell.self, forCellReuseIdentifier: CharacterTableViewCell.reuseID)
        charactersView.tableView.register(LoadingTableViewCell.self, forCellReuseIdentifier: LoadingTableViewCell.reuseID)
        output.viewIsReady()
    }

    // MARK: CharactersViewInput
    func setupInitialState() {
        isWaitingForData = true
        charactersView.tableView.reloadData()
    }
    
    func append(characters: [RnMCharacter]) {
        self.characters.append(contentsOf: characters)
        isWaitingForData = false
        charactersView.tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        charactersView.tableView.reloadData()
    }
}

extension CharactersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section != 0 { return }
        
        let selectedCharacter = characters[indexPath.row]
        output.hasSelected(character: selectedCharacter)
    }
}

extension CharactersViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0:
                return characters.count
            default:
                return isWaitingForData ? 1 : 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: CharacterTableViewCell.reuseID) as! CharacterTableViewCell
                cell.setup(with: characters[indexPath.item])
                return cell
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: LoadingTableViewCell.reuseID) as! LoadingTableViewCell
                cell.animate()
                return cell
            default:
                fatalError("Section is not supposed to exist")
        }
    }
}
