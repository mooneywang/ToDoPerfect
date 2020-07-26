//
//  ToDoEditingPage.swift
//  ToDoPerfect
//
//  Created by 王梦杰 on 2020/7/26.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import SwiftUI

struct ToDoEditingPage: View {
    
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var todo: ToDo
    @State var title: String = ""
    @State var duedate: Date = Date()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("事项内容", text: $title)
                    DatePicker(selection: $duedate) {
                        Text("截止时间")
                    }
                }
                Section {
                    Button(action: {
                        self.todo.add(data: ToDoData(title: self.title, duedate: self.duedate.description))
                        self.presentation.wrappedValue.dismiss()
                    }) {
                        Text("确认")
                    }
                    Button(action: {
                        self.presentation.wrappedValue.dismiss()
                    }) {
                        Text("取消")
                    }
                }
            }
        }
    }
}

struct ToDoEditingPage_Previews: PreviewProvider {
    static var previews: some View {
        ToDoEditingPage()
    }
}
