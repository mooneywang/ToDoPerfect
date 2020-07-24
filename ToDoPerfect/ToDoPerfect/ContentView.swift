//
//  ContentView.swift
//  ToDoPerfect
//
//  Created by 王梦杰 on 2020/7/24.
//  Copyright © 2020 MooneyWang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    ForEach(0..<15) { item in
                        TodoCardView()
                    }
                }.padding()
            }.navigationBarTitle(Text("任务列表"), displayMode: .large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
