//
//  ViewController.swift
//  ImageSwitcher
//
//  Created by DB-15 on 2015. 3. 24..
//  Copyright (c) 2015년 kpu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageNames = [ "baguette1", "baguette2", "baguette3", "baguette4", "baguette5" ]
    var index: Int = 0 {
        didSet {
            btnPrev.enabled = index != 0
            btnNext.enabled = index != imageNames.count-1
            indexLabel.text = "\(index+1) / \(imageNames.count)"
            imageView.image = UIImage(named: imageNames[index])
        }
    }

    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var btnPrev: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBtnPrev(sender: UIButton) {
        if index > 1 { index-- }
    }
    @IBAction func onBtnNext(sender: UIButton) {
        if index < 4 { index++ }
    }
}