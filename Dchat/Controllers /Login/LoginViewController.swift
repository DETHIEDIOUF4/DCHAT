//
//  LoginViewController.swift
//  Dchat
//
//  Created by Studely on 15/03/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView=UIScrollView()
        scrollView.clipsToBounds=true
        return scrollView
    }()
    
    private let imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image=UIImage(named:"logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let emailField:UITextField={
       let field=UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius=12
        field.layer.borderWidth=1
        field.layer.borderColor=UIColor.lightGray.cgColor
        field.placeholder="Email adresse"
        field.leftView=UIView(frame:CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
      
        
        return field
        
    }()
    
    private let passwordField:UITextField={
       let field=UITextField()
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius=12
        field.layer.borderWidth=1
        field.layer.borderColor=UIColor.lightGray.cgColor
        field.placeholder="Password"
        field.leftView=UIView(frame:CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        field.isSecureTextEntry=true
        
        return field
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log In "
        
        view.backgroundColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(title:"Register",
                                                            style: .done,
                                                            target:self,
                                                            action: #selector(didTapRegister))
        
        //add subviews
        view.addSubview(scrollView)
        scrollView.addSubview(imageView)
        scrollView.addSubview(emailField)
        scrollView.addSubview(passwordField)
        
        
        
        
    
        
        
    
    
   


        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.frame=view.bounds
        let size = view.width/3
        imageView.frame=CGRect(x: (view.width-size)/2,
                               y: 20,
                               width: size,
                               height: size)
        
        emailField.frame=CGRect(x: 30,
                                y: imageView.bottom+10,
                                width: scrollView.width-60,
                               height: 52        )
        passwordField.frame=CGRect(x: 30,
                                y: emailField.bottom+10,
                                width: scrollView.width-60,
                               height: 52        )
    }
    
    @objc private func didTapRegister(){
        let vc = RegsiterViewController()
        vc.title = "Create Account "
        navigationController?.pushViewController(vc, animated: true)
    }
    

  

}
