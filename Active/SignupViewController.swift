//
//  SignupViewController.swift
//  Active
//
//  Created by Samar Yaseen on 6/10/20.
//  Copyright © 2020 Samarosailan. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    // UIView of signup content
     let signupContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var signupTitle: UILabel = {
    let txt = UILabel()
    txt.text = "Sign up"
    txt.font = UIFont.boldSystemFont(ofSize: 50)
    txt.sizeToFit()
    txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        txt.translatesAutoresizingMaskIntoConstraints = false
    return txt
    }()
    
    var nameTitle: UILabel = {
    let txt = UILabel()
    txt.text = "Name"
    txt.font = UIFont.boldSystemFont(ofSize: 20)
    txt.sizeToFit()
    txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        txt.translatesAutoresizingMaskIntoConstraints = false
    return txt
    }()
    
    // name text field
     let name: UITextField = {
        let txtField = UITextField()
        txtField.borderStyle = .roundedRect
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()
    
    var emailTitle: UILabel = {
    let txt = UILabel()
    txt.text = "Email"
    txt.font = UIFont.boldSystemFont(ofSize: 20)
    txt.sizeToFit()
    txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        txt.translatesAutoresizingMaskIntoConstraints = false
    return txt
    }()
    
    // email text field
     let email: UITextField = {
        let txtField = UITextField()
        txtField.borderStyle = .roundedRect
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()
    
    var passwordTitle: UILabel = {
    let txt = UILabel()
    txt.text = "Password"
    txt.font = UIFont.boldSystemFont(ofSize: 20)
    txt.sizeToFit()
    txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        txt.translatesAutoresizingMaskIntoConstraints = false
    return txt
    }()
    
    // password text field
     let password: UITextField = {
        let txtField = UITextField()
        txtField.borderStyle = .roundedRect
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()
    
    var confirmTitle: UILabel = {
    let txt = UILabel()
    txt.text = "Confirm password"
    txt.font = UIFont.boldSystemFont(ofSize: 20)
    txt.sizeToFit()
    txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        txt.translatesAutoresizingMaskIntoConstraints = false
    return txt
    }()
    
    // confirmation text field
     let confirm: UITextField = {
        let txtField = UITextField()
        txtField.borderStyle = .roundedRect
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()
    var accept: UILabel = {
    let txt = UILabel()
    txt.text = "By signing up you agree to our Terms of Use and Privacy Policy"
    txt.font = UIFont.systemFont(ofSize: 15)
    txt.sizeToFit()
    txt.lineBreakMode = .byWordWrapping
    txt.numberOfLines = 2
    txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
    txt.translatesAutoresizingMaskIntoConstraints = false
    return txt
    }()
    
    
    // signup button
    let signupBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        btn.setTitle("Sign up", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.tintColor = .white
        btn.layer.cornerRadius = 30
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    var haveAccount: UILabel = {
    let txt = UILabel()
    txt.text = "Already have an account?"
        txt.font = UIFont.systemFont(ofSize: 15)
    txt.sizeToFit()
    txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        txt.translatesAutoresizingMaskIntoConstraints = false
    return txt
    }()
    
    let loginBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Log in", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        btn.tintColor = UIColor(red: 55/255.0, green: 145/255.0, blue: 125/255.0, alpha: 1)
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(signupContentView)
        signupContentView.addSubview(signupTitle)
        signupContentView.addSubview(nameTitle)
        signupContentView.addSubview(name)
        signupContentView.addSubview(emailTitle)
        signupContentView.addSubview(email)
        signupContentView.addSubview(passwordTitle)
        signupContentView.addSubview(password)
        signupContentView.addSubview(confirmTitle)
        signupContentView.addSubview(confirm)
        signupContentView.addSubview(accept)
        signupContentView.addSubview(signupBtn)
        signupContentView.addSubview(haveAccount)
        signupContentView.addSubview(loginBtn)
        setUpAutoLayout()
        loginBtn.addTarget(self, action: #selector(handleLoginTouchUpInside), for: .touchUpInside)
        signupBtn.addTarget(self, action: #selector(handleDetailsTouchUpInside), for: .touchUpInside)
    }
    
    
    func setUpAutoLayout(){
        signupContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        signupContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        signupContentView.heightAnchor.constraint(equalToConstant: view.frame.height/1.2).isActive = true
        signupContentView.widthAnchor.constraint(equalToConstant: view.frame.width/1.2).isActive = true
        signupContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        signupTitle.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant:30).isActive = true
        signupTitle.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant:-30).isActive = true
        signupTitle.topAnchor.constraint(equalTo: signupContentView.topAnchor, constant: 10).isActive = true
        
        nameTitle.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant:30).isActive = true
        nameTitle.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant:-30).isActive = true
        nameTitle.topAnchor.constraint(equalTo: signupTitle.bottomAnchor, constant: 30).isActive = true
        
        name.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant:30).isActive = true
        name.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant:-30).isActive = true
        name.heightAnchor.constraint(equalToConstant: 40).isActive = true
        name.topAnchor.constraint(equalTo: nameTitle.bottomAnchor, constant: 10).isActive = true
        
        emailTitle.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant:30).isActive = true
        emailTitle.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant:-30).isActive = true
        emailTitle.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 30).isActive = true
        
        email.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant:30).isActive = true
        email.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant:-30).isActive = true
        email.heightAnchor.constraint(equalToConstant: 40).isActive = true
        email.topAnchor.constraint(equalTo: emailTitle.bottomAnchor, constant: 10).isActive = true
        
        passwordTitle.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant:30).isActive = true
        passwordTitle.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant:-30).isActive = true
        passwordTitle.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 30).isActive = true
        
        password.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant:30).isActive = true
        password.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant:-30).isActive = true
        password.heightAnchor.constraint(equalToConstant: 40).isActive = true
        password.topAnchor.constraint(equalTo: passwordTitle.bottomAnchor, constant: 10).isActive = true
        
        confirmTitle.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant:30).isActive = true
        confirmTitle.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant:-30).isActive = true
        confirmTitle.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 30).isActive = true
        
        confirm.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant:30).isActive = true
        confirm.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant:-30).isActive = true
        confirm.heightAnchor.constraint(equalToConstant: 40).isActive = true
        confirm.topAnchor.constraint(equalTo: confirmTitle.bottomAnchor, constant: 10).isActive = true
        
        accept.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant: 30).isActive = true
        accept.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant: -30).isActive = true
        accept.topAnchor.constraint(equalTo: confirm.bottomAnchor, constant: 30).isActive = true
        
        signupBtn.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant: 20).isActive = true
        signupBtn.rightAnchor.constraint(equalTo: signupContentView.rightAnchor, constant: -20).isActive = true
        signupBtn.heightAnchor.constraint(equalToConstant: 70).isActive = true
        signupBtn.topAnchor.constraint(equalTo: accept.bottomAnchor, constant: 30).isActive = true
        
        haveAccount.leftAnchor.constraint(equalTo: signupContentView.leftAnchor, constant: 20).isActive = true
        haveAccount.topAnchor.constraint(equalTo: signupBtn.bottomAnchor, constant: 20).isActive = true
        
        
        loginBtn.topAnchor.constraint(equalTo: signupBtn.bottomAnchor, constant: 15).isActive = true
        loginBtn.leftAnchor.constraint(equalTo: haveAccount.rightAnchor, constant: 10).isActive = true
        
    }

    
    @objc func handleLoginTouchUpInside() {
        self.present(LoginViewController(), animated: true, completion: nil)
    }
    
    @objc func handleDetailsTouchUpInside() {
        self.present(DetailsViewController(), animated: true, completion: nil)
    }

}
