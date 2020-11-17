//
//  CharacterTableViewCell.swift
//  RnM
//
//  Created by Murilo Araujo on 16/11/20.
//

import UIKit
import RnMService

class CharacterTableViewCell: UITableViewCell {
    public static let reuseID = "CharacterTableViewCellID"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func setup(with item: RnMCharacter) {
        textLabel?.text = item.name
    }
}
