//
//  ViewController.swift
//  ScrollviewExample
//
//  Created by Сервис on 05/03/2017.
//  Copyright © 2017 Kremlev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlets:
    @IBOutlet weak var scrollView: UIScrollView!
    
    //Variables:
    var images = [UIImageView]()
    
    //Constants:
    
    //Actions:
    
    var contentWidth : CGFloat = 0.0
    
    

   
    override func viewDidLoad() {
        super.viewDidLoad()

        for x in 0...2 {
            let image = UIImage(named: "icon\(x)")
            let imageView = UIImageView(image: image)
            
            let coordinateX = scrollView.frame.midX + scrollView.frame.size.width*CGFloat(x) - 75
            let coordinateY = scrollView.frame.size.height/2 - 75
            
            imageView.frame = CGRect(x: coordinateX, y: coordinateY, width: 150, height: 150)
            
            scrollView.addSubview(imageView)
            contentWidth += scrollView.frame.size.width
            
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: 300.0)
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

