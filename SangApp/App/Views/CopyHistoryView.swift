////
////  CopyHistoryView.swift
////  SangApp
////
////  Created by Sang Truong on 10/09/2023.
////
//
//import SwiftUI
//
//struct CopyHistoryView: View {
//    @ObservedObject var viewModel: CopyHistoryViewModel
//
//    var body: some View {
//        NavigationView {
//            List(viewModel.copyHistory) { item in
//                VStack(alignment: .leading) {
//                    Text(item.text)
//                        .font(.headline)
//                    Text("\(item.timestamp)")
//                        .font(.subheadline)
//                        .foregroundColor(.gray)
//                }
//            }
//            .navigationTitle("Copy History")
//            .navigationBarItems(trailing: Button(action: clearCopyHistory) {
//                Text("Clear")
//            })
//        }
//    }
//
//    func clearCopyHistory() {
//        viewModel.copyHistory.removeAll()
//    }
//}
//
//struct CopyHistoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        CopyHistoryView(viewModel: CopyHistoryViewModel())
//    }
//}
//struct CopyHistoryItem: Identifiable {
//    let id = UUID()
//    let text: String
//    let timestamp: Date
//}
//class CopyHistoryViewModel: ObservableObject {
//    @Published var copyHistory: [CopyHistoryItem] = []
//
//    func addCopyItem(_ text: String) {
//        let newItem = CopyHistoryItem(text: text, timestamp: Date())
//        copyHistory.insert(newItem, at: 0)
//    }
//}
