//
//  SecondViewController.swift
//  mini game
//
//  Created by Julianne Knott on 7/3/15.
//  Copyright © 2015 Julianne Knott. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var selectedDino = ""
    var taskSelected = ""
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var directionsLabel: UILabel!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var dinoPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (selectedDino == "green"){
            dinoPic.image = UIImage(named: "greenDino")
        }
        else{
            dinoPic.image = UIImage(named: "purpleDino")
        }
        switch taskSelected{
        case "clean":
            taskLabel.text = "Clean your \(selectedDino) dino!"
            directionsLabel.text = "Tap to clean your dino!"
        case "pet":
            taskLabel.text = "Pet your \(selectedDino) dino!"
            directionsLabel.text = "Tap to pet your dino!"
        default:
            taskLabel.text = "Feed your \(selectedDino) dino!"
            directionsLabel.text = "Tap to feed your dino!"
        }
    }
   /*
    @IBAction func dinoWasPetted(sender: UILongPressGestureRecognizer) {
        if(taskSelected == "pet"){
            if (CGRectContainsPoint(dinoPic.frame, sender.locationInView(backgroundView))){
                let randomNumber = Int(arc4random_uniform(4))
                switch randomNumber {
                case 0:
                    taskLabel.text = "\(selectedDino) dino loves you too"
                case 1:
                    taskLabel.text = "that's the spot"
                case 2:
                    taskLabel.text = "\(selectedDino) wants you to try harder"
                case 3:
                    taskLabel.text = "RAWR!!! translation: \'I Love You\' in dinosaur"
                default:
                    taskLabel.text = "That's the best you can do?!"
                }
            }
        }
    }
    */
    // or cleaned or petted
    @IBAction func dinoWasFed(sender: UITapGestureRecognizer) {
        if(taskSelected == "feed"){
            if (CGRectContainsPoint(dinoPic.frame, sender.locationInView(backgroundView))){
                let randomNumber = Int(arc4random_uniform(4))
                switch randomNumber {
                case 0:
                    taskLabel.text = "nom nom nom"
                case 1:
                    taskLabel.text = "Feed me more!"
                case 2:
                    taskLabel.text = "I love it when you feed me!"
                case 3:
                    taskLabel.text = "You are my best friend"
                default:
                    taskLabel.text = "yummy!"
                }
            }
        }
        else if(taskSelected == "clean"){
            if (CGRectContainsPoint(dinoPic.frame, sender.locationInView(backgroundView))){
                let randomNumber = Int(arc4random_uniform(4))
                switch randomNumber {
                case 0:
                    taskLabel.text = "Rub a dub dub!"
                case 1:
                    taskLabel.text = "I WANT MY RUBBER DUCKY!!!"
                case 2:
                    taskLabel.text = "I'm sparkly now!"
                case 3:
                    taskLabel.text = "AHHHH! I got soap in my eyes!"
                default:
                    taskLabel.text = "You missed a spot"
                }
            }
        }
        else if(taskSelected == "pet"){
            if (CGRectContainsPoint(dinoPic.frame, sender.locationInView(backgroundView))){
                let randomNumber = Int(arc4random_uniform(4))
                switch randomNumber {
                case 0:
                    taskLabel.text = "\(selectedDino) dino loves you too"
                case 1:
                    taskLabel.text = "that's the spot"
                case 2:
                    taskLabel.text = "\(selectedDino) dino wants you to try harder"
                case 3:
                    taskLabel.text = "RAWR!!! translation: \'I Love You\' in dinosaur"
                default:
                    taskLabel.text = "That's the best you can do?!"
                }
            }
        }

    }
    /*
    @IBAction func dinoWasCleaned(sender: UIRotationGestureRecognizer) {
        if(taskSelected == "clean"){
            if (CGRectContainsPoint(dinoPic.frame, sender.locationInView(backgroundView))){
                let randomNumber = Int(arc4random_uniform(4))
                switch randomNumber {
                case 0:
                    taskLabel.text = "Rub a dub dub!"
                case 1:
                    taskLabel.text = "I WANT MY RUBBER DUCKY!!!"
                case 2:
                    taskLabel.text = "I'm sparkly now!"
                case 3:
                    taskLabel.text = "AHHHH! I got soap in my eyes!"
                default:
                    taskLabel.text = "You missed a spot"
                }
            }
        }

    }
*/
}
