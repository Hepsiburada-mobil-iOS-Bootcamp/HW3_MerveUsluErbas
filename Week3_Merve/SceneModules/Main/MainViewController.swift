//
//  MainViewController.swift
//  Week3_Merve
//
//  Created by Cokomel on 3.10.2021.
//

import UIKit

extension Selector {
    static let testButtonTapped = #selector(MainViewController.testButtonAction)
}

class MainViewController: BaseViewController<MainViewModel> {

    private lazy var test: UIButton = {
        let temp = UIButton(type: .system)
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.addTarget(self, action: .testButtonTapped, for: .touchUpInside)
        temp.setTitle("PUSH", for: .normal)
        //temp.setTitleColor(.black, for: .normal)
        return temp
    }()
    
    override func prepareViewControllerConfigurations() {
        super.prepareViewControllerConfigurations()
        
        view.backgroundColor = .green
        
        view.addSubview(test)
        
        NSLayoutConstraint.activate([
        
            test.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            test.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithOpaqueBackground()
//        appearance.backgroundColor = .systemBackground
//        self.navigationController?.navigationBar.standardAppearance = appearance;
//        self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    
    
    
    @objc func testButtonAction(_ sender: UIButton) {

        fireCharacterListView()

        let viewController = TestViewController()
        viewController.title = "TEST"
//        self.navigationController?.pushViewController(viewController, animated: true)
//
        let newNavigationController = UINavigationController(rootViewController: viewController)
        newNavigationController.navigationBar.backgroundColor = .red
        newNavigationController.navigationBar.tintColor = .green
        self.present(newNavigationController, animated: true, completion: nil)
      //  self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func fireCharacterListView() {
        let characterListView = CharacterListViewBuilder.build()
        self.navigationController?.pushViewController(characterListView, animated: true)
    }
//
}
