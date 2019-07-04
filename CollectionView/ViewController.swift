//
//  ViewController.swift
//  CollectionView
//
//  Created by Alivelu Ravula on 4/13/18.
//  Copyright © 2018 Alivelu Ravula. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
    var actorsCV:UICollectionView?
    var FlwLayOut=UICollectionViewFlowLayout()
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.actorsCV=UICollectionView(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height), collectionViewLayout:FlwLayOut )
        

        
        FlwLayOut.itemSize=CGSize.init(width: 50, height: 50)
        FlwLayOut.minimumLineSpacing=20
        FlwLayOut.minimumInteritemSpacing=20
        FlwLayOut.scrollDirection = .vertical
        
        self.actorsCV?.delegate=self
        self.actorsCV?.dataSource=self
        
        self.actorsCV?.register(UICollectionViewCell.self , forCellWithReuseIdentifier:"cell" )
        
        self.view.addSubview(self.actorsCV!)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell=actorsCV?.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
       let imgView=UIImageView(image: #imageLiteral(resourceName: "samantha"))
      

       imgView.frame=CGRect.init(x: 0, y: 0, width: 50, height: 50)
        
        
        cell?.contentView.addSubview( imgView)
        return cell!
        
    }
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

