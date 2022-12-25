//
//  MainView+TextField.swift
//  tmdb-MoviesApp
//
//  Created by Mahmoud Hashim on 12/25/22.
//

import UIKit

//MARK:- All textfield Methods
extension MainViewController: UITextFieldDelegate {
 
    func setupTextFieldDelegate() {
        self.usernameTextField.delegate = self
        self.passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
        case usernameTextField:
            self.passwordTextField.becomeFirstResponder()
        case passwordTextField:
            self.dismissKeyboard()
        default:
            break
        }
        
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if usernameTextField.text != "" && passwordTextField.text != "" {
            // change the color of the button to the dark
            self.loginBtn.setTitleColor(.black, for: .normal)
            // second enable the button
            self.loginBtn.isEnabled = true
        }else {
            self.loginBtn.setTitleColor(.darkGray, for: .normal)
            self.loginBtn.isEnabled = false

        }
        
        
    }
}
