//
//  FrameworkGridView.swift
//  Apple Frameworks
//
//  Created by Danny Boie on 3/31/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                    }
                }
                .navigationTitle("🍎 Frameworks")
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

