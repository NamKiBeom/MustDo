//
//  BaseContentViewModel.swift
//  MustDo
//
//  Created by 남기범 on 2021/12/24.
//

import Foundation
import Combine
import SwiftUI

struct MustDoList: Identifiable {
    var id: UUID = UUID()
    let description: String
}

class BaseContentViewModel: ObservableObject {
    private let listDataSourceSubject = PassthroughSubject<[MustDoList], Never>()
    private var cancellableSet = Set<AnyCancellable>()
    
    // Published Property
    @Published var listDataSource: [MustDoList] = []
    
    init() {
        listDataSourceSubject
            .replaceError(with: [])
            .assign(to: \.listDataSource, on: self)
            .store(in: &cancellableSet)
            
        let listData = [0, 1, 2, 3, 4, 5].map { MustDoList(description: "할일 목록: \($0)") }
        listDataSourceSubject.send(listData)
    }
}
