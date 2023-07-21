//
//  ViewController.swift
//  EnvironmentSeparateDemo
//
//  Created by Apinun on 21/7/2566 BE.
//

import UIKit
import Toast_Swift

class ViewController: UIViewController {
    @IBOutlet weak var title1Label: UILabel!
    @IBOutlet weak var title2Label: UILabel!
    @IBOutlet weak var title3Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        #if STAGING
            self.view.makeToast("Hello Staging", duration: 3.0, position: .bottom)
        #elseif DEBUG
            self.view.makeToast("Hello Debug", duration: 3.0, position: .bottom)
        #else
            self.view.makeToast("Hello Production", duration: 3.0, position: .bottom)
        #endif
        
        setUpUI()
    }
    
    private func setUpUI() {
        let infoDictionary = Bundle.main.infoDictionary
        if let title1 = infoDictionary?["MyKeyLabel1"] as? String {
            self.title1Label.text = title1
        }
        
        if let title2 = infoDictionary?["MyKeyLabel2"] as? String {
            self.title2Label.text = title2
        }
        
        if let title3 = infoDictionary?["MyKeyLabel3"] as? String {
            self.title3Label.text = title3
        }
    }
}

