//
//  ViewController.swift
//  Dchat
//
//  Created by Studely on 15/03/2022.
//

import UIKit

class ConversationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIN=UserDefaults.standard.bool(forKey: "Logged_in")
        
        if !isLoggedIN {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present (nav ,animated: false)
             
            
        }
    }
        
       

}

