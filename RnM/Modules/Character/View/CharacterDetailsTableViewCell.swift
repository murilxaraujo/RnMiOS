//
//  CharacterDetailsTableViewCell.swift
//  RnM
//
//  Created by Murilo Araujo on 17/11/20.
//

import UIKit

class CharacterDetailsTableViewCell: UITableViewCell {
    public static let cellID = "CharacterDetailsTableViewCellID"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
