//
//  efsaneVC.swift
//  F1Arsivim
//
//  Created by Atalay Çavuşoğlu on 29.11.2022.
//

import UIKit

class efsaneVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var takımLabel: UILabel!
    @IBOutlet weak var ulkeLabel: UILabel!
    @IBOutlet weak var kazandigiLabel: UILabel!
    @IBOutlet weak var sonLabel: UILabel!
    
    var selectedEfsane : Efsane?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        takımLabel.text = selectedEfsane?.sontakim
        ulkeLabel.text = selectedEfsane?.ulke
        kazandigiLabel.text = selectedEfsane?.kazandigi
        sonLabel.text = selectedEfsane?.son
        imageView.image = selectedEfsane?.image
        

        // Do any additional setup after loading the view.
    }
    

    

}
