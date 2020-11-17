//
//  CharacterCharacterInteractor.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//
import RnMService

class CharacterInteractor: CharacterInteractorInput {
   
    weak var output: CharacterInteractorOutput!

    func getSections(from character: RnMCharacter) {
        var sections = [CharacterSection]()
        
        let characterBasicInfo = CharacterSection(items: [
            CharacterItem(key: "basicInfo", value: "")
        ], sectionCellID: CharacterBasicInfoTableViewCell.cellID)
        
        sections.append(characterBasicInfo)
        
        let characterDetails = CharacterSection(items: [
            CharacterItem(key: "Species", value: character.species),
            CharacterItem(key: "Type", value: character.type != "" ? character.type : "Unknown"),
            CharacterItem(key: "Gender", value: character.gender),
            CharacterItem(key: "Origin", value: character.origin.name ?? "Unknown"),
            CharacterItem(key: "Location", value: character.location.name ?? "Unknown"),
            CharacterItem(key: "Appears in", value: "\(character.episode.count) episode(s)")
        ], sectionCellID: CharacterDetailsTableViewCell.cellID)
        
        sections.append(characterDetails)
        
        output.setView(sections: sections)
    }
}
