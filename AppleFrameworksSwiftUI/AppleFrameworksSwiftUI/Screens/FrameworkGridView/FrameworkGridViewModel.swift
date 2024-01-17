//
//  FrameworkGridViewModel.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Durna on 16.01.2024.
//

import SwiftUI

// FrameworkGridViewModel adında bir sınıf oluşturuyoruz.
final class FrameworkGridViewModel: ObservableObject {
    // Kullanıcının seçtiği çerçeve objesini temsil eden özellik.
    // Bir değeri değiştiğinde isShowingDetailView özelliğini true olarak ayarlar.
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    // Bir çerçevenin ayrıntılarının görüntülenip görüntülenmediğini belirten yayın özelliği.
    // @Published özelliği sayesinde bu değişiklikler otomatik olarak izlenebilir hale gelir.
    @Published var isShowingDetailView = false
    // GridView'deki sütun sayısını belirleyen bir dizi.
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}

