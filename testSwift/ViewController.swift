//
//  ViewController.swift
//  testSwift
//
//  Created by Wuyue Xu on 2016-01-03.
//  Copyright © 2016 ProjectX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        var mylabel=UILabel(frame:CGRect(origin: CGPointMake(10.0, 50.0), size: CGSizeMake(150,50)))
        mylabel.text="hoho"
        self.view.addSubview(mylabel)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

