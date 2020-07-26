//
//  ContentView.swift
//  ToDoPerfect
//
//  Created by 王梦杰 on 2020/7/24.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var todo: ToDo = ToDo(data: [ToDoData(title: "写作业", duedate: "20200901"),
                                                 ToDoData(title: "复习", duedate: "20200902")])
    
    @State var showEditingPage: Bool = false
    
    var abbButton: some View {
        Button(action: {
            self.showEditingPage = true
        }) {
            Image(systemName: "plus")
            .font(.title)
        }
        .sheet(isPresented: self.$showEditingPage, content: {
            ToDoEditingPage()
            .environmentObject(self.todo)
        })
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    ForEach(todo.todoList) { item in
                        TodoCardView(index: item.id)
                            .environmentObject(self.todo)
                    }
                }.padding()
            }
            .navigationBarTitle(Text("任务列表"), displayMode: .large)
            .navigationBarItems(trailing: abbButton)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
