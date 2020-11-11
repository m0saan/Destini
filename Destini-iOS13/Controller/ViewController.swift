//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    var choice = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(0)
    }

    @IBAction func choiceMadeButton(_ sender: UIButton) {
        if sender.currentTitle == storyBrain.getChoice1() {
            choice = storyBrain.choice1Destination()
        }
        else {
            choice = storyBrain.choice2Destination()
        }
        updateUI(choice)
    }
    
    func updateUI(_ choice: Int) {
        storyBrain.updateStory(choice)
        
        storyLabel.text = storyBrain.getTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

