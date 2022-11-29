//
//  Suruculer.swift
//  F1Arsivim
//
//  Created by Atalay Çavuşoğlu on 28.11.2022.
//

import Foundation
import UIKit


class Surucu {
    
    var ad : String
    var takim : String
    var ulke : String
    var kazandigi : String
    var pol : String
    var image : UIImage
    
    
    init(surucuAd: String, surucuTakim: String, surucuUlke: String, surucuKazandigi: String, surucuPol: String, surucuImage: UIImage) {
        
        self.ad = surucuAd
        self.takim = surucuTakim
        self.ulke = surucuUlke
        self.kazandigi = surucuKazandigi
        self.pol = surucuPol
        self.image = surucuImage
    }
    
}
