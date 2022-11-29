//
//  surucuViewController.swift
//  F1Arsivim
//
//  Created by Atalay Çavuşoğlu on 29.11.2022.
//

import Foundation
import UIKit


class surucuViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var mySurucu = [Surucu]()
    var chosenSurucu : Surucu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let verstappen = Surucu(surucuAd: "Max Verstappen", surucuTakim: "RED BULL RACING", surucuUlke: "Hollanda", surucuKazandigi: "15", surucuPol: "7", surucuImage: UIImage(named: "ver")!)
        
        let leclerc = Surucu(surucuAd: "Charles Leclerc", surucuTakim: "FERRARI", surucuUlke: "Monako", surucuKazandigi: "3", surucuPol: "9", surucuImage: UIImage(named: "lec")!)
        
        let perez = Surucu(surucuAd: "Sergio Perez", surucuTakim: "RED BULL RACING", surucuUlke: "Meksika", surucuKazandigi: "2", surucuPol: "1", surucuImage: UIImage(named: "per")!)
        
        let russell = Surucu(surucuAd: "George Russell", surucuTakim: "MERCEDES", surucuUlke: "İngiltere", surucuKazandigi: "1", surucuPol: "2", surucuImage: UIImage(named: "rus")!)
        
        let hamilton = Surucu(surucuAd: "Lewis Hamilton", surucuTakim: "MERCEDES", surucuUlke: "İngiltere", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "ham")!)
        
        let sainz = Surucu(surucuAd: "Carlos Sainz ", surucuTakim: "FERRARI", surucuUlke: "İspanya", surucuKazandigi: "1", surucuPol: "2", surucuImage: UIImage(named: "sai")!)
        
        let norris = Surucu(surucuAd: "Lando Norris", surucuTakim: "MCLAREN", surucuUlke: "İngiltere", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "nor")!)
        
        let ocon = Surucu(surucuAd: "Esteban Ocon", surucuTakim: "ALPINE RENAULT", surucuUlke: "Fransa", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "oco")!)
        
        let alonso = Surucu(surucuAd: "Fernando Alonso", surucuTakim: "ALPINE RENAULT", surucuUlke: "İspanya", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "alo")!)
        
        let bottas = Surucu(surucuAd: "Valteri Bottas", surucuTakim: "ALFA ROMEO", surucuUlke: "Finlandiya", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "bot")!)
        
        let ricciardo = Surucu(surucuAd: "Daniel Ricciardo", surucuTakim: "MCLAREN", surucuUlke: "Avustralya", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "ric")!)
        
        let vettel = Surucu(surucuAd: "Sebastian Vettel", surucuTakim: "ASTON MARTIN", surucuUlke: "Almanya", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "seb")!)
        
        let magnussen = Surucu(surucuAd: "Kevin Magnussen", surucuTakim: "HAAS", surucuUlke: "Danimarka", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "mag")!)
        
        let gasly = Surucu(surucuAd: "Pierre Gasly", surucuTakim: "ALPHATAURI", surucuUlke: "Fransa", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "gas")!)
        
        let stroll = Surucu(surucuAd: "Lance Stroll", surucuTakim: "ASTON MARTIN", surucuUlke: "Kanada", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "lan")!)
        
        let tsunoda = Surucu(surucuAd: "Yuki Tsunoda", surucuTakim: "ALPHATAURI", surucuUlke: "Japonya", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "tsu")!)
        
        let schumacher = Surucu(surucuAd: "Mick Schumacher", surucuTakim: "HAAS", surucuUlke: "Almanya", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "sch")!)
        
        let guanyu = Surucu(surucuAd: "Zhou Guanyu", surucuTakim: "ALFA ROMEO", surucuUlke: "Çin", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "zho")!)
        
        let albon = Surucu(surucuAd: "Alexander Albon", surucuTakim: "WILLIAMS", surucuUlke: "Tayland", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "alb")!)
        
        let latifi = Surucu(surucuAd: "Nicholas Latifi", surucuTakim: "WILLIAMS", surucuUlke: "Kanada", surucuKazandigi: "0", surucuPol: "0", surucuImage: UIImage(named: "lat")!)
        
        
        mySurucu.append(verstappen)
        mySurucu.append(leclerc)
        mySurucu.append(perez)
        mySurucu.append(russell)
        mySurucu.append(hamilton)
        mySurucu.append(sainz)
        mySurucu.append(norris)
        mySurucu.append(ocon)
        mySurucu.append(alonso)
        mySurucu.append(bottas)
        mySurucu.append(ricciardo)
        mySurucu.append(vettel)
        mySurucu.append(magnussen)
        mySurucu.append(gasly)
        mySurucu.append(stroll)
        mySurucu.append(tsunoda)
        mySurucu.append(schumacher)
        mySurucu.append(guanyu)
        mySurucu.append(albon)
        mySurucu.append(latifi)
        
        
        
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySurucu.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySurucu[indexPath.row].ad
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSurucu = mySurucu[indexPath.row]
        self.performSegue(withIdentifier: "toSurucuVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSurucuVC" {
            let destinationVC = segue.destination as! surucuVC
            destinationVC.selectedSurucu = chosenSurucu
        }
    }
    
    
    
}
