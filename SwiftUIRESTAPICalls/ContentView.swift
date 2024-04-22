//
//  ContentView.swift
//  SwiftUIRESTAPICalls
//
//  Created by Gabriel Estévez López on 4/19/24.
//

import SwiftUI

struct ContentView: View {
    @Environment(UserController.self) private var userControler
    var body: some View {
        
//        NavigationSplitView {
//            ForEach(userControler.users)
//
//        } detail: {
//            Text("Select User")
//        }
        
        
        
        
        ScrollView {
                        Text("All users")
                        .font(.title).bold()
                }
                .onAppear {
                        userControler.getUsers()
                }
        
        VStack(alignment: .leading) {
            ForEach(userControler.users) { user in
                HStack(alignment:.top) {
                    Text("\(user.id)")

                    VStack(alignment: .leading) {
                        Text(user.name)
                            .bold()

                        Text(user.email.lowercased())

                        Text(user.phone)
                    }
                }
                .frame(width: 300, alignment: .leading)
                .padding()
                .background(Color(#colorLiteral(red: 0.6667672396, green: 0.7527905703, blue: 1, alpha: 0.2662717301)))
                .cornerRadius(20)
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(UserController())
}
