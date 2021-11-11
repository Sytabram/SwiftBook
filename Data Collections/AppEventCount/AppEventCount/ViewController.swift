//
//  ViewController.swift
//  AppEventCount
//
//  Created by Bryan Zweiacker on 02.11.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    var willConnectCount = 0
    var diBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        configurationForConnectingLabel.text = "The configuration for connecting has launched \(appDelegate.configurationForConnectingCount) times"
        willConnectLabel.text = "Will connect \(willConnectCount) times"
        didBecomeActiveLabel.text = "Did become active \(diBecomeActiveCount) times"
        willResignActiveLabel.text = "Will resign active \(willResignActiveCount) times"
        willEnterForegroundLabel.text = "Will enter foreground \(willEnterForegroundCount) times"
        didEnterBackgroundLabel.text = "Did enter background \(willEnterForegroundCount) times"
    }
}

