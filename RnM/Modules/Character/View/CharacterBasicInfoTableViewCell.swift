//
//  CharacterBasicInfoTableViewCell.swift
//  RnM
//
//  Created by Murilo Araujo on 17/11/20.
//

import UIKit
import RnMService

class CharacterBasicInfoTableViewCell: UITableViewCell {
    public static let cellID = "CharacterBasicInfoTableViewCellID"
    
    private let characterPictureImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 5
        view.contentMode = .scaleAspectFill
        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(characterPictureImageView)
        let cellConstraints = [
            characterPictureImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            characterPictureImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            characterPictureImageView.heightAnchor.constraint(equalToConstant: 150),
            characterPictureImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            characterPictureImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ]
        NSLayoutConstraint.activate(cellConstraints)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func populateCell(with character: RnMCharacter) {
        characterPictureImageView.loadImage(from: character.image)
    }
}
