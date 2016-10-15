//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Stephen on 10/14/16.
//  Copyright © 2016 Stephen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView1: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView1.dataSource = self
        tableView1.delegate = self
        emojis = makeEmojiArry()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return emojis.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated..
        
    }
    
    func makeEmojiArry() -> [Emoji] {
            let emoji1 = Emoji()
            emoji1.stringEmoji = "😀"
            emoji1.birthYear = 2008
            emoji1.category = "Smily"
            emoji1.defintion = "Smiling Emoji"
            
            let emoji2 = Emoji()
            emoji2.stringEmoji = "😍"
            emoji2.birthYear = 2010
            emoji2.category = "Smily"
            emoji2.defintion = "Emoji with Heart Eyes"
            
            let emoji3 = Emoji()
            emoji3.stringEmoji = "😂"
            emoji3.birthYear = 2012
            emoji3.category = "Smily"
            emoji3.defintion = "crying emoji"
       
            let emoji4 = Emoji()
            emoji4.stringEmoji = "🐶"
            emoji4.birthYear = 2013
            emoji4.category = "Animal"
            emoji4.defintion = "Hamster Face"
        
            let emoji5 = Emoji()
            emoji5.stringEmoji = "🐷"
            emoji5.birthYear = 2011
            emoji5.category = "Animal"
            emoji5.defintion = "Pig Emoji"
            
            return [emoji1, emoji2, emoji3, emoji4, emoji5]
        }
        


}

