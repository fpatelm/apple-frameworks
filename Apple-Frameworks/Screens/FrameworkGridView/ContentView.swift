//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by Faizal Patel on 01/01/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink {
                        FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)
                    } label: {
                        FrameworkTitleView(framework: framework)
                    }
                }
                .navigationTitle("Frameworks")
            }
        }.accentColor(Color(.label))
    }
}
    
    
#Preview {
    ContentView()
}
