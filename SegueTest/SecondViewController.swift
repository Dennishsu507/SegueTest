//
//  SecondViewController.swift
//  SegueTest
//
//  Created by HSU, Hong-Wei on 2020/3/25.
//  Copyright © 2020 HSU, Hong-Wei. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var arr2 : [Int]? = []
    var label = UILabel()
    let gradientLayer = CAGradientLayer()
    let gradientView = UIView(frame: CGRect(x: 20, y: 370, width:UIScreen.main.bounds.width-40, height: 100))
    let backgroundGradientLayer = CAGradientLayer()
    let backgroundGradientView = UIView(frame: CGRect(x: 0, y:0, width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
    let center = CGPoint(x: 0.75, y: 0.3)
    let radius = 1.5
    let shadowView = UIView(frame: CGRect(x:30 , y:385, width: UIScreen.main.bounds.width-40,height: 100))
    let shadowLayer = CAGradientLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    
        label.frame = CGRect(x:20, y:370, width: UIScreen.main.bounds.width-40,height: 100)
        if let number = arr2?.last {
            if number == 1{
            label.text = ("⭐")
            }
            else if number == 2{
            label.text = ("⭐⭐")
            }
            else if number == 3{
            label.text = ("⭐⭐⭐")
            }
            else if number == 4{
            label.text = ("⭐⭐⭐⭐")
            }
            else if number == 5{
            label.text = ("⭐⭐⭐⭐⭐")
            }
            else if number == 6{
            label.text = ("⭐⭐⭐⭐⭐⭐")
            }
            else if number == 7{
            label.text = ("⭐⭐⭐⭐⭐⭐⭐")
            }
            else if number == 8{
            label.text = ("⭐⭐⭐⭐⭐⭐⭐⭐")
            }
            else if number == 9{
            label.text = ("⭐⭐⭐⭐⭐⭐⭐⭐⭐")
            }
            else if number == 10{
            label.text = ("⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐")
            }
        }//if let
        
        
        
         label.textAlignment = .center
        // label.textColor = UIColor.systemPurple
        // label.layer.cornerRadius = 50
        // label.layer.masksToBounds = true
        // label.layer.addSublayer(gradient)
        
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [UIColor.init(red: 255/255, green: 173/255, blue: 255/255, alpha: 1).cgColor,UIColor.init(red: 200/255, green: 77/255, blue: 255/255, alpha: 1).cgColor]
        gradientView.layer.cornerRadius = 50
        gradientView.layer.masksToBounds = true
        gradientView.layer.addSublayer(gradientLayer)
        gradientView.layer.shadowOpacity = 0.5
        gradientView.layer.shadowOffset = CGSize(width: 100,height: 100)
        
        
        shadowLayer.frame = shadowView.bounds
        shadowLayer.type = .radial
        shadowLayer.startPoint = center
        shadowLayer.endPoint = CGPoint(x: radius, y: radius)
        shadowLayer.colors=[UIColor.init(red: 200/255, green: 0/255, blue: 255/255, alpha: 0.9).cgColor,UIColor.init(red: 200/255, green: 0/255, blue: 255/255, alpha: 0.0).cgColor]
        shadowLayer.cornerRadius=50
        shadowView.layer.addSublayer(shadowLayer)
        
        backgroundGradientLayer.frame = backgroundGradientView.bounds
        backgroundGradientLayer.colors = [UIColor.init(red: 255/255, green: 173/255, blue: 255/255, alpha: 1).cgColor,UIColor.init(red: 180/255, green: 77/255, blue: 255/255, alpha: 1).cgColor]
        backgroundGradientView.layer.addSublayer(backgroundGradientLayer)
        
        
        self.view.addSubview(backgroundGradientView)
        self.view.addSubview(shadowView)
        self.view.addSubview(gradientView)
        self.view.addSubview(label)
      
    
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
