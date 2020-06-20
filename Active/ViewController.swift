//
//  ViewController.swift
//  Active
//
//  Created by Samar Yaseen on 6/8/20.
//  Copyright © 2020 Samarosailan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    // UIColor(red: 0.85, green: 0.74, blue: 0.11, alpha: 1) purple
    // UIColor(red: 0.06, green: 0.34, blue: 0.32, alpha: 1) green
    // UIFont(name: "Roboto-Bold", size: 13) font
    
    let startView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let startBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = UIColor(red: 55/255.0, green: 145/255.0, blue: 125/255.0, alpha: 1)
        btn.setTitle("Start Training", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.tintColor = .white
        btn.layer.cornerRadius = 30
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    var welcome: UILabel = {
        let txt = UILabel()
        txt.text = "The perfect app for your workout"
        txt.font = UIFont.boldSystemFont(ofSize: 80)
        txt.sizeToFit()
        txt.lineBreakMode = .byWordWrapping
        txt.numberOfLines = 5
        txt.textColor = UIColor(red: 55/255.0, green: 145/255.0, blue: 125/255.0, alpha: 1)
        txt.translatesAutoresizingMaskIntoConstraints = false
        return txt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(startView)
        startView.addSubview(welcome)
        startView.addSubview(startBtn)
        setUpAutoLayout()
        startBtn.addTarget(self, action: #selector(handleLoginTouchUpInside), for: .touchUpInside)
    }
    
    func setUpAutoLayout(){
        //view constraint
        startView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        startView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        startView.heightAnchor.constraint(equalToConstant: view.frame.height/1.2).isActive = true
        startView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        //welcoming text constraint
        welcome.leftAnchor.constraint(equalTo: startView.leftAnchor, constant:30).isActive = true
        welcome.rightAnchor.constraint(equalTo: startView.rightAnchor, constant: -30).isActive = true
        welcome.topAnchor.constraint(equalTo: startView.topAnchor, constant: 10).isActive = true
        welcome.bottomAnchor.constraint(equalTo: startView.bottomAnchor, constant: -60).isActive = true
        welcome.heightAnchor.constraint(equalToConstant: startView.frame.height/1.2).isActive = true
        welcome.widthAnchor.constraint(equalToConstant: startView.frame.width/1.2).isActive = true
        
        //start button constraint
        startBtn.bottomAnchor.constraint(equalTo: startView.bottomAnchor, constant: -30).isActive = true
        startBtn.leftAnchor.constraint(equalTo: startView.leftAnchor, constant: 20).isActive = true
        startBtn.rightAnchor.constraint(equalTo: startView.rightAnchor, constant: -20).isActive = true
        startBtn.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
    }
     
    @objc func handleLoginTouchUpInside() {
        self.present(LoginViewController(), animated: true, completion: nil)
    }
    


}

