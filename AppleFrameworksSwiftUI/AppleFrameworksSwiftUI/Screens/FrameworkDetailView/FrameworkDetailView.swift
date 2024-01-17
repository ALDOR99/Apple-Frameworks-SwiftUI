//
//  FrameworkDetailView.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Durna on 16.01.2024.
//

// SwiftUI framework'ünü içe aktarıyoruz.
import SwiftUI

// FrameworkDetailView adlı yapıyı oluşturuyoruz.
struct FrameworkDetailView: View {
    
    // Görünümde kullanılacak çerçeve modeli.
    var framework: Framework
    
    // Detay ekranın görünürlüğünü kontrol etmek için bağlayıcı bir değişken.
    @Binding var isShowingDetailView: Bool
    
    // Safari tarayıcısını açmak için kullanılan state değişken.
    @State private var isShowingSafariView = false
    
    // Görünümün vücut kısmı.
    var body: some View {
        
        // Ana dikey düzen.
        VStack {
            
            // Üst kısımda "x" simgesi ile detay ekranı kapatma butonu.
            XDissmisButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer() // Üst ve alt kısımlarda boşluk bırakır.
            
            // Çerçeve başlığını gösteren alt görünüm.
            FrameworkTitleView(framework: framework)
            
            // Çerçeve açıklamasını gösteren metin.
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer() // Üst ve alt kısımlarda boşluk bırakır.
            
            // "Learn More" butonu ile ilişkilendirilmiş özel bir buton.
            Button {
                isShowingSafariView = true
                // Butona tıklandığında yapılacak işlemler.
            } label: {
                AFButton(title: "Learn More")
            }
        }
        // Safari tarayıcısını açan ekranı gösterir.
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

// Önizleme bölümü.
#Preview {
    // FrameworkDetailView yapısının bir örneği.
    FrameworkDetailView(framework: MockData.sampleFramework,
                        isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark) // Koyu renk temasını tercih eder.
}

