//
//  BaseInteractor.swift
//  MustDo
//
//  Created by 남기범 on 2022/01/05.
//

import Foundation

struct BaseInteractor {
    let repository: BaseRepository
    let state: AppState
    
    init(repository: BaseRepository, state: AppState) {
        self.repository = repository
        self.state = state
    }

}
