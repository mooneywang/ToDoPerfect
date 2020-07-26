//
//  ToDo.swift
//  ToDoPerfect
//
//  Created by 王梦杰 on 2020/7/26.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import Foundation

class ToDo: ObservableObject {
    
    @Published var todoList: [ToDoData]
    var count: Int = 0
    
    init() {
        self.todoList = []
    }
    
    init(data: [ToDoData]) {
        self.todoList = []
        for item in data {
            let todoData = ToDoData(title: item.title, duedate: item.duedate, isChecked: item.isChecked, id: count)
            self.todoList.append(todoData)
            count += 1
        }
    }
    
    func check(id: Int) {
        self.todoList[id].isChecked.toggle()
    }
    
    func add(data: ToDoData) {
        self.todoList.append(ToDoData(title: data.title, duedate: data.duedate, id: count))
        count += 1
    }
}
