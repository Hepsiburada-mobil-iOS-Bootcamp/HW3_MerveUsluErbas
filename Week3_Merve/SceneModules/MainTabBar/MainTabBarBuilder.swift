//
//  MainTabBarBuilder.swift
//  Week3_Merve
//
//  Created by Cokomel on 3.10.2021.
//
import UIKit

class MainTabBarBuilder {
    
    class func build() -> UIViewController {
        
        let mainViewController = MainViewBuilder.build()
        let favoriteViewController = FavoriteViewBuilder.build()

        let tabViewController = MainTabBarController()
//        let navigationViewController = UINavigationController(rootViewController: tabViewController)
        tabViewController.viewControllers = [mainViewController,
                                             favoriteViewController]
        tabViewController.tabBar.tintColor = .green
        tabViewController.tabBar.backgroundColor = .purple
        
        return tabViewController
        
    }
    
}
