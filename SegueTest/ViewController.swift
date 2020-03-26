//
//  ViewController.swift
//  SegueTest
//
//  Created by HSU, Hong-Wei on 2020/3/25.
//  Copyright © 2020 HSU, Hong-Wei. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    @objc func pressButton(_ btn:UIButton){
        random = Int.random(in: 1...10)
        arr.append(random)
        performSegue(withIdentifier: "next", sender: self)
        print("pressed")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destination = segue.destination as! SecondViewController
        destination.arr2 = arr
    }
    
    var random = Int()
    var arr:[Int] = []
    var btn = UIButton()
    //var SecondViewController = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        btn.frame = CGRect(x:20, y:400, width: UIScreen.main.bounds.width-40,height: 100)
        btn.setTitle("Go Next and get the Stars!", for: .normal)
        btn.titleLabel?.textColor = UIColor.white
        btn.layer.cornerRadius = 50
        btn.backgroundColor = UIColor.systemPurple
        btn.addTarget(self, action: #selector(pressButton(_:)), for: .touchUpInside)
        
        
        self.view.addSubview(btn)
    }

    
    

}

