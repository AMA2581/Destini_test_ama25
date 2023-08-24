//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choice1Button: UIButton!
    @IBOutlet var choice2Button: UIButton!

    var storyBrain = StoryBrain()


    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.title(for: .normal)!)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.stories[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: .normal)
    }
}
