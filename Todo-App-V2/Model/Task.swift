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





/*
 let firstTask = Task(taskName: "tryciz1")

 do{
     // Create JSON Encoder
     let encoder = JSONEncoder()

     // Encode Note
     let data = try encoder.encode(firstTask)

     // Write/Set Data
     UserDefaults.standard.set(data, forKey: "task")

 } catch {
     print("Unable to Encode Task (\(error))")
 }*/
