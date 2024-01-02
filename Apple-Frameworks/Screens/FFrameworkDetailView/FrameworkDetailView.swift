//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Faizal Patel on 02/01/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isSHowSafariView = false
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: URL(string: framework.urlString)!){
                AFButton(title: "Learn More")
            }
          /*  Button {
                isSHowSafariView = true
            } label: {
                AFButton(title: "Learn More")
              
            }*/
                
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
