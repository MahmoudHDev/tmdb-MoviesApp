//
//  ViewController.swift
//  tmdb-MoviesApp
//
//  Created by Mahmoud Hashim on 12/25/22.
//

import UIKit


class MainViewController: UIViewController, MainPresenterPr {
    // MARK:- Properties
    var presenter: MainPresenterPr?
    var tap = UITapGestureRecognizer()
    
    // MARK:- Outlets
    @IBOutlet weak var logoImgView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var errorMessageLbl: UILabel!
    @IBOutlet weak var notAMemeberLbl: UILabel!
    @IBOutlet weak var joinUsBtn: UIButton!

    // MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = MainPresenter(view: self)
        self.setupUIStyle()
        self.setupTextFieldDelegate()
        self.setupButtonsStyle()
        


    }
    
    // MARK:- Functions
    private func setupUIStyle() {
        
        usernameTextField.layer.cornerRadius    = 18
        passwordTextField.layer.cornerRadius    = 18
        
        usernameTextField.clipsToBounds         = true
        passwordTextField.clipsToBounds         = true
        
    }
    
    private func setupButtonsStyle() {
        
        tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        // Login Button
        loginBtn.layer.cornerRadius             = 18
        loginBtn.clipsToBounds                  = true
        loginBtn.isEnabled                      = false
        
    }
    
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    // MARK:- Actions
    @IBAction func loginBttn(_ sender: UIButton) {
        print("login!")

    }
    
    @IBAction func joinUsBttn(_ sender: Any) {
        print("Join us!")
    }
}



// "https://api.themoviedb.org/3/movie/550?api_key=7ceb25c5f86b2b10d9784044bb2c7fb3"
