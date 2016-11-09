//
//  ContentViewController.swift
//  ACTabScrollView
//
//  Created by Azure Chen on 5/19/16.
//  Copyright © 2016 AzureChen. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var eventoFif = EventoFIF()
    
    var category: NewsCategory? {
        didSet {
            for news in MockData.newsArray {
                if (news.category == category) {
                    newsArray.append(news)
                }
            }
        }
    }
    var newsArray: [News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let news = newsArray[(indexPath as NSIndexPath).row]
        
        // set the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! ContentTableViewCell
//        cell.thumbnailImageView.image = UIImage(named: "thumbnail-\(news.id)")
//        cell.thumbnailImageView.layer.cornerRadius = 4
//        cell.titleLabel.text = news.title
//        cell.categoryLabel.text = String(describing: news.category)
//        cell.categoryView.layer.backgroundColor = UIColor.white.cgColor
//        cell.categoryView.layer.cornerRadius = 4
//        cell.categoryView.layer.borderWidth = 1
//        cell.categoryView.layer.borderColor = UIColor(red: 32.0 / 255, green: 188.0 / 255, blue: 239.0 / 255, alpha: 1.0).cgColor
        
        cell.labelHour.text = news.horaIni
        cell.labelEvento.text = news.evento
        cell.labelPonente.text = news.ponente
        cell.tag = news.id
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let new = newsArray[indexPath.row]
        
        self.eventoFif.id = new.id
        self.eventoFif.fecha = new.fecha
        self.eventoFif.horaIni = new.horaIni
        self.eventoFif.horaFin = new.horaFin
        self.eventoFif.sede = new.sede
        self.eventoFif.direccion = new.direccion
        self.eventoFif.evento = new.evento
        self.eventoFif.ponente = new.ponente
        self.eventoFif.pais = new.pais
        self.eventoFif.descripcion = new.descripcion
        
        performSegue(withIdentifier: "detailContentIdentifier", sender: self)

    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 3
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
//        view.frame = CGRect(x: 0.0, y: 0.0, width: view.frame.width, height: view.frame.height*2.0)
        view.backgroundColor = UIColor(red: 31.0 / 255, green: 180.0 / 255, blue: 228.0 / 255, alpha: 1.0)
        
        return view
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier) == "detailContentIdentifier" {
                let vc = segue.destination as! DetailContentViewController
                vc.algo = "adf"
        }
    }
 

}

class ContentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelHour: UILabel!
    @IBOutlet weak var labelEvento: UILabel!
    @IBOutlet weak var labelPonente: UILabel!
    
    override func awakeFromNib() {
        self.selectionStyle = .none
    }
    
}
