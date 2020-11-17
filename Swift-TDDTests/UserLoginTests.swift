//
//  UserLogin.swift
//  Swift-TDDTests
//
//  Created by Daolang Huang on 2020/11/16.
//
import Quick
import Nimble

@testable import Swift_TDD

class UserLoginTests: QuickSpec {
    
    override func spec() {
        userNameNotFoundTest()
        passwordErrorTest()
        userNameAndPasswordAllCorrectTest()
    }
    
    func userNameNotFoundTest() {
        describe("Given user name not exited") {
            let userName = "Demo"
            let password = "123"
            context("When login") {
                let loginVM: LoginViewModel = LoginViewModel()
                it("Then login failed") {
                    expect(loginVM.login(userName: userName, password: password)).to(equal(false))
                }
            }
        }
    }
    
    func passwordErrorTest() {
        describe("Given password is error") {
            let userName = "TDD"
            let password = "123"
            context("When login") {
                let loginVM: LoginViewModel = LoginViewModel()
                it("Then login failed") {
                    expect(loginVM.login(userName: userName, password: password)).to(equal(false))
                }
            }
        }
    }

    func userNameAndPasswordAllCorrectTest() {
        describe("Given user name and password all correct") {
            let userName = "TDD"
            let password = "321"
            context("When login") {
                let loginVM: LoginViewModel = LoginViewModel()
                it("Then login failed") {
                    expect(loginVM.login(userName: userName, password: password)).to(equal(true))
                }
            }
        }
    }
}
