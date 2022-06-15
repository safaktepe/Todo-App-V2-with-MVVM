//
//  Task.swift
//  Todo-App-V2
//
//  Created by Mert Şafaktepe on 9.06.2022.
//

import Foundation

struct Task: Codable {
    let taskName: String
  //  let taskDescription: String
    
    init(taskName: String){
        self.taskName = taskName
      //  self.taskDescription = taskDescription
    }
   
}


 
