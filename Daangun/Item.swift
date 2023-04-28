//
//  Item.swift
//  Daangun
//
//  Created by yc on 2023/04/28.
//

import Foundation

struct Item: Identifiable {
    let id: Int
    let imageURL: String
    let title: String
    let address: String
    let time: String
    let price: Int
    let like: Int
    
    static let mocks: [Self] = [
        Item(id: 0, imageURL: "https://picsum.photos/2560/1440/?random", title: "톰브라운 맨투맨", address: "미추홀구 주안동", time: "끌올 41초 전", price: 100000, like: 1),
        Item(id: 1, imageURL: "https://picsum.photos/2560/1440/?random", title: "아이폰 11 프로 / 그린", address: "연수구 송도3동", time: "4분 전", price: 300000, like: 3),
        Item(id: 2, imageURL: "https://picsum.photos/2560/1440/?random", title: "새상품 기모 블랙 후드집업 (남여공용)", address: "연수구 송도동", time: "끌올 10초 전", price: 500000, like: 5),
        Item(id: 3, imageURL: "https://picsum.photos/2560/1440/?random", title: "형이 군대가서 팝니다", address: "미추홀구 도화동", time: "끌올 10시간 전", price: 200000, like: 1),
        Item(id: 4, imageURL: "https://picsum.photos/2560/1440/?random", title: "lg전자 oled 65인치 팝니다\n(OLED65C9GNA)", address: "연수구 송도5동", time: "끌올 1분 전", price: 100000, like: 2),
        Item(id: 5, imageURL: "https://picsum.photos/2560/1440/?random", title: "아이폰 13 미니", address: "연수구 청학동", time: "1시간 전", price: 123321, like: 6),
        Item(id: 6, imageURL: "https://picsum.photos/2560/1440/?random", title: "[미개봉] 소니 WH-1000XM5 무선 노이즈 캔슬링 헤드폰 실버", address: "연수구 송도동", time: "41초 전", price: 737947, like: 7),
        Item(id: 7, imageURL: "https://picsum.photos/2560/1440/?random", title: "(새상품) 언더아머 남성 속옷 L 3개 세트", address: "미추홀구 도화2,3동", time: "끌올 36초 전", price: 826653, like: 3),
    ]
}
