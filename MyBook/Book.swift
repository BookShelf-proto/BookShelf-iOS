//
//  Book.swift
//  MyBook
//
//  Created by SeongEun on 2024/04/21.
//

import UIKit

// Music 모델입니다.
// 멤버 변수가 총 세 개인 Music 구조체를 생성했습니다.
struct Book {
    var idx: Int
    var title: String
    var page: Int
    
    
    init(idx: Int, title: String, page: Int) {
        self.idx = idx
        self.title = title
        self.page = page
    }
    
}
