//
//  SubCustomCell.swift
//  Active
//
//  Created by Samar Yaseen on 6/17/20.
//  Copyright © 2020 Samarosailan. All rights reserved.
//

import UIKit

class SubCustomCell: UICollectionViewCell {
    
    var playlist : PlayList? {
               didSet{
                print("Playlist 🎯",self.playlist!)
                guard let playlist = self.playlist else {return}
                self.ImageView.image = UIImage(named: playlist.image)
                self.TitleLabel.text = self.playlist?.title
                }
           }
        
        let ImageView : UIImageView = {
           let iv = UIImageView()
            iv.backgroundColor = .yellow
            iv.layer.cornerRadius = 10
            iv.image = UIImage(named: "image1")
            iv.contentMode = .scaleAspectFill
            iv.clipsToBounds = true
          
            return iv
            
        }()
        let TitleLabel : UILabel = {
            let lb = UILabel()
            lb.textColor = UIColor(red: 55/255.0, green: 145/255.0, blue: 125/255.0, alpha: 1)
            lb.font = UIFont.systemFont(ofSize: 14)
            lb.font = UIFont.boldSystemFont(ofSize: 14)
            lb.text = "Evening Music"
         
            return lb
        }()
    
            override init(frame: CGRect) {
            super.init(frame: frame)
                addSubview(ImageView)
                addSubview(TitleLabel)
              
                ImageView.translatesAutoresizingMaskIntoConstraints = false
                ImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
                ImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
                ImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
                ImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
                ImageView.bottomAnchor.constraint(equalTo: TitleLabel.topAnchor,constant: -15).isActive = true
                
                TitleLabel.translatesAutoresizingMaskIntoConstraints = false
                TitleLabel.topAnchor.constraint(equalTo: ImageView.bottomAnchor,constant: 20).isActive = true
                TitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
                TitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -5).isActive = true
                
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
