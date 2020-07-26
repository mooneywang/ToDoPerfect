//
//  TodoCardView.swift
//  ToDoPerfect
//
//  Created by 王梦杰 on 2020/7/24.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import SwiftUI

struct TodoCardView: View {
    
    @EnvironmentObject var todo: ToDo
    @State var showEditingPage: Bool = false
    var index: Int = 0
    
    var body: some View {
        HStack {
            Button(action: {
                self.showEditingPage = true
            }) {
                Group {
                    Rectangle()
                        .frame(width: 10)
                        .foregroundColor(.blue)
                    VStack(alignment: .leading, spacing: 8) {
                        Text(self.todo.todoList[index].title)
                        Text(self.todo.todoList[index].duedate.description)
                    }
                    Spacer()
                }
            }
            .sheet(isPresented: self.$showEditingPage) {
                ToDoEditingPage(title: self.todo.todoList[self.index].title,
                                duedate: self.todo.todoList[self.index].duedate,
                                id: self.index)
                    .environmentObject(self.todo)
            }
            
            Image(systemName: self.todo.todoList[index].isChecked ? "checkmark.square" : "square")
                .font(.title)
                .foregroundColor(.blue)
                .padding(.trailing)
                .onTapGesture {
                    self.todo.check(id: self.index)
            }
        }
        .frame(height: 80)
        .background(Color.yellow)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 10, x: 5, y: 10)
    }
}

struct TodoCardView_Previews: PreviewProvider {
    static var previews: some View {
        TodoCardView()
    }
}
