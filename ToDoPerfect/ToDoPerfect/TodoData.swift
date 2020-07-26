//
//  TodoData.swift
//  ToDoPerfect
//
//  Created by 王梦杰 on 2020/7/26.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import Foundation

struct ToDoData: Identifiable {
    var title: String = ""
    var duedate: Date = Date()
    var isChecked: Bool = false
    
    var id: Int = 0
}
