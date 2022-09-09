//
//  HeaderView.swift
//  SpaceApp
//
//  Created by Rafael Oliveira on 09/09/22.
//

import UIKit
import SnapKit

class HeaderView: UIView, CodableViews {

    
    lazy var headerStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        
        stack.distribution = .equalSpacing
        return stack
    }()
    
    lazy var menuButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "line.3.horizontal", withConfiguration: UIImage.SymbolConfiguration(scale: .large)), for: [])
        button.tintColor = .white
        return button
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "SOLAR SYSTEM"
        label.textColor = .white
        label.font = UIFont(name: "Anurati-Regular", size: 24)
        return label
    }()
    
    
    lazy var searchButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "magnifyingglass", withConfiguration: UIImage.SymbolConfiguration(scale: .large)), for: [])
        button.tintColor = .white
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


extension HeaderView{
    func setupHiearchy() {
        headerStackView.addArregendSubViews(menuButton,
                                            titleLabel,
                                            searchButton)
        addSubview(headerStackView)
    }
    
    func setupContraints() {
        headerStackView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalToSuperview()
        }
        
    }
}
