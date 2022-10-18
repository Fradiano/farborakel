//
//  ViewController.swift
//  farborakel
//
//  Created by Fradiano Hasani on 18.10.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewcolor: UIView!
    @IBOutlet weak var bgrnd: UIButton!
    @IBOutlet weak var crcl: UIButton!
    @IBOutlet weak var kreis: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        kreis.layer.cornerRadius = 777/2
        
    }

    func randomcolor() -> UIColor{
            let red: CGFloat = CGFloat(drand48())
            let green: CGFloat = CGFloat(drand48())
            let blue: CGFloat = CGFloat(drand48())
            return UIColor(red:red, green:green, blue:blue, alpha: 1.0)
        }
    
    @IBAction func channgeBgrnd(_ sender: Any) {
        viewcolor.backgroundColor = randomcolor()
        
    }
    
    @IBAction func kreisfarbe(_ sender: Any) {
        kreis.backgroundColor = randomcolor()
    }
    
    
    
    
}

