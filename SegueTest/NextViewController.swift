//
//  NextViewController.swift
//  SegueTest
//
//  Created by HSU, Hong-Wei on 2020/3/25.
//  Copyright © 2020 HSU, Hong-Wei. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    var arr2:[Int]?
    var label = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let arr = arr2{
        label.frame = CGRect(x:20, y:200, width: UIScreen.main.bounds.width-40,height: 100)
        label.text = "\(String(describing: arr))"
        label.textColor = UIColor.white
        label.layer.cornerRadius = 50
        label.backgroundColor = UIColor.systemPurple
          
        
        self.view.addSubview(label)
        
        
        }
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
