//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Faizal Patel on 02/01/2024.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70,height: 70)
                .padding()
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }

}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
