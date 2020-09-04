//
//  ShiftDetailRouter.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2019-07-17.
//  Copyright (c) 2019 Waleed Hassan. All rights reserved.

import UIKit
import Timey_SwaggerRest

class ShiftDetailRouter: ShiftDetailRouterProtocol {
    weak var viewController: UIViewController?
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: "ShiftDetail", bundle: Bundle.main)
    }
    
    static func createModule(workshift: CalendarWorkshiftViewModel) -> UIViewController {
        

        guard let navigationController = storyboard.instantiateViewController(withIdentifier: "ShiftDetailNavigationController") as? UINavigationController else {
            onError(message: "Failed to instantiate navigation controller.")
            return UIViewController()
        }

        guard let view = navigationController.children.first as? ShiftDetailViewController else{
            onError(message: "Unable to fetch view controller from navigation controller.")
            return UIViewController()
        }


        let interactor:ShiftDetailInteractorInputProtocol & ShiftDetailRemoteDataManagerOutputProtocol & ShiftDetailLocalDataManagerOutputProtocol = ShiftDetailInteractor()
        let router = ShiftDetailRouter()
        let presenter: ShiftDetailPresenterProtocol & ShiftDetailInteractorOutputProtocol = ShiftDetailPresenter()
        let remoteDataManager: ShiftDetailRemoteDataManagerInputProtocol = ShiftDetailRemoteDataManager()
        let localDataManager: ShiftDetailLocalDataManagerInputProtocol = ShiftDetailLocalDataManager()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.remoteDataManager = remoteDataManager
        interactor.localDataManager = localDataManager
        remoteDataManager.remoteRequestHandler = interactor
        localDataManager.localRequestHandler = interactor
        router.viewController = view
        
        view.presenter?.workshift = workshift
        
        return navigationController
    }
    
    func reportTime() {
        self.viewController?.present(ManageShiftRouter.createModule(shift: nil), animated: true, completion: nil)
    }
    
    static func onError(message: String) {
        print(message)
    }
}
