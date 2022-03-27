//
//  PersonalDataView.swift
//  AmerEidCV
//
//  Created by Amer on 3/17/22.
//

import UIKit

class PersonalDataView: CVSubview {
    private let myNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont(name: UIFont.fontLobster, size: 45)
        return label
    }()
    
    private let myEmailAddressLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.h1FontRegular
        return label
    }()
    
    private let myEmailAddressTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = UIColor.darkGray
        label.font = UIFont.h1FontBold
        return label
    }()
    
    private let myPhoneNumberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.h1FontRegular
        return label
    }()
    
    private let myPhoneNumberTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Phone"
        label.textColor = UIColor.darkGray
        label.font = UIFont.h1FontBold
        return label
    }()
    
    private let myLocationLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.h1FontRegular
        return label
    }()
    
    private let flagImageView = UIImageView()
    
    private let myLocationTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Location"
        label.textColor = UIColor.darkGray
        label.font = UIFont.h1FontBold
        return label
    }()
    
    private let myLinkedInProfileLabelContainer: CVLabel!
    
    private let myGitHubProfileLabelContainer: CVLabel!
    
    init(model: PersonalDataModel) {
        myNameLabel.text = model.name
        myEmailAddressLabel.text = model.email
        myPhoneNumberLabel.text = model.phone
        myLocationLabel.text = model.location
        
        let linkedInLabelModel = CVLabelModel(text: "LinkedIn",
                                              font: UIFont.h1FontRegular,
                                              textColor: UIColor.blueLinkColor,
                                              url: model.linkedInURL,
                                              underlineColor: UIColor.blueLinkColor)
        let gitHubLabelModel = CVLabelModel(text: "GitHub",
                                            font: UIFont.h1FontRegular,
                                            textColor: UIColor.blueLinkColor,
                                            url: model.githubURL,
                                            underlineColor: UIColor.blueLinkColor)
        
        myLinkedInProfileLabelContainer = CVLabel(model: linkedInLabelModel)
        myGitHubProfileLabelContainer = CVLabel(model: gitHubLabelModel)

        flagImageView.image = UIImage(named: model.flagImageName)
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        setupViews()
        layout()
    }
    
    override func layout() {
        myNameLabel.pin.sizeToFit().start().top()
        myPhoneNumberLabel.pin.sizeToFit().top().end()
        myPhoneNumberTitleLabel.pin.sizeToFit().before(of: myPhoneNumberLabel, aligned: .center).marginEnd(5)
        myEmailAddressLabel.pin.sizeToFit().before(of: myPhoneNumberTitleLabel, aligned: .center).marginEnd(10)
        myEmailAddressTitleLabel.pin.sizeToFit().before(of: myEmailAddressLabel, aligned: .center).marginEnd(5)
        myLocationLabel.pin.sizeToFit().below(of: myPhoneNumberLabel).marginTop(5).end()
        myLocationTitleLabel.pin.sizeToFit().before(of: myLocationLabel, aligned: .center).marginEnd(5)
        flagImageView.pin.height(myLocationTitleLabel.frame.height).width(myLocationTitleLabel.frame.height * 1.3).before(of: myLocationTitleLabel, aligned: .center).marginEnd(5)
        myGitHubProfileLabelContainer.pin.below(of: myLocationLabel).marginTop(5).end()
        myLinkedInProfileLabelContainer.pin.sizeToFit().before(of: myGitHubProfileLabelContainer, aligned: .center).marginEnd(10)
        pin.wrapContent(.vertically)
    }
    
    private func setupViews() {
        addSubview(myNameLabel)
        
        addSubview(myEmailAddressLabel)
        addSubview(myEmailAddressTitleLabel)
        
        addSubview(myPhoneNumberLabel)
        addSubview(myPhoneNumberTitleLabel)
        
        addSubview(myLocationLabel)
        addSubview(myLocationTitleLabel)
        
        addSubview(flagImageView)
        
        addSubview(myLinkedInProfileLabelContainer)
        addSubview(myGitHubProfileLabelContainer)
    }
}
