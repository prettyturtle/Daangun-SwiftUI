//
//  HomeView.swift
//  Daangun
//
//  Created by yc on 2023/04/27.
//

import SwiftUI

struct HomeView: View {
    
    let items: [Item] = Item.mocks
    
    var body: some View {
        NavigationView {
            VStack {
                Divider()
                
                ScrollView {
                    LazyVStack {
                        ForEach(items, id: \.id) { item in
                            NavigationLink {
                                Text(item.title)
                            } label: {
                                ItemListCell(item: item)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
            .toolbar {
                makeLeadingNavigationItem()     // 좌측 내비게이션 아이템
                makeTrailingNavigationItem()    // 우측 내비게이션 아이템
            }
        }
        .scrollIndicators(.hidden)
    }
}

extension HomeView {
    func makeLeadingNavigationItem() -> some ToolbarContent {
        return ToolbarItem(placement: .navigationBarLeading) {
            HStack {
                Text("용현5동")
                    .font(.system(size: 20, weight: .bold))
                
                Image(systemName: "chevron.down")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 16, height: 16)
            }
        }
    }
    
    func makeTrailingNavigationItem() -> some ToolbarContent {
        return ToolbarItem(placement: .navigationBarTrailing) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .padding(.trailing, 8)
                
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .padding(.trailing, 8)
                
                Image(systemName: "bell")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
