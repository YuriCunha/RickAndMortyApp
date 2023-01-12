//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Yuri Cunha on 23/12/22.
//

import UIKit

final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpTabs()
        
    }

    private func setUpTabs() {
        let caracterVC = RMCaracterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        caracterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
  
        
        let navi1 = UINavigationController(rootViewController: caracterVC)
        let navi2 = UINavigationController(rootViewController: locationVC)
        let navi3 = UINavigationController(rootViewController: episodeVC)
        let navi4 = UINavigationController(rootViewController: settingsVC)
        
        for nav in [navi1,navi2,navi3,navi4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        navi1.tabBarItem = UITabBarItem(title: "Caracter", image: UIImage(systemName: "person"), tag: 1)
        navi2.tabBarItem = UITabBarItem(title: "Location", image: UIImage(systemName: "globe"), tag: 2)
        navi3.tabBarItem = UITabBarItem(title: "Episode", image: UIImage(systemName: "tv"), tag: 3)
        navi4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        
        setViewControllers([navi1,navi2,navi3,navi4
        ], animated: true)
    }
}

