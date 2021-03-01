//
//  RoundedTabBar.swift
//  FloatingTabBarExample
//
//  Created by Karl McGeough on 01/03/2021.
//

import UIKit

class RoundedTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let layer = CAShapeLayer()
        layer.path = UIBezierPath(roundedRect: CGRect(x: 30, y: tabBar.bounds.minY + 5, width: tabBar.bounds.width - 60, height: tabBar.bounds.height + 10), cornerRadius: (tabBar.frame.width/2)).cgPath
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        layer.shadowRadius = 25.0
        layer.shadowOpacity = 0.5
        layer.borderWidth = 1.0
        layer.opacity = 1.0
        layer.isHidden = false
        layer.fillColor = UIColor.white.cgColor
        layer.masksToBounds = false
        tabBar.layer.insertSublayer(layer, at: 0)
        tabBar.barTintColor = .clear
        tabBar.backgroundColor = .clear
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
        if let items = tabBar.items {
            items.forEach { item in
                item.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: -10, right: 0)
            }
        }
        tabBar.itemWidth = 30.0
        tabBar.itemPositioning = .automatic
    }
    

}
