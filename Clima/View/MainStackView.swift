//
//  MainStackView.swift
//  Clima
//
//  Created by Лилия Феодотова on 15.02.2023.
//

import UIKit

class MainStackView: UIStackView {
    
    let searchStack = SearchHorizontalStackView()
    
    let conditionImageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.tintColor = UIColor(named: "weatherColor")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let temperatureLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 80, weight: .medium)
        label.numberOfLines = 1
        label.baselineAdjustment = .alignBaselines
        label.lineBreakMode = .byTruncatingTail
        label.highlightedTextColor = .black
        label.contentMode = .left
        label.shadowOffset.height = -1
        label.textAlignment = .right
        return label
    }()
    
    let cityLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 40)
        label.numberOfLines = 1
        label.baselineAdjustment = .alignBaselines
        label.lineBreakMode = .byTruncatingTail
        label.highlightedTextColor = .black
        label.contentMode = .left
        label.shadowOffset.height = -1
        label.textAlignment = .natural
        return label
    }()
    
    let view: UIView = {
        let view = UIView()
        view.contentMode = .scaleToFill
        view.isUserInteractionEnabled = true
        return view
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
        addArrangedSubview(searchStack)
        addArrangedSubview(conditionImageView)
        addArrangedSubview(temperatureLabel)
        addArrangedSubview(cityLabel)
        addArrangedSubview(view)
        
        axis = .vertical
        alignment = .trailing
        distribution = .fill
        spacing = 10
        contentMode = .scaleToFill
        semanticContentAttribute = .unspecified
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            searchStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            searchStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            conditionImageView.heightAnchor.constraint(equalToConstant: 120),
            conditionImageView.widthAnchor.constraint(equalToConstant: 120),
        ])
    }

}
