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
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44,height: 44)
                }
            }.padding()
            
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
