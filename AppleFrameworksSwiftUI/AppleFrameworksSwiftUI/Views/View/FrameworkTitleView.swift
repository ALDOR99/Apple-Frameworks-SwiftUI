//
//  FrameworkTitleView.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Durna on 17.01.2024.
//

import SwiftUI

// FrameworkTitleView adında bir görünüm oluşturuyoruz.
struct FrameworkTitleView: View {
    
    // Görünümde kullanılacak çerçeve modeli.
    let framework: Framework
    
    // Görünümün vücut kısmı.
    var body: some View {
        // Dikey düzen içeren bir VStack.
        VStack {
            // Çerçeve resmini içeren ve boyutu ayarlanabilir bir görüntü.
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            // Çerçeve adını içeren metin.
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding() // Kenar boşlukları ekler.
    }
}

// Önizleme bölümü.
#Preview {
    // FrameworkTitleView yapısının bir örneği.
    FrameworkTitleView(framework: MockData.sampleFramework)
}

