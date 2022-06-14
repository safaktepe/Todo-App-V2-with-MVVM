//
//  NewTaskView.swift
//  Todo-App-V2
//
//  Created by Mert Şafaktepe on 9.06.2022.
//

import UIKit
import SnapKit

class NewTaskViewController: UIViewController {
   //MARK: Views
    private lazy var mainTitle: UILabel  = {
        let mainLabel = UILabel()
        mainLabel.text = "Create new one"
        mainLabel.textColor = .white
        mainLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 34)
        mainLabel.textAlignment = .center
        return mainLabel
    }()
    
    private lazy var saveButton: UIButton  = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.addTarget(self, action: #selector(saveButtonClicked), for: .touchUpInside)
        return button
    }()
    private lazy var taskNameLabel: UILabel  = {
        let mainLabel = UILabel()
        mainLabel.text = "Task's Name"
        mainLabel.textColor = .white
        mainLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 20)
        mainLabel.textAlignment = .center
        return mainLabel
    }()
    private lazy var descriptionLabel: UILabel  = {
        let mainLabel = UILabel()
        mainLabel.text = "Task's Description"
        mainLabel.textColor = .white
        mainLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 20)
        mainLabel.textAlignment = .center
        return mainLabel
    }()
    private lazy var taskNameTextField: UITextField = {
        let nameTextField = UITextField()
        nameTextField.placeholder = "Task's title"
        nameTextField.backgroundColor = .white
        nameTextField.textColor = .orange
        return nameTextField
    }()
    private lazy var taskDescriptionTextField: UITextField = {
        let descriptionTextField = UITextField()
        descriptionTextField.placeholder = "Task's description"
        descriptionTextField.backgroundColor = .white
        descriptionTextField.textColor = .orange
        return descriptionTextField
    }()
    //MARK: View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

    }
    
    //MARK: Functions
    @objc func saveButtonClicked() {
        print("save button clicked")
    }
    //MARK: Setup views and constraints
    func setupView() {
        view.backgroundColor = .brown
        view.addSubview(mainTitle)
        view.addSubview(saveButton)
        view.addSubview(taskNameLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(taskNameTextField)
        view.addSubview(taskDescriptionTextField)
        mainTitle.snp.makeConstraints { make in
            mainTitle.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30)
                make.left.equalTo(view).offset(20)
                make.height.equalTo(30)
            }
            saveButton.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30)
                make.right.equalTo(view).offset(-20)
            }
            taskNameLabel.snp.makeConstraints { make in
                make.top.equalTo(mainTitle.snp.bottom).offset(90)
                make.left.equalTo(view).offset(20)
            }
            taskNameTextField.snp.makeConstraints { make in
                make.top.equalTo(taskNameLabel.snp.bottom).offset(5)
                make.left.equalTo(view).offset(20)
                make.right.equalTo(view).offset(-20)
                make.height.equalTo(30)
            }
            descriptionLabel.snp.makeConstraints { make in
                make.top.equalTo(taskNameTextField.snp.bottom).offset(30)
                make.left.equalTo(view).offset(20)
            }
            taskDescriptionTextField.snp.makeConstraints { make in
                make.top.equalTo(descriptionLabel.snp.bottom).offset(5)
                make.left.equalTo(view).offset(20)
                make.right.equalTo(view).offset(-20)
                make.height.equalTo(30)

            }
        }
    }

}
