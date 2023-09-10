//
//  Translate.swift
//  Sang's App
//
//  Created by Sang Truong on 10/09/2023.
//

import Foundation
import SwiftUI
import ScriptingBridge
import Combine

struct TranslationView: View {
    @Environment(\.openURL) var openURL
    @State private var inputText = AppData().getClipboardValue()
    @State private var translatedText = ""
    var action:(() -> Void)
    var body: some View {
        VStack {
//            TextEditor(text: $inputText)
//                .cornerRadius(12)
//                .padding()
//
//            Text(AppData().getClipboardValue())
//            Button(action: {
//                guard let url = URL(string: "https://translate.google.com/?hl=vi&sl=auto&tl=en&text=expression&op=translate") else { return }
//                openURL(url)
//            }) {
//                Text(verbatim: "Dịch")
//            }
//            .keyboardShortcut(.defaultAction)

        } .onAppear {
            guard let url = URL(string: "https://translate.google.com/?hl=vi&sl=auto&tl=en&text=&op=translate") else { return }
            openURL(url)
            action()
        }
    }
}
struct TranslationResponse: Decodable {
    let translation: String
}
