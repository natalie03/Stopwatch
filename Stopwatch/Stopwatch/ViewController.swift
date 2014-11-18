//
//  ViewController.swift
//  Stopwatch
//
//  Created by Natalie Miller on 11/11/14.
//  Copyright (c) 2014 Natalie Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var timerLabel: UILabel!
    var Counter = 0

    var Timer = NSTimer()
    
    @IBAction func play(sender: AnyObject) {
        Timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
    }
    
    func result(){
    timerLabel.text = String(Counter++)
    }
    @IBAction func pause(sender: AnyObject) {
        Timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        Timer.invalidate()
        Counter = 0
        timerLabel.text = String(Counter)
        
    }
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

