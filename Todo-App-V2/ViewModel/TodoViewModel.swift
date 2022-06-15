//
//  TodoViewModel.swift
//  Todo-App-V2
//
//  Created by Mert Şafaktepe on 14.06.2022.
//

import Foundation

class TodoViewModel: NSObject {
    static var sharedInstance = TodoViewModel()
   
    let tasksKey = "task_list"
    var tasks = [Task]()
    
    typealias completionHandler = () -> Void
    
    func addNewTask(task: Task) {
        do{
            let encoder = JSONEncoder()
            let jsonData = try encoder.encode(task)
            UserDefaults.standard.set(jsonData, forKey: "deneme")
            
            } catch {
            print("Unable to Encode Task (\(error))")
            }
        }
}

