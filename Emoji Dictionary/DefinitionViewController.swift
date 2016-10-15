//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Stephen on 10/14/16.
//  Copyright © 2016 Stephen. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
        definitionLabel.text = "Smily Face"
        }
        if emoji == "🐶" {
            definitionLabel.text = "Cool Hamster"
        }
        if emoji == "😂" {
            definitionLabel.text = "Crying Guy"
        }
        if emoji == "😍" {
            definitionLabel.text = "Hearts in Eye"
        }
        if emoji == "🐷" {
            definitionLabel.text = "Pig Face"
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
