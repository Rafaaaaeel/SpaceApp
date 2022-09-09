//
//  GravityView.swift
//  SpaceApp
//
//  Created by Rafael Oliveira on 08/09/22.
//

import Foundation
import UIKit
import SnapKit  

class GravityView: UIView, CodableViews{

    lazy var gravityView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.rotate()
        return view
    }()
    
    lazy var sunImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        let sun = UIImage(named: "Sun")
        image.image = sun
        image.rotate()
        return image
    }()
    
    lazy var earthImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        let earth = UIImage(named: "Earth")
        image.image = earth
        return image
    }()
    
    lazy var marsImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        let mars = UIImage(named: "Mars")
        image.image = mars
        return image
    }()
    
    lazy var neptuneImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        let neptune = UIImage(named: "Neptune")
        image.image = neptune
        return image
    }()
    
    lazy var saturnImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        let saturn = UIImage(named: "saturn")
        image.image = saturn
        return image
    }()
    
    lazy var mercuryImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        let uranus = UIImage(named: "Mercury")
        image.image = uranus
        return image
    }()
    
    lazy var venusImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        let venus = UIImage(named: "Venus")
        image.image = venus
        return image
    }()
    
    lazy var uranusImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        let uranus = UIImage(named: "Uranus")
        image.image = uranus
        return image
    }()
    
    lazy var plutoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        let pluto = UIImage(named: "Pluto")
        image.image = pluto
        return image
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension GravityView{
    func setupHiearchy() {
        
        gravityView.addSubviews(earthImage,
                                marsImage,
                                neptuneImage,
                                saturnImage,
                                mercuryImage,
                                venusImage,
                                uranusImage,
                                plutoImage
        )
        
        addSubviews(sunImage, gravityView)
    }
    
    func setupContraints() {
        sunImage.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(120)
            make.height.equalTo(120)
        }
        
        earthImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(sunImage.snp.top).inset(-40)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        marsImage.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(35)
            make.trailing.equalToSuperview().inset(40)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        neptuneImage.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(40)
            make.height.equalTo(40)
        }

        saturnImage.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(-20)
            make.centerY.equalToSuperview()
            make.width.equalTo(78)
            make.height.equalTo(40)
        }
        
        mercuryImage.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(35)
            make.leading.equalToSuperview().inset(40)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        venusImage.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(35)
            make.leading.equalToSuperview().inset(40)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        plutoImage.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(35)
            make.trailing.equalToSuperview().inset(40)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        uranusImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(sunImage.snp.bottom).inset(-40)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        gravityView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(299)
            make.height.equalTo(280)
        }
    }
}
