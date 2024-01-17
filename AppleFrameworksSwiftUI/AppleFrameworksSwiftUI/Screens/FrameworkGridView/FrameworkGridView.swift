//
//  FrameworkGridView.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Durna on 15.01.2024.

import SwiftUI

// FrameworkGridView adında bir görünüm oluşturuyoruz.
struct FrameworkGridView: View {
    
    // FrameworkGridViewModel'in bir örneğini kullanarak view modeli tutuyoruz.
    @StateObject var viewModel = FrameworkGridViewModel()
    
    // Görünümün vücut kısmı.
    var body: some View {
        
        // NavigationView içeren ana görünüm.
        NavigationView {
            
            // ScrollView ile içeriğin kaydırılabilir olmasını sağlıyoruz.
            ScrollView {
                
                // LazyVGrid ile dinamik sütunlu bir ızgara oluşturuyoruz.
                LazyVGrid(columns: viewModel.columns) {
                    
                    // Veri kümesinde dolaşarak her bir çerçeve için FrameworkTitleView oluşturuyoruz.
                    ForEach(MockData.frameworks) { framework in
                        
                        // FrameworkTitleView tıklanabilir hale getirilmiş ve seçilen çerçeve view modelde güncellenmiştir.
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 FrameWorks") // Sayfanın başlık metni.
            
            // Detay ekranı, seçilen çerçeve için viewModel tarafından kontrol edilen bir sheet ile açılır.
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

// Önizleme bölümü.
#Preview {
    // FrameworkGridView yapısının bir örneği.
    FrameworkGridView()
}

// Önizleme için ayrı bir yapı oluşturuyoruz.
struct FrameworkGrid_Previews: PreviewProvider {
    static var previews: some View {
        // Koyu renk temasında örnek bir önizleme yapısı.
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

