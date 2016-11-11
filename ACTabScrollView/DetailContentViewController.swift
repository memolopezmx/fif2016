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
        cell.labelEvento.text = "hola mundo"
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



}
