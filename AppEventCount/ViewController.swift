//
//  ViewController.swift
//  AppEventCount
//
//  Created by Richard Castagna on 1/29/19.
//  Copyright © 2019 Richard Castagna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var willResignLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willTerminateLabel: UILabel!
    
    var launchCount = 0
    var resignCount = 0
    var enterBackgroundCount = 0
    var enterForegroundCount = 0
    var becameActiveCount = 0
    var willTerminateCount = 0
    
    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(launchCount) times."
        willResignLabel.text = "applicationWillResignActive has been called \(resignCount) times."
        didEnterBackgroundLabel.text = "Application entered background \(enterBackgroundCount) times."
        willEnterForegroundLabel.text = "applicationWillEnterForeground has been called \(enterForegroundCount) times."
        didBecomeActiveLabel.text = "applicationDidBecomeActive has been called \(becameActiveCount) times."
        willTerminateLabel.text = "applicationWillTerminate has been called \(willTerminateCount) times."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

