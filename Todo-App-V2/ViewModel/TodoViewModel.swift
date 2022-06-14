//
//  TodoViewModel.swift
//  Todo-App-V2
//
//  Created by Mert Şafaktepe on 14.06.2022.
//

import Foundation

class TodoViewModel: ObservableObject {
    static var sharedInstance = TodoViewModel()
    
    var tasks = [Task]()
    
    init(){
        getTasks()
    }
    typealias completionHandler = () -> Void
    
    func addNewTask(task: Task, completion: (completionHandler) -> Void) {
   }
    
    func getTasks() {
        let newTasks = [Task(taskName: "matematik"),
                        Task(taskName: "ingilizce") ]
        tasks.append(contentsOf: newTasks)
    }
}
