//
//  LoginViewModel.swift
//  Swift-TDD
//
//  Created by Daolang Huang on 2020/11/16.
//

import UIKit

class LoginViewModel: NSObject {
    func login(userName: String, password: String) -> Bool {
        guard userName == "TDD" && password == "321" else { return false }
        return true
    }
}
