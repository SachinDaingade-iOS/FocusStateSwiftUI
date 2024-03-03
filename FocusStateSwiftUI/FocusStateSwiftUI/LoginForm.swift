//
//  LoginForm.swift
//  FocusStateSwiftUI
//
//  Created by Sachin Daingade on 03/03/24.
//

import Foundation
import SwiftUI

struct LoginForm : View {
    enum Field: Hashable {
        case username
        case password
    }


    @State private var username = ""
    @State private var password = ""
    @FocusState private var focusedField: Field?


    var body: some View {
        Form {
            TextField("Username", text: $username)
                .focused($focusedField, equals: .username)


            SecureField("Password", text: $password)
                .focused($focusedField, equals: .password)


            Button("Sign In") {
                if username.isEmpty {
                    focusedField = .username
                } else if password.isEmpty {
                    focusedField = .password
                } else {
                    handleLogin(username, password)
                }
            }
        }
    }
    
    func handleLogin(_: String,_: String) {
        
    }
}
