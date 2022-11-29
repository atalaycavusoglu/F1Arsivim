//
//  surucuVC.swift
//  F1Arsivim
//
//  Created by Atalay Çavuşoğlu on 29.11.2022.
//

import UIKit

class surucuVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var takımLabel: UILabel!
    @IBOutlet weak var ulkeLabel: UILabel!
    @IBOutlet weak var kazandigiLabel: UILabel!
    @IBOutlet weak var polLabel: UILabel!
    
    var selectedSurucu : Surucu?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        takımLabel.text = selectedSurucu?.takim
        ulkeLabel.text = selectedSurucu?.ulke
        kazandigiLabel.text = selectedSurucu?.kazandigi
        polLabel.text = selectedSurucu?.pol
        imageView.image = selectedSurucu?.image

        // Do any additional setup after loading the view.
    }
    

    
}
