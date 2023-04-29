//
//  ItemListCell.swift
//  Daangun
//
//  Created by yc on 2023/04/28.
//

import SwiftUI
import URLImage

struct ItemListCell: View {
    
    let item: Item
    
    var body: some View {
        HStack(spacing: 16) {
            URLImage(URL(string: item.imageURL)!) {
                EmptyView()
            } inProgress: { progress in
                ProgressView()
            } failure: { error, retry in
                Button {
                    retry()
                } label: {
                    Image(systemName: "exclamationmark.arrow.triangle.2.circlepath")
                }
            } content: { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            .frame(width: 120, height: 120)
            .clipped() // 프레임 밖 이미지 자르기
            .cornerRadius(8)
            .padding([.leading, .top, .bottom], 16)
            
            VStack(spacing: 4) {
                HStack {
                    Text(item.title)
                        .font(.system(size: 18, weight: .regular))
                    
                    Spacer()
                }
                
                HStack {
                    Text("\(item.address) · \(item.time)")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                
                HStack {
                    Text("\(item.price)원")
                        .font(.system(size: 18, weight: .semibold))
                    
                    Spacer()
                }
                
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "heart")
                    Text("\(item.like)")
                }
            }
            .padding([.top, .trailing, .bottom], 16)
        }
        .frame(width: UIScreen.main.bounds.width, height: 150)
    }
}


struct ItemListCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemListCell(item: Item.mocks.first!)
            .previewLayout(.sizeThatFits)
    }
}
