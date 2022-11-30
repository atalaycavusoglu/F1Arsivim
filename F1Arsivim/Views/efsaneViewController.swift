//
//  efsaneViewController.swift
//  F1Arsivim
//
//  Created by Atalay Çavuşoğlu on 30.11.2022.
//

import Foundation
import UIKit


class efsaneViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var myEfsane = [Efsane]()
    var chosenEfsane : Efsane?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let fangio = Efsane(efsaneAd: "Juan Manuel Fangio", efsaneSontakim: "Maserati", efsaneUlke: "Arjantin", efsaneKazandigi: "24", efsaneSon: "Fransa GP", efsaneImage: UIImage(named: "fangio")!)
        
        let senna = Efsane(efsaneAd: "Ayrton Senna", efsaneSontakim: "Williams Renault", efsaneUlke: "Brezilya", efsaneKazandigi: "41", efsaneSon: "San Marino GP", efsaneImage: UIImage(named: "senna")!)
        
        let schumi = Efsane(efsaneAd: "Michael Schumacher", efsaneSontakim: "Mercedes", efsaneUlke: "Almanya", efsaneKazandigi: "91", efsaneSon: "Brezilya GP", efsaneImage: UIImage(named: "legendschumi")!)
        
        let prost = Efsane(efsaneAd: "Alain Prost", efsaneSontakim: "Williams", efsaneUlke: "Fransa", efsaneKazandigi: "51", efsaneSon: "Australian GP", efsaneImage: UIImage(named: "prost")!)
        
        let stewart = Efsane(efsaneAd: "Jackie Stewart", efsaneSontakim: "Elf Team Tyrrell", efsaneUlke: "İskoçya", efsaneKazandigi: "27", efsaneSon: "Lotus Ford", efsaneImage: UIImage(named: "stewart")!)
        
        let hakkinen = Efsane(efsaneAd: "Mika Häkkinen", efsaneSontakim: "McLaren", efsaneUlke: "Finlandiya", efsaneKazandigi: "20", efsaneSon: "Japonya GP", efsaneImage: UIImage(named: "hakkinen")!)
        
        let clark = Efsane(efsaneAd: "Jim Clark", efsaneSontakim: "Lotus", efsaneUlke: "iskoçya", efsaneKazandigi: "25", efsaneSon: "Güney Afrika GP", efsaneImage: UIImage(named: "clark")!)
        
        let lauda = Efsane(efsaneAd: "Niki Lauda", efsaneSontakim: "McLaren", efsaneUlke: "Avusturya", efsaneKazandigi: "25", efsaneSon: "Avustralya GP", efsaneImage: UIImage(named: "lauda")!)
        
        
        
        myEfsane.append(fangio)
        myEfsane.append(senna)
        myEfsane.append(schumi)
        myEfsane.append(prost)
        myEfsane.append(stewart)
        myEfsane.append(hakkinen)
        myEfsane.append(clark)
        myEfsane.append(lauda)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myEfsane.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myEfsane[indexPath.row].ad
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenEfsane = myEfsane[indexPath.row]
        self.performSegue(withIdentifier: "toEfsaneVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toEfsaneVC" {
            let destinationVC = segue.destination as! efsaneVC
            destinationVC.selectedEfsane = chosenEfsane
        }
    }
    
    
}
