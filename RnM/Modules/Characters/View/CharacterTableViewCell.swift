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
    
    private let characterPhotoImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFill
        view.layer.cornerRadius = 30
        view.clipsToBounds = true
        view.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        view.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        return view
    }()
    
    private let characterNameLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.numberOfLines = 2
        view.setContentHuggingPriority(.defaultLow, for: .horizontal)
        return view
    }()
    
    private let favedIconImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        view.tintColor = .systemBlue
        return view
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(characterPhotoImageView)
        contentView.addSubview(characterNameLabel)
        contentView.addSubview(favedIconImageView)
        let cellConstraints = [
            characterPhotoImageView.heightAnchor.constraint(equalToConstant: 60),
            characterPhotoImageView.widthAnchor.constraint(equalToConstant: 60),
            characterPhotoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            characterPhotoImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            characterPhotoImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            characterNameLabel.leftAnchor.constraint(equalTo: characterPhotoImageView.rightAnchor, constant: 15),
            characterNameLabel.centerYAnchor.constraint(equalTo: characterPhotoImageView.centerYAnchor),
            favedIconImageView.centerYAnchor.constraint(equalTo: characterPhotoImageView.centerYAnchor),
            favedIconImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            favedIconImageView.widthAnchor.constraint(equalToConstant: 24),
            favedIconImageView.heightAnchor.constraint(equalToConstant: 24),
            characterNameLabel.rightAnchor.constraint(equalTo: favedIconImageView.leftAnchor, constant: -10)
        ]
        NSLayoutConstraint.activate(cellConstraints)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func setup(with item: RnMCharacter) {
        characterPhotoImageView.loadImage(from: item.image)
        characterNameLabel.text = item.name
        if FavoritesService.shared.hasFavCharacter(for: item.id) {
            favedIconImageView.image = UIImage(systemName: "heart.fill")
        } else {
            favedIconImageView.image = nil
        }
    }
}
