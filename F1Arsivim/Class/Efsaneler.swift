//
//  Efsaneler.swift
//  F1Arsivim
//
//  Created by Atalay Çavuşoğlu on 29.11.2022.
//

import Foundation
import UIKit


class Efsane {
    
    var ad : String
    var sontakim : String
    var ulke : String
    var kazandigi : String
    var son : String
    var image : UIImage
    
    init(efsaneAd: String, efsaneSontakim: String, efsaneUlke: String, efsaneKazandigi: String, efsaneSon: String, efsaneImage: UIImage) {
        self.ad = efsaneAd
        self.sontakim = efsaneSontakim
        self.ulke = efsaneUlke
        self.kazandigi = efsaneKazandigi
        self.son = efsaneSon
        self.image = efsaneImage
    }
}
