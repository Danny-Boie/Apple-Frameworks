//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Danny Boie on 3/31/24.
//

import Foundation
import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                
                Button(
                    action: {
                        print("tapped")
                    }, 
                    label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.secondary)
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }
                )
            }.padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Button(
                action: {
                    print("tapped")
                },
                label: {
                    AppleFrameworksButton(buttonText: "Learn More")
                }
            )
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}

