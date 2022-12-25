//
//  ViewController.swift
//  tmdb-MoviesApp
//
//  Created by Mahmoud Hashim on 12/25/22.
//

import UIKit

class MainViewController: UIViewController {
    // MARK:- Properties
    
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
        self.setupUIStyle()
        // Do any additional setup after loading the view.
    }
    
    // MARK:- Functions
    private func setupUIStyle() {
        
        usernameTextField.layer.cornerRadius    = 18
        passwordTextField.layer.cornerRadius    = 18
        usernameTextField.clipsToBounds         = true
        passwordTextField.clipsToBounds         = true
        
        loginBtn.layer.cornerRadius             = 18
        
        
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
