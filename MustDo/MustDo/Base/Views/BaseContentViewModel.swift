//
//  BaseContentViewModel.swift
//  MustDo
//
//  Created by 남기범 on 2021/12/24.
//

import Foundation
import Combine
import SwiftUI

struct MustDo: Identifiable {
    var id: UUID = UUID()
    let description: String
    let hour: Int
}

class BaseContentViewModel: ObservableObject {
    private let listDataSourceSubject = PassthroughSubject<[MustDo], Never>()
    private var cancellableSet = Set<AnyCancellable>()
    
    // Published Property
    @Published var listDataSource: [MustDo] = []
    
    init() {
        bind()
        configureListDataSource()
    }
    
    func bind() {
        listDataSourceSubject
            .replaceError(with: [])
            .assign(to: \.listDataSource, on: self)
            .store(in: &cancellableSet)
    }
    
    func configureListDataSource() {
        let listData = [1, 2, 3, 4, 5].map { MustDo(description: "할일 목록: \($0)", hour: $0) }
        listDataSourceSubject.send(listData)
    }
}
