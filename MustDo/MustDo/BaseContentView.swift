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
        NavigationView {
            List(viewModel.listDataSource) { dataSource in
                NavigationLink(destination: MustDoDetailView()) {
                    MustDoCell(dataSource: dataSource)
                }
            }
            .navigationBarTitle("MustDo")
        }
    }
}

struct MustDoCell: View {
    let dataSource: MustDo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(dataSource.description)")
                .font(.headline)
            HStack {
                Text("소요시간: ")
                Text("\(dataSource.hour) hours")
            }
            .font(.subheadline)
        }
    }
}

struct BaseContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = BaseContentViewModel()
        BaseContentView(viewModel: viewModel)
    }
}
