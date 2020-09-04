//
//  ShiftDetailInteractor.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2019-07-17.
//  Copyright (c) 2019 Waleed Hassan. All rights reserved.

import Foundation

class ShiftDetailInteractor: ShiftDetailInteractorInputProtocol {
    var presenter: ShiftDetailInteractorOutputProtocol?
    var remoteDataManager:ShiftDetailRemoteDataManagerInputProtocol?
    var localDataManager:ShiftDetailLocalDataManagerInputProtocol?

}

extension ShiftDetailInteractor: ShiftDetailRemoteDataManagerOutputProtocol {
    
    func onRemoteError(message:String) {
        presenter?.onError(message:message)
    }
}
extension ShiftDetailInteractor: ShiftDetailLocalDataManagerOutputProtocol {
    
    func onLocalError(message:String) {
        presenter?.onError(message:message)
    }
}
