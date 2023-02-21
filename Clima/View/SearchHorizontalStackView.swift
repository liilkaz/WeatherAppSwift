//
//  SearchHorizontalStackView.swift
//  Clima
//
//  Created by Лилия Феодотова on 15.02.2023.
//

import UIKit

class SearchHorizontalStackView: UIStackView {
    
    let geolacationButton: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(systemName: "location.circle.fill"), for: .normal)
        button.contentMode = .scaleToFill
        button.tintColor = UIColor(named: "weatherColor")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(nil, action: #selector(WeatherViewController.locationPressed), for: .touchUpInside)
        return button
    }()
    
    let textField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .systemFill
        textField.placeholder = "Поиск"
        textField.clearButtonMode = .never
        textField.adjustsFontSizeToFitWidth = true
        textField.minimumFontSize = 12
        textField.tintColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.borderStyle = .roundedRect
        textField.textColor = UIColor(named: "weatherColor")
        textField.font = .systemFont(ofSize: 25)
        textField.textAlignment = .right
        textField.contentMode = .scaleToFill
        textField.isUserInteractionEnabled = true
        textField.autocapitalizationType = .words
        textField.returnKeyType = .go
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let searchButton: UIButton = {
        let button = UIButton(type: .system)
        button.setBackgroundImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        button.tintColor = UIColor(named: "weatherColor")
        button.contentMode = .scaleToFill
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(nil, action: #selector(WeatherViewController.searchPressed), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        addArrangedSubview(geolacationButton)
        addArrangedSubview(textField)
        addArrangedSubview(searchButton)
        
        axis = .horizontal
        alignment = .fill
        distribution = .fill
        spacing = 10
        contentMode = .scaleToFill
        semanticContentAttribute = .unspecified
        alpha = 1
        isUserInteractionEnabled = true
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            geolacationButton.heightAnchor.constraint(equalToConstant: 40),
            geolacationButton.widthAnchor.constraint(equalToConstant: 40),
            
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            searchButton.widthAnchor.constraint(equalToConstant: 40),
            
        ])
    }
}
