//
//  ViewController.swift
//  Nov.7th.test1
//
//  Created by s20171103194 on 2018/11/7.
//  Copyright © 2018 s20171103199. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var value: UITextField!
    @IBOutlet weak var value1: UITextField!
    @IBOutlet weak var value2: UITextField!
    
    @IBAction func StartButton(_ sender: Any) {
        cal(x: Int(value!)!,y: Int(value1!)!,z: Int(value2!)!                                                                                                                                                                       )->Int;
    }
    func cal(x:Int,y:Int,z:Int)->Int
    {
        var days:Int=0
        var biryear:Int=1998
        var birthmon:Int=2
        var birthday:Int=5
        biryear=x-biryear
        birthmon=y-birthmon
        birthday=z-birthday
        if(biryear<0)
        {
            print("error")
        }
        if(birthmon<0){
            biryear=biryear-1;
        }
        if(birthday<0)
        {
            birthmon=birthmon-1
        }
        days=biryear*365+birthmon*30+birthday
        return days
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

