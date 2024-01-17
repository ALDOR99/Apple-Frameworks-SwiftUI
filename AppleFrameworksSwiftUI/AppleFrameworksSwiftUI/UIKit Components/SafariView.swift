//
//  SafariView.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Durna on 17.01.2024.
//

import SwiftUI
import SafariServices

// SafariView adında bir yapı oluşturuyoruz.
struct SafariView: UIViewControllerRepresentable {
    
    // Açılacak olan web sayfasının URL'si.
    let url: URL
    
    // UIViewControllerRepresentable protokolünü uygulayan bir yapı olduğu için makeUIViewController fonksiyonu zorunlu olarak uygulanmalıdır.
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        // SFSafariViewController ile URL'yi içeren bir Safari tarayıcısı oluşturulur.
        SFSafariViewController(url: url)
    }
    
    // SwiftUI tarafından çağrılan bu fonksiyon, Safari tarayıcısının görüntülenmesi sırasında bir güncelleme yapılmasını sağlar.
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        // Boş bir güncelleme fonksiyonu, bu örnekte herhangi bir güncelleme yapmamıza gerek olmadığı için boş bırakılmıştır.
    }
}

