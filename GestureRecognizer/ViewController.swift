//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Doğukan Küçükler on 18.12.2022.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var myLabel: UILabel!
   
    var isJames = true

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    
    }
    @objc func changePic() {
       
        if isJames == true {
            imageView.image = UIImage(named: "lars")
            myLabel.text = "Lars"
            isJames = false
        }
        else {
            imageView.image = UIImage(named: "james")
            myLabel.text = "James"
            isJames = true
            
        }
        
        
        
        
        
    }
    
    
}

