//
//  DetailsViewController.swift
//  Active
//
//  Created by Samar Yaseen on 6/10/20.
//  Copyright © 2020 Samarosailan. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    let homeController = HomepageViewController(collectionViewLayout: UICollectionViewFlowLayout())
    
    let detailsContentView: UIView = {
           let view = UIView()
           view.translatesAutoresizingMaskIntoConstraints = false
           return view
       }()
       
       var detailsTitle: UILabel = {
       let txt = UILabel()
       txt.text = "Your details"
       txt.font = UIFont.boldSystemFont(ofSize: 50)
       txt.sizeToFit()
       txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
           txt.translatesAutoresizingMaskIntoConstraints = false
       return txt
       }()
    
    var buttons = [UIButton]()
    
    let femaleBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.layer.cornerRadius = 20
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        //btn.backgroundColor = .white//UIColor(red: 55/255.0, green: 145/255.0, blue: 125/255.0, alpha: 1)
        
       btn.setTitle("Female", for: .normal)
        btn.setBackgroundImage(UIImage(named: "RBnormal.png")!, for: .normal)
        btn.setTitleColor(UIColor(red: 55/255.0, green: 145/255.0, blue: 125/255.0, alpha: 1), for: .normal)
        
        btn.setTitle("Female", for: .selected)
        btn.setBackgroundImage(UIImage(named: "RBselected.png")!, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        
        btn.clipsToBounds = true
        btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(gender), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    let maleBtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.layer.cornerRadius = 20
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        //btn.backgroundColor = .white//UIColor(red: 55/255.0, green: 145/255.0, blue: 125/255.0, alpha: 1)
        
        btn.setTitle("Male", for: .normal)
        btn.setBackgroundImage(UIImage(named: "RBnormal.png")!, for: .normal)
        btn.setTitleColor(UIColor(red: 55/255.0, green: 145/255.0, blue: 125/255.0, alpha: 1), for: .normal)
        
        btn.setTitle("Male", for: .selected)
        btn.setBackgroundImage(UIImage(named: "RBselected.png")!, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        
        
        btn.clipsToBounds = true
        btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(gender), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
       
       var weightTitle: UILabel = {
       let txt = UILabel()
       txt.text = "Your weight"
       txt.font = UIFont.boldSystemFont(ofSize: 20)
       txt.sizeToFit()
       txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
           txt.translatesAutoresizingMaskIntoConstraints = false
       return txt
       }()
       
        let weight: UITextField = {
           let txtField = UITextField()
           txtField.placeholder = "Ex: 70 kg"
           txtField.borderStyle = .roundedRect
            txtField.addTarget(self, action: #selector(weightt), for: .editingDidEnd)
           txtField.translatesAutoresizingMaskIntoConstraints = false
           return txtField
       }()
       
       var heightTitle: UILabel = {
       let txt = UILabel()
       txt.text = "Your height"
       txt.font = UIFont.boldSystemFont(ofSize: 20)
       txt.sizeToFit()
       txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
           txt.translatesAutoresizingMaskIntoConstraints = false
       return txt
       }()
       
        let height: UITextField = {
           let txtField = UITextField()
           txtField.placeholder = "Ex: 170 cm"
           txtField.borderStyle = .roundedRect
            txtField.addTarget(self, action: #selector(heightt), for: .editingDidEnd)
           txtField.translatesAutoresizingMaskIntoConstraints = false
           return txtField
       }()
    
    var birthTitle: UILabel = {
    let txt = UILabel()
    txt.text = "Date of birth"
    txt.font = UIFont.boldSystemFont(ofSize: 20)
    txt.sizeToFit()
    txt.textColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        txt.translatesAutoresizingMaskIntoConstraints = false
    return txt
    }()
    
     let birth: UITextField = {
        let txtField = UITextField()
        txtField.placeholder = "dd/mm/yyyy"
        txtField.borderStyle = .roundedRect
        txtField.addTarget(self, action: #selector(birthh), for: .editingDidEnd)
        txtField.translatesAutoresizingMaskIntoConstraints = false
        return txtField
    }()
    
       let continueBtn: UIButton = {
           let btn = UIButton(type: .system)
           btn.backgroundColor = UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
           btn.setTitle("Continue", for: .normal)
           btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
           btn.tintColor = .white
           btn.layer.cornerRadius = 30
           btn.clipsToBounds = true
           btn.translatesAutoresizingMaskIntoConstraints = false
           return btn
       }()
    var wght = 0 //weight
    var hght = 0 //height
    var brth = "" //birth date
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(detailsContentView)
        
        detailsContentView.addSubview(detailsTitle)
        detailsContentView.addSubview(femaleBtn)
        detailsContentView.addSubview(maleBtn)
        detailsContentView.addSubview(weightTitle)
        detailsContentView.addSubview(weight)
        detailsContentView.addSubview(heightTitle)
        detailsContentView.addSubview(height)
        detailsContentView.addSubview(birthTitle)
        detailsContentView.addSubview(birth)
        detailsContentView.addSubview(continueBtn)
        
        setUpAutoLayout()
        
        continueBtn.addTarget(self, action: #selector(handleDetailsTouchUpInside), for: .touchUpInside)
        
        buttons.append(femaleBtn)
        buttons.append(maleBtn)
        
    }
    
    func setUpAutoLayout(){
        detailsContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        detailsContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        detailsContentView.heightAnchor.constraint(equalToConstant: view.frame.height/1.2).isActive = true
        detailsContentView.widthAnchor.constraint(equalToConstant: view.frame.width/1.2).isActive = true
        detailsContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        detailsTitle.leftAnchor.constraint(equalTo: detailsContentView.leftAnchor, constant:30).isActive = true
        detailsTitle.rightAnchor.constraint(equalTo: detailsContentView.rightAnchor, constant:-30).isActive = true
        detailsTitle.topAnchor.constraint(equalTo: detailsContentView.topAnchor).isActive = true
        
        femaleBtn.leftAnchor.constraint(equalTo: detailsContentView.leftAnchor, constant: 30).isActive = true
        //femaleBtn.rightAnchor.constraint(equalTo: maleBtn.leftAnchor, constant: 10).isActive = true
        femaleBtn.widthAnchor.constraint(equalToConstant: 150).isActive = true
        femaleBtn.topAnchor.constraint(equalTo: detailsTitle.bottomAnchor, constant: 30).isActive = true
        
        //maleBtn.leftAnchor.constraint(equalTo: femaleBtn.rightAnchor, constant: -10).isActive = true
        maleBtn.rightAnchor.constraint(equalTo: detailsContentView.rightAnchor, constant: -30).isActive = true
        maleBtn.widthAnchor.constraint(equalToConstant: 150).isActive = true
        maleBtn.topAnchor.constraint(equalTo: detailsTitle.bottomAnchor, constant: 30).isActive = true
        
        weightTitle.leftAnchor.constraint(equalTo: detailsContentView.leftAnchor, constant:30).isActive = true
        weightTitle.rightAnchor.constraint(equalTo: detailsContentView.rightAnchor, constant:-30).isActive = true
        weightTitle.topAnchor.constraint(equalTo: femaleBtn.bottomAnchor, constant: 30).isActive = true
        
        weight.leftAnchor.constraint(equalTo: detailsContentView.leftAnchor, constant:30).isActive = true
        weight.rightAnchor.constraint(equalTo: detailsContentView.rightAnchor, constant:-30).isActive = true
        weight.heightAnchor.constraint(equalToConstant: 40).isActive = true
        weight.topAnchor.constraint(equalTo: weightTitle.bottomAnchor, constant: 10).isActive = true
        
        heightTitle.leftAnchor.constraint(equalTo: detailsContentView.leftAnchor, constant:30).isActive = true
        heightTitle.rightAnchor.constraint(equalTo: detailsContentView.rightAnchor, constant:-30).isActive = true
        heightTitle.topAnchor.constraint(equalTo: weight.bottomAnchor, constant: 30).isActive = true
        
        height.leftAnchor.constraint(equalTo: detailsContentView.leftAnchor, constant:30).isActive = true
        height.rightAnchor.constraint(equalTo: detailsContentView.rightAnchor, constant:-30).isActive = true
        height.heightAnchor.constraint(equalToConstant: 40).isActive = true
        height.topAnchor.constraint(equalTo: heightTitle.bottomAnchor, constant: 10).isActive = true
        
        birthTitle.leftAnchor.constraint(equalTo: detailsContentView.leftAnchor, constant:30).isActive = true
        birthTitle.rightAnchor.constraint(equalTo: detailsContentView.rightAnchor, constant:-30).isActive = true
        birthTitle.topAnchor.constraint(equalTo: height.bottomAnchor, constant: 30).isActive = true
        
        birth.leftAnchor.constraint(equalTo: detailsContentView.leftAnchor, constant:30).isActive = true
        birth.rightAnchor.constraint(equalTo: detailsContentView.rightAnchor, constant:-30).isActive = true
        birth.heightAnchor.constraint(equalToConstant: 40).isActive = true
        birth.topAnchor.constraint(equalTo: birthTitle.bottomAnchor, constant: 10).isActive = true
        
        
        continueBtn.leftAnchor.constraint(equalTo: detailsContentView.leftAnchor, constant: 20).isActive = true
        continueBtn.rightAnchor.constraint(equalTo: detailsContentView.rightAnchor, constant: -20).isActive = true
        continueBtn.heightAnchor.constraint(equalToConstant: 70).isActive = true
        continueBtn.topAnchor.constraint(equalTo: birth.bottomAnchor, constant: 60).isActive = true
        
    }


    @objc func buttonAction(sender: UIButton!){
        for button in buttons {
            button.isSelected = false
        }
        sender.isSelected = true
        // you may need to know which button to trigger some action
        // let buttonIndex = buttons.indexOf(sender)
    }
    
    @IBAction func gender(_ sender: UIButton) {
        
        if sender.tag == 1
        {
            print(sender.title(for: .selected)!)
            
        }
        else
        {
            print(sender.title(for: .selected)!)
        }
        
    }
    
    @IBAction func weightt(_ sender: UITextField) {
        wght = Int(sender.text!) ?? 0
        print(wght)
    }
    
    @IBAction func heightt(_ sender: UITextField) {
        hght = Int(sender.text!) ?? 0
        print(hght)
    }
    
    @IBAction func birthh(_ sender: UITextField) {
        brth = sender.text!
        print(brth)
    }

    @objc func handleDetailsTouchUpInside() {
        self.present(homeController, animated: true, completion: nil)
    }

}
