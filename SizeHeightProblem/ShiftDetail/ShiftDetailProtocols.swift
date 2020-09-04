//
//  ShiftDetailProtocols.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2019-07-17.
//  Copyright (c) 2019 Waleed Hassan. All rights reserved.

import Foundation

//MARK: Wireframe -
protocol ShiftDetailRouterProtocol: class {
    func reportTime(/*workshift*/)
}

//MARK: View -
protocol ShiftDetailViewProtocol: class {
    var presenter: ShiftDetailPresenterProtocol?  { get set }
    
    func onError(message:String)
}

//MARK: Presenter -
protocol ShiftDetailPresenterProtocol: class {
    var view: ShiftDetailViewProtocol? {get set}
    var interactor: ShiftDetailInteractorInputProtocol? {get set}
    var router: ShiftDetailRouterProtocol? {get set}
    
    var workshift: CalendarWorkshiftViewModel? {get set}
    
    func viewDidLoad()
    func onError(message:String)
    
    func reportTime(/*Workshift?*/)
}

//MARK: Interactor  - Input
protocol ShiftDetailInteractorInputProtocol: class {
    var presenter: ShiftDetailInteractorOutputProtocol?  { get set }
    var remoteDataManager: ShiftDetailRemoteDataManagerInputProtocol? { get set }
    var localDataManager: ShiftDetailLocalDataManagerInputProtocol? { get set }
    
    /* Presenter -> Interactor */
}

//MARK: Interactor  - Output
protocol ShiftDetailInteractorOutputProtocol: class {
    
    /* Interactor -> Presenter */
    func onError(message:String)
}

//MARK: DataManager  - Remote
protocol  ShiftDetailRemoteDataManagerInputProtocol: class {
    var remoteRequestHandler: ShiftDetailRemoteDataManagerOutputProtocol? { get set }
    
    // INTERACTOR -> REMOTEDATAMANAGER
    
}

protocol  ShiftDetailRemoteDataManagerOutputProtocol: class {
    
    // REMOTEDATAMANAGER -> INTERACTOR
    func onRemoteError(message:String)
}


//MARK: DataManager  - Local
protocol  ShiftDetailLocalDataManagerInputProtocol: class {
    var localRequestHandler: ShiftDetailLocalDataManagerOutputProtocol? { get set }
    
    // INTERACTOR -> REMOTEDATAMANAGER
    
}

protocol  ShiftDetailLocalDataManagerOutputProtocol: class {
    
    // REMOTEDATAMANAGER -> INTERACTOR
    func onLocalError(message:String)
}
