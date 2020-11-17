//
//  CharacterView.swift
//  RnM
//
//  Created by Murilo Araujo on 16/11/20.
//

import UIKit

class CharacterView: UIView {
    public let tableView = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundColor = .systemBackground
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.frame = frame
        tableView.allowsSelection = false
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
