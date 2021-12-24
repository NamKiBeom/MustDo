//
//  BaseContentView.swift
//  MustDo
//
//  Created by 남기범 on 2021/12/21.
//

import SwiftUI

struct BaseContentView: View {
    @ObservedObject var viewModel: BaseContentViewModel
    
    var body: some View {
        List(viewModel.listDataSource) { dataSource in
            Text("\(dataSource.description)")
        }
    }
}

struct BaseContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = BaseContentViewModel()
        BaseContentView(viewModel: viewModel)
    }
}
