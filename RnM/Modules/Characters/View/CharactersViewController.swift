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
    let charactersView = CharactersView()
    var output: CharactersViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view = charactersView
        charactersView.collectionView.delegate = self
        output.viewIsReady()
    }

    // MARK: CharactersViewInput
    func setupInitialState() {
    
    }
}

extension CharactersViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
