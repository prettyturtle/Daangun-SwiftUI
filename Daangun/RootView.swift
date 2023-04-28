//
//  RootView.swift
//  Daangun
//
//  Created by yc on 2023/04/27.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("홈")
                }
            Text("2")
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("동네생활")
                }
            Text("3")
                .tabItem {
                    Image(systemName: "location.circle")
                    Text("내 근처")
                }
            Text("4")
                .tabItem {
                    Image(systemName: "message")
                    Text("채팅")
                }
            Text("5")
                .tabItem {
                    Image(systemName: "person")
                    Text("나의 당근")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
