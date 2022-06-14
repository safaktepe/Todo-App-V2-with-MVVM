//
//  ViewController.swift
//  Todo-App-V2
//
//  Created by Mert Şafaktepe on 6.06.2022.
//

import UIKit
import SnapKit

class TasksListViewController: UIViewController {
    
    
    var data: [Task] = [
        Task(taskName: "matematik"),
        Task(taskName: "ingilizce")
    ]
    
    
    //MARK: Views
    let taskTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .green
        tableView.register(CustomTaskCell.self, forCellReuseIdentifier: CustomTaskCell.identifier)
        return tableView
    }()
    private lazy var mainTitle: UILabel  = {
        let mainLabel = UILabel()
        mainLabel.text = "Tasks"
        mainLabel.textColor = .white
        mainLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 34)
        mainLabel.textAlignment = .center
        return mainLabel
    }()
    private lazy var createTaskButton: UIButton  = {
        let button = UIButton()
        button.setTitle("Create", for: .normal)
        button.addTarget(self, action: #selector(createButtonClicked), for: .touchUpInside)
        return button
    }()
    
    //MARK: View DID LOAD
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
  }
    
    //MARK: Functions
    @objc func createButtonClicked() {
        let page = NewTaskViewController()
        present(page, animated: true, completion: nil)
        }
    //MARK: Setup View
    func setupView() {
        taskTableView.dataSource = self
        taskTableView.delegate = self
        view.backgroundColor = .red
        view.addSubview(mainTitle)
        view.addSubview(createTaskButton)
        view.addSubview(taskTableView)
        mainTitle.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30)
            make.left.equalTo(view).offset(30)
            make.height.equalTo(30)
        }
        createTaskButton.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(30)
            make.right.equalTo(view).offset(-30)
        }
        taskTableView.snp.makeConstraints { make in
            make.top.equalTo(mainTitle.snp.bottom).offset(25)
            make.left.equalTo(view)
            make.right.equalTo(view)
            make.bottom.equalTo(view)
        }
        
    }
}


extension TasksListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTaskCell.identifier, for: indexPath) as! CustomTaskCell
        cell.cellTitle.text = data[indexPath.row].taskName
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
