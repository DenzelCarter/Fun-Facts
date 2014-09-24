//
//  ViewController.swift
//  FunFacts
//
//  Created by Denzel Carter on 9/19/14.
//  Copyright (c) 2014 RushAlert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()

     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        view.backgroundColor = colorWheel.randomColor()
        funFactButton.tintColor = colorWheel.randomColor()
        funFactLabel.text = factBook.randomFact()
    }

}

