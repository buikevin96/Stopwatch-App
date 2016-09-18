//
//  ViewController.swift
//  Stopwatch
//
//  Created by Kevin Bui on 2/15/16.
//  Copyright © 2016 Kevin Bui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0
    
    func increaseTimer() {
        
        time++
        
        result.text = "\(time)"
    }
    
    @IBAction func playButton(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        
        timer.invalidate()
    }
    
    @IBAction func stopButton(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        result.text = "0"
        
    }
    
    @IBOutlet weak var result: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

