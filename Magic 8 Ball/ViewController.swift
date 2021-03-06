//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jessica Peters on 9/9/18.
//  Copyright © 2018 Jessica Peters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBall : Int = 0
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomBallNumber()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomBallNumber()
    }
    
    func randomBallNumber() {
        
        randomBall = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBall])
        
    }
    
}

