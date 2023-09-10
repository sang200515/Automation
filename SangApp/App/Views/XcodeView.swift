//
//  XcodeView.swift
//  SangApp
//
//  Created by Sang Truong on 10/09/2023.
//

import SwiftUI
import AppKit
import ScriptingBridge
struct XcodeOpenView: View {
    var body: some View {
        Button("Open Xcode Project") {
            openXcodeProject()
        }
        .padding()
    }

    func openXcodeProject() {
        let projectPath = "/Users/sangtruong/Desktop/Clone_Test/EarlGrey/EarlGrey.xcodeproj"

        let workspace = NSWorkspace.shared
        let url = URL(fileURLWithPath: projectPath)

        do {
            try workspace.open([url], withAppBundleIdentifier: "com.apple.dt.Xcode", options: [], additionalEventParamDescriptor: nil, launchIdentifiers: nil)
            print("Xcode project opened successfully")
        } catch {
            print("Failed to open Xcode project: \(error)")
        }
    }
}
