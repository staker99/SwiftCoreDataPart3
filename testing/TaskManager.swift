//
//  TaskManager.swift
//  TableViewTest
//
//  Created by David Owens on 8/23/14.
//  Copyright (c) 2014 David Owens. All rights reserved.
//

import UIKit

var taskMgr:TaskManager = TaskManager()

struct Task{
    var name: String = "Name"
    var description: String = "Description"
    var submitted: String = "Submitted"
}

class TaskManager: NSObject {
    
    var tasks = [Task]()
    var persistenceHelper: PersistenceHelper = PersistenceHelper()
    
    override init(){
        
        var tempTasks:NSArray = persistenceHelper.list("Task")
        for res:AnyObject in tempTasks{
            tasks.append(Task(name:res.valueForKey("name")as String,description:res.valueForKey("desc") as String, submitted:res.valueForKey("subm")as String))
        }
        
    }
    
    func addTask(name:String, desc: String, subm: String){
        
        var dicTask: Dictionary<String, String> = Dictionary<String,String>()
        dicTask["name"] = name
        dicTask["desc"] = desc
        dicTask["subm"] = subm
        
        if(persistenceHelper.save("Task", parameters: dicTask)){
            tasks.append(Task(name: name, description:desc, submitted: subm))
        }
    }
    
    func removeTask(index:Int){
        
        var value:String = tasks[index].name
        
        if(persistenceHelper.remove("Task", key: "name", value: value)){
            tasks.removeAtIndex(index)
        }
    }
    
}