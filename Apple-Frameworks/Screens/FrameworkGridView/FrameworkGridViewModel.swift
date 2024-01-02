//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Faizal Patel on 02/01/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
    let columns:[GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    
}

