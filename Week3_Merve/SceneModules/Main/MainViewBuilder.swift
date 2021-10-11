//
//  MainViewBuilder.swift
//  Week3_Merve
//
//  Created by Cokomel on 3.10.2021.
//

import UIKit

class MainViewBuilder {
    
    class func build() -> UIViewController {

        let viewModel = MainViewModel()
        let viewController = MainViewController(viewModel: viewModel)
        
   
    let navigationViewController = UINavigationController(rootViewController: viewController)
        
        viewController.title = "Main"
        viewController.tabBarItem.image = TabBarImages.home.value
        viewController.tabBarItem.selectedImage = TabBarImages.homeSelected.value
        //viewController.navigationController?.setNavigationBarHidden(true, animated: false)
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .systemBackground
        viewController.navigationController?.navigationBar.standardAppearance = appearance;
        viewController.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        //viewController.navigationController?.navigationBar.standardAppearance

        return navigationViewController
    }
    
}
