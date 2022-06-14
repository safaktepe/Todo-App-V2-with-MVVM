//
//  CustomTaskCell.swift
//  Todo-App-V2
//
//  Created by Mert Şafaktepe on 9.06.2022.
//

import UIKit
import SnapKit

class CustomTaskCell: UITableViewCell {
    static let identifier = "CustomTaskCell"
     let checkButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("isDone?", for: .normal)
        button.addTarget(CustomTaskCell.self, action: #selector(checkButtonClicked), for: .touchUpInside)
        return button
    }()
     lazy var cellTitle: UILabel  = {
        let cellLabel = UILabel()
        cellLabel.text = "Tasksasddsakdaskaskl"
        cellLabel.textColor = .white
        cellLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 17)
        cellLabel.textAlignment = .center
        return cellLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .orange
        contentView.addSubview(checkButton)
        contentView.addSubview(cellTitle)
    }
    override func prepareForReuse() {
           super.prepareForReuse()
           cellTitle.text = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        checkButton.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(5)
            make.top.equalTo(contentView).offset(5)
            make.height.equalTo(contentView.snp.height).offset(-10)
            make.width.equalTo(100)
        }
        cellTitle.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(5)
            make.left.equalTo(checkButton.snp.right).offset(5)
         // make.right.equalTo(contentView).offset(-5)
            make.height.equalTo(checkButton.snp.height)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func checkButtonClicked() {
        print("check button clicked")
    }
    
}
