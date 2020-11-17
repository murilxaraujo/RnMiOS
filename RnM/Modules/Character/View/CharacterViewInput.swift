//
//  CharacterCharacterViewInput.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//
import RnMService

protocol CharacterViewInput: class {

    /**
        @author Murilo Araujo
        Setup initial state of the view
    */

    func setupInitialState(with character: RnMCharacter)
    
    func populateTableView(with sections: [CharacterSection])
    
    func setFavButton(to favorited: Bool)
}
