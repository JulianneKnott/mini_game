//
//  ViewController.swift
//  mini game
//
//  Created by Julianne Knott on 7/3/15.
//  Copyright © 2015 Julianne Knott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedDino = "purple"
    var taskSelected = "feed"
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var greenDino: UIImageView!
    @IBOutlet weak var purpleDino: UIImageView!
    @IBOutlet weak var taskSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func screenWasTapped(sender: UITapGestureRecognizer) {
        if (CGRectContainsPoint(purpleDino.frame, sender.locationInView(backgroundView))){
            selectedDino = "purple"
        }
        if (CGRectContainsPoint(greenDino.frame, sender.locationInView(backgroundView))){
            selectedDino = "green"
        }
    }

    @IBAction func taskWasSelected(sender: AnyObject) {
        switch(taskSelector.selectedSegmentIndex){
        case 0:
            taskSelected = "feed"
        case 1:
            taskSelected = "clean"
        case 2:
            taskSelected = "pet"
        default:
            taskSelected = "feed"
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! SecondViewController
        dvc.selectedDino = self.selectedDino
        dvc.taskSelected = self.taskSelected
    }
}

