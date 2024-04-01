//
//  AppleFrameworksButton.swift
//  Apple Frameworks
//
//  Created by Danny Boie on 3/31/24.
//

import Foundation
import SwiftUI

struct AppleFrameworksButton: View {
    
    let buttonText: String
    
    var body: some View {
        Text(buttonText)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AppleFrameworksButton(buttonText: "Learn More")
}
