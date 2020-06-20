//
//  LoginViewController.swift
//  Active
//
//  Created by Samar Yaseen on 6/9/20.
//  Copyright © 2020 Samarosailan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    // UIView of login content
     let loginContentView: UIView = {
        let view = UIView() 
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var loginTitle: UILabel = {
    let txt = UILabel()
    txt.text = "Log in"
    txt.font = UIFont.boldSystemFont(ofSize: 50)
    txt.sizeToFit()
    txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        txt.translatesAutoresizingMaskIntoConstraints = false
    return txt
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
    
    // login button
    let loginBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        btn.setTitle("Log in", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.tintColor = .white
        btn.layer.cornerRadius = 30
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let forgotPasswordBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Forgot Password?", for: .normal)
        btn.tintColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    var noAccount: UILabel = {
    let txt = UILabel()
    txt.text = "Don't have an account?"
        txt.font = UIFont.systemFont(ofSize: 15)
    txt.sizeToFit()
    txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        txt.translatesAutoresizingMaskIntoConstraints = false
    return txt
    }()
    
    let signupBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Sign up", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
        btn.tintColor = UIColor(red: 55/255.0, green: 145/255.0, blue: 125/255.0, alpha: 1)
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginContentView)
        loginContentView.addSubview(loginTitle)
        loginContentView.addSubview(emailTitle)
        loginContentView.addSubview(email)
        loginContentView.addSubview(passwordTitle)
        loginContentView.addSubview(password)
        loginContentView.addSubview(loginBtn)
        loginContentView.addSubview(forgotPasswordBtn)
        loginContentView.addSubview(noAccount)
        loginContentView.addSubview(signupBtn)
        setUpAutoLayout()
        signupBtn.addTarget(self, action: #selector(handleSignupTouchUpInside), for: .touchUpInside)
    }

    
    func setUpAutoLayout(){
        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/1.2).isActive = true
        loginContentView.widthAnchor.constraint(equalToConstant: view.frame.width/1.2).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        loginTitle.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant:30).isActive = true
        loginTitle.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant:-30).isActive = true
        loginTitle.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 10).isActive = true
        
        emailTitle.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant:30).isActive = true
        emailTitle.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant:-30).isActive = true
        emailTitle.topAnchor.constraint(equalTo: loginTitle.bottomAnchor, constant: 30).isActive = true
        
        email.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant:30).isActive = true
        email.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant:-30).isActive = true
        email.heightAnchor.constraint(equalToConstant: 40).isActive = true
        email.topAnchor.constraint(equalTo: emailTitle.bottomAnchor, constant: 10).isActive = true
        
        passwordTitle.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant:30).isActive = true
        passwordTitle.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant:-30).isActive = true
        passwordTitle.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 30).isActive = true
        
        password.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant:30).isActive = true
        password.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant:-30).isActive = true
        password.heightAnchor.constraint(equalToConstant: 40).isActive = true
        password.topAnchor.constraint(equalTo: passwordTitle.bottomAnchor, constant: 10).isActive = true
        
        loginBtn.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        loginBtn.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -20).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 70).isActive = true
        loginBtn.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 60).isActive = true
        
        forgotPasswordBtn.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        forgotPasswordBtn.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 30).isActive = true
        
        noAccount.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 20).isActive = true
        noAccount.topAnchor.constraint(equalTo: forgotPasswordBtn.bottomAnchor, constant: 30).isActive = true
        
        
        signupBtn.topAnchor.constraint(equalTo: forgotPasswordBtn.bottomAnchor, constant: 25).isActive = true
        signupBtn.leftAnchor.constraint(equalTo: noAccount.rightAnchor, constant: 10).isActive = true
        
    }

    @objc func handleSignupTouchUpInside() {
        self.present(SignupViewController(), animated: true, completion: nil)
    }
}
