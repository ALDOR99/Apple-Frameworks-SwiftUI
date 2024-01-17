//  AFButton.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Durna on 16.01.2024.
//

import SwiftUI

// AFButton adında bir yapı oluşturuyoruz.
struct AFButton: View {
    
    // Butonun metni.
    var title: String
    
    // Görünümün vücut kısmı.
    var body: some View {
        // Metni içeren ve özellikleriyle özelleştirilmiş bir SwiftUI butonu.
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

// Önizleme bölümü.
#Preview {
    // AFButton yapısının bir örneği.
    AFButton(title: "Test title")
}

