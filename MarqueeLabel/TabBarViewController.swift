//
//  TabBarViewController.swift
//  MarqueeLabelDemo
//
//  Created by Léo Natan on 30/8/25.
//  Copyright © 2025 Charles Powell. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
	override func viewDidLoad() {
		super.viewDidLoad()
		
		if #available(iOS 26.0, *) {
			let label = MarqueeLabel(frame: .zero, rate: 30, fadeLength: 10)
			label.text = "Some long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long text"
			label.leadingBuffer = 0.0
			label.trailingBuffer = 20.0
			label.animationDelay = 2.0
			label.type = .continuous
			
			let accessory = UITabAccessory(contentView: label)
			setBottomAccessory(accessory, animated: false)
		}
	}
}
