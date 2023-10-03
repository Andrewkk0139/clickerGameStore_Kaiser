//
//  ViewController.swift
//  clickerGameStore_Kaiser
//
//  Created by ANDREW KAISER on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    var points = 0
    var clickCount = 1
    @IBOutlet weak var pointsOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickedAction(_ sender: Any) {
        points+=clickCount
        pointsOutlet.text = "Points: \(points)"
    }
    
    
    @IBAction func storeAction(_ sender: Any) {
        print("Going to store")
        performSegue(withIdentifier: "toStore", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! storeViewController
        nvc.delegate = self
        nvc.storePointsOutlet.text = "Points: \(points)"
    }
    
    

}

