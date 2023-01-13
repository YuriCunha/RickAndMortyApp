//
//  RMCaracterViewController.swift
//  RickAndMorty
//
//  Created by Yuri Cunha on 04/01/23.
//

import UIKit

final class RMCaracterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Caracters"
        
        let request = RMRequest(endPoint: .caracter)
        print(request.url)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
