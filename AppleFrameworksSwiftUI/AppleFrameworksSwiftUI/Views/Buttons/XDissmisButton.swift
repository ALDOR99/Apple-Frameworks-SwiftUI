//  XDissmisButton.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Durna on 17.01.2024.
//

import SwiftUI

// XDissmisButton adında bir yapı oluşturuyoruz.
struct XDissmisButton: View {
    
    // Detay ekranın görünürlüğünü kontrol etmek için bağlayıcı bir değişken.
    @Binding var isShowingDetailView: Bool
    
    // Görünümün vücut kısmı.
    var body: some View {
        // Yatay düzen içeren bir HStack.
        HStack {
            Spacer() // Sağ kenarı tamamen doldurur.
            
            // Kapatma butonu.
            Button {
                // Kapatma butonuna tıklandığında isShowingDetailView değişkenini false yaparak detay ekranı kapatma işlemini başlatır.
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding() // Kenar boşlukları ekler.
    }
}

// Önizleme bölümü.
#Preview {
    // XDissmisButton yapısının bir örneği.
    XDissmisButton(isShowingDetailView: .constant(false))
}

