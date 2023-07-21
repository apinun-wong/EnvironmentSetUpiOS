//
//  ViewController.swift
//  EnvironmentSeparateDemo
//
//  Created by Apinun on 21/7/2566 BE.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if STAGING
            print("Hello Staging")
        #elseif DEBUG
            print("Hello DEBUG")
        #else
            print("Hello Production")
        #endif
        
    }
}

