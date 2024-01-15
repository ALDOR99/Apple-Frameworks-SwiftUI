//
//  FrameworkGridView.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Durna on 15.01.2024.

import SwiftUI
struct FrameworkGridView: View {
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())
    ]
    var body: some View {
        NavigationView{
            LazyVGrid(columns: columns) {
                ForEach(MockData.frameworks){ framework in
                    FrameworkTitleView(framework: framework)
                }
            }
        }
    }
}
#Preview {
    FrameworkGridView()
}
struct FrameworkGrid_Previews: PreviewProvider{
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
struct FrameworkTitleView: View {
    let framework: Framework
    var body : some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
