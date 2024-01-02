//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Faizal Patel on 01/01/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns:[GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }.navigationTitle("Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
                }
        }
    }
}


#Preview {
    ContentView()
}
