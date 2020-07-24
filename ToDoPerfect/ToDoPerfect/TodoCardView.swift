//
//  TodoCardView.swift
//  ToDoPerfect
//
//  Created by 王梦杰 on 2020/7/24.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import SwiftUI

struct TodoCardView: View {
    
    @State var isChecked: Bool = false
    
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 10)
                .foregroundColor(.blue)
            VStack(alignment: .leading, spacing: 8) {
                Text("Hello")
                Text("2020.09.01")
            }
            Spacer()
            Image(systemName: self.isChecked ? "checkmark.square" : "square")
                .font(.title)
                .foregroundColor(.blue)
                .padding(.trailing)
                .onTapGesture {
                    self.isChecked.toggle()
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
