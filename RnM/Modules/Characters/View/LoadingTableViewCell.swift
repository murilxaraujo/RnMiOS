//
//  LoadingTableViewCell.swift
//  RnM
//
//  Created by Murilo Araujo on 16/11/20.
//

import UIKit

class LoadingTableViewCell: UITableViewCell {
    public static let reuseID = "loadingTableViewCellID"
    private let loadingIndicator: UIActivityIndicatorView = {
        let lView = UIActivityIndicatorView()
        lView.translatesAutoresizingMaskIntoConstraints = false
        lView.setContentCompressionResistancePriority(.defaultHigh, for: .vertical)
        lView.color = .label
        return lView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(loadingIndicator)
        let loadingIndicatorConstraints = [
            loadingIndicator.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            loadingIndicator.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            loadingIndicator.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ]
        NSLayoutConstraint.activate(loadingIndicatorConstraints)
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
    }
    
    public func animate() {
        loadingIndicator.startAnimating()
    }
}
