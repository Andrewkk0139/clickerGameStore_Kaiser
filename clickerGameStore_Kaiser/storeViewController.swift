//
//  storeViewController.swift
//  clickerGameStore_Kaiser
//
//  Created by ANDREW KAISER on 10/3/23.
//

import UIKit

class storeViewController: UIViewController {

    var delegate: ViewController!
    var storePoints = 0
    @IBOutlet weak var storePointsOutlet: UILabel!
    @IBOutlet weak var doubleButton: UIButton!
    @IBOutlet weak var tripleButton: UIButton!
    var double = false
    var triple = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        storePointsOutlet.text = "Points: \(storePoints)"
        doubleButton.isHidden = double
        tripleButton.isHidden = triple
        print(double)
    }
    
    @IBAction func doublePoints(_ sender: Any) {
        if storePoints >= 40 {
            delegate.clickCount = 2
            double = true
            doubleButton.isHidden = double
            delegate.points-=40
            storePointsOutlet.text = "Points: \(storePoints - 40)"
        }
    }
    
    @IBAction func triplePoints(_ sender: Any) {
        if storePoints >= 200 {
            delegate.clickCount = 3
            triple = true
            tripleButton.isHidden = triple
            delegate.points-=200
            storePointsOutlet.text = "Points: \(storePoints - 200)"
        }
    }
    

}
