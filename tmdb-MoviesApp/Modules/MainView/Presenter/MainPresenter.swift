//
//  MainPresenter.swift
//  tmdb-MoviesApp
//
//  Created by Mahmoud Hashim on 12/25/22.
//

import Foundation

protocol MainPresenterPr {
    // Properties
    
    // Methods
}

class MainPresenter: MainPresenterPr {
    //MARK:- Properties
    var view: MainPresenterPr?

    init(view: MainPresenterPr) {
        self.view = view
        print("Presenter Has been initialized")
    }
    
    //MARK:- Methods
    
    
}
