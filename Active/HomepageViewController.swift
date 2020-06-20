//
//  HomepageViewController.swift
//  Active
//
//  Created by Samar Yaseen on 6/12/20.
//  Copyright © 2020 Samarosailan. All rights reserved.
//

import UIKit

class HomepageViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
   
    
    let cellId : String = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        //UIColor(red: 100/255.0, green: 40/255.0, blue: 120/255.0, alpha: 1)
        collectionView.register( CustomCell.self , forCellWithReuseIdentifier: cellId)
        fetchJson()
        
        }
    
     var sections = [Section]()
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         let width = view.frame.width
         let height = CGFloat(300)
         return CGSize(width: width, height: height)
     }

     override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return sections.count
     }
     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CustomCell
          
         cell.section = sections[indexPath.item]
          
         return cell
     }
     func fetchJson (){
         print("attempt to fetch Json")
         if let path = Bundle.main.path(forResource: "data", ofType: "json") {
             do {
                   let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                   let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                 if let jsonResult = jsonResult as? [ Any] {
                     jsonResult.forEach { (item) in
                       
                         let section = Section(dictionary: item as! [String : Any])
                         self.sections.append(section)
                     }
                     
                   self.collectionView.reloadData()
                   }
               } catch {
                    // handle error
               }
         }
     }

}
