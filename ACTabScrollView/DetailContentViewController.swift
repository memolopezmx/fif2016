//
//  DetailContentViewController.swift
//  ACTabScrollView
//
//  Created by ginppian on 09/11/16.
//  Copyright © 2016 AzureChen. All rights reserved.
//

import UIKit

struct StretchyHeader {
    let headerHight: CGFloat = 253
    let headerCut: CGFloat = 50
}

class DetailContentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var eventoFif = EventoFIF()
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIImageView!
    
    var headerView: UIView!
    var newHeaderLayer: CAShapeLayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        
        //Esto porque sino no carga la imagen
        //Al mover el scroll se carga ScrollViewDidScroll
        //Y a su vez setNewView
        tableView.contentOffset = CGPoint(x: 0, y: -253)
    
    }
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        setNewView()
        
    }

    func updateView(){
        
        tableView.backgroundColor = UIColor.white
        headerView = tableView.tableHeaderView
        tableView.tableHeaderView = nil
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.addSubview(headerView)
        
        newHeaderLayer = CAShapeLayer()
        newHeaderLayer.fillColor = UIColor.black.cgColor
        headerView.layer.mask = newHeaderLayer
        
        let newHeight = StretchyHeader().headerHight - StretchyHeader().headerCut/2
        
        tableView.contentInset = UIEdgeInsets(top: newHeight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -newHeight)
        
        setNewView()
        
    }
    func setNewView(){
        
        let newHeight = StretchyHeader().headerHight - StretchyHeader().headerCut/2
        var getHeaderFrame =  CGRect(x: 0, y: -newHeight, width: tableView.bounds.width, height: StretchyHeader().headerHight)
        
        if tableView.contentOffset.y < newHeight {
            
            getHeaderFrame.origin.y = tableView.contentOffset.y
            getHeaderFrame.size.height = -tableView.contentOffset.y + StretchyHeader().headerCut/2
        }
        
        headerView.frame = getHeaderFrame
        let cutDirection = UIBezierPath()
        cutDirection.move(to: CGPoint(x: 0, y: 0))
        cutDirection.addLine(to: CGPoint(x: getHeaderFrame.width, y: 0))
        cutDirection.addLine(to: CGPoint(x: getHeaderFrame.width, y: getHeaderFrame.height))
        cutDirection.addLine(to: CGPoint(x: 0, y: getHeaderFrame.height))
        newHeaderLayer.path = cutDirection.cgPath
        
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 1
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! DetailTableViewCell
        
        cell.labelEvento.text = eventoFif.evento
        cell.labelHora.text = eventoFif.horaIni
        cell.labelPonente.text = eventoFif.ponente
        cell.labelPais.text = eventoFif.pais
        cell.labelSede.text = eventoFif.sede
        cell.labelDireccion.text = eventoFif.direccion
        cell.labelDescripcion.text = eventoFif.descripcion
        
        switch eventoFif.id {
        case 1:
            self.imageView.image = UIImage(named: "fundacionEsru")
        case 2:
            self.imageView.image = UIImage(named: "catedral")
        case 3, 9:
            self.imageView.image = UIImage(named: "cafe1940")
        case 4, 10, 16:
            self.imageView.image = UIImage(named: "cafeGaleriaAmparo")
        case 5:
            self.imageView.image = UIImage(named: "uvp")
        case 6:
            self.imageView.image = UIImage(named: "gente-de-mas-hostel")
        case 7, 19:
            self.imageView.image = UIImage(named: "capillaArte")
        case 8, 17, 22, 23:
            self.imageView.image = UIImage(named: "barrioDelArtista")
        case 11, 12, 13, 15:
            self.imageView.image = UIImage(named: "elCarolino")
        case 18:
            self.imageView.image = UIImage(named: "melilla")
        case 20:
            self.imageView.image = UIImage(named: "ibero")
        case 21:
            self.imageView.image = UIImage(named: "zocalo")
            
        default:
            self.imageView.image = UIImage(named: "zocalo")
        }
        
        cell.selectionStyle = .none
        
        return cell
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.lightContent
        
    }
    public func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return UITableViewAutomaticDimension
        
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 464 
        
    }
    //Shake Gesture
    override var canBecomeFirstResponder: Bool {
        return true
        
    }
    //Shake Gesture - CREDITOS
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let message = "Programación. David Guillermo López Vázquez 😎\nCorreo. ginppian@icloud.com\nProgramación. Miguel Mexicano Herrera 🤓\nCorreo. miguelmexicano18@gmail.com\n"
            let alert = UIAlertController(title: "📲Desarrado por:📲", message: message, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }


}
