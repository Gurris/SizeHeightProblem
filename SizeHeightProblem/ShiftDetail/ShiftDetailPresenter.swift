//
//  ShiftDetailPresenter.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2019-07-17.
//  Copyright (c) 2019 Waleed Hassan. All rights reserved.

import Foundation

class ShiftDetailPresenter: ShiftDetailPresenterProtocol {
    
    var view: ShiftDetailViewProtocol?
    var interactor: ShiftDetailInteractorInputProtocol?
    var router: ShiftDetailRouterProtocol?
    
    var workshift: CalendarWorkshiftViewModel?
    
    func viewDidLoad() {
        
    }
    
    func onError(message: String) {
        view?.onError(message: message)
    }
    
    func reportTime() {
        router?.reportTime()
    }

}
extension ShiftDetailPresenter: ShiftDetailInteractorOutputProtocol {
    
}

