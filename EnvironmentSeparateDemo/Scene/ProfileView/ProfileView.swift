//
//  ProfileView.swift
//  EnvironmentSeparateDemo
//
//  Created by Apinun on 21/7/2566 BE.
//

import UIKit
class ProfileView: UIView {
    private var view: UIView!
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.view = ProfileView.fromNib()
    }
}
