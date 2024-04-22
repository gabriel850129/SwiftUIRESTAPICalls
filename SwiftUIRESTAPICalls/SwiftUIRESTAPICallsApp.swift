//
//  SwiftUIRESTAPICallsApp.swift
//  SwiftUIRESTAPICalls
//
//  Created by Gabriel Estévez López on 4/19/24.
//

import SwiftUI

@main
struct SwiftUIRESTAPICallsApp: App {
    @State private var userControler=UserController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(userControler)
        }
    }
}
