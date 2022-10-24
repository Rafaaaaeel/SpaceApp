//
//  ViewController.swift
//  SpaceApp
//
//  Created by Rafael Oliveira on 07/09/22.
//

import UIKit
import SnapKit

class SpaceViewController: UIViewController {
    
    lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        let background = UIImage(named: "starts")
        image.image = background
        image.frame = view.frame
        return image
    }()
    
    lazy var headerView: HeaderView = {
        let header = HeaderView()
        header.backgroundColor = .green
        return header
    }()
    
    lazy var gravityView: GravityView = {
        let view = GravityView()
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }


}

extension SpaceViewController: CodableViews{
    func setupHiearchy() {
        view.addSubviews(
            backgroundImage,
            headerView,
            gravityView
        )
        
        view.sendSubviewToBack(backgroundImage)
    }
    
    func setupContraints() {
       
        headerView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview().inset(50)
        }
        
        gravityView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
       
    }
    
    func additional() {
        view.backgroundColor = .red
    }
    
}

