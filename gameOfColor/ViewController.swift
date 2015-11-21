//
//  ViewController.swift
//  gameOfColor
//
//  Created by Diego Gomes on 21/11/2015.
//  Copyright © 2015 Nylon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelBlue: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var blue: UIButton!
    @IBOutlet var green: UIButton!
    @IBOutlet var endScore: UIButton!
    @IBOutlet var ScoreBlue: UILabel!
    @IBOutlet var ScoreGreen: UILabel!
    
    
    var Score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        labelBlue.text = "\(Score)"
        labelGreen.text = "\(Score)"
        
        labelBlue.transform = CGAffineTransformMakeRotation(3.14)
        
        endScore.hidden = true
        ScoreBlue.hidden = true
        ScoreGreen.hidden = true
        
        labelGreen.transform = CGAffineTransformMakeRotation(3.14)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func greenAction(sender: AnyObject) {
        
        Score++
        labelBlue.text = "\(Score)"
        labelGreen.text = "\(Score)"
        
        testScore()
    }

    @IBAction func blueAction(sender: AnyObject) {
        Score--
        labelBlue.text = "\(Score)"
        labelGreen.text = "\(Score)"
        testScore()
    }
    
    func testScore(){
        if Score >= 10 {
            
            endScore.hidden = false
            ScoreBlue.hidden = false
            ScoreGreen.hidden = false
            
            ScoreBlue.text = "winner Blue"
            ScoreGreen.text = "Loser Green"
            
        }else if Score <= -10{
            
            endScore.hidden = false
            ScoreBlue.hidden = false
            ScoreGreen.hidden = false
            
            ScoreBlue.text = "Loser Blue"
            ScoreGreen.text = "Winner Green"
            
        }
    }
    
    @IBAction func endSceneAction(sender: AnyObject) {
        
        endScore.hidden = true
        ScoreBlue.hidden = true
        ScoreGreen.hidden = true
        
        Score = 0
        labelBlue.text = "\(Score)"
        labelGreen.text = "\(Score)"
        
    }
    
}

