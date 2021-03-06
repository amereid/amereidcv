//
//  CVView.swift
//  AmerEidCV
//
//  Created by Amer on 3/16/22.
//

import UIKit
import PinLayout

public class CVView: UIView {
    private let pdfWidthInInches: CGFloat = 8.28
    private let pdfHeightInInches: CGFloat = 11.7
    private let pixelsPerInch: CGFloat = 72.0
    private let pdfWidth: CGFloat
    private let pdfHeight: CGFloat
    private let pageSidePadding: CGFloat = 30
    
    private static let lebanonFlagImageName = "lebanon"
    private static let uaeFlagImageName = "united-arab-emirates"

    private let models: [Any] =
    [PersonalDataModel(name: "Amer Eid",
                       phone: "+971506832163",
                       location: "Abu Dhabi, United Arab Emirates",
                       email: "amereid92@gmail.com",
                       githubURL: URL(string: "https://github.com/amereid")!,
                       linkedInURL: URL(string: "https://www.linkedin.com/in/amer-eid92/")!,
                       flagImageName: uaeFlagImageName),
     
     SummaryModel(text: "Lead iOS engineer with over 6 years of experience creating and developing complex user focused software applications. Currently leading a team of 5 to create the # 1 music streaming app in MENA with millions of users. Entrepreneurially trained with a passion for creating things that make people happy."),
     
     HeaderModel(title: "Experience"),
         
     DetailsModel(titleModel: CVLabelModel(text: "Anghami", font: UIFont.p1FontBold, textColor: .blueLinkColor, url: URL(string: "https://anghami.com/about")!, underlineColor: .blueLinkColor),
                  subtitle: "Lead iOS Engineer",
                  date: "April 2020 - Present",
                  location: "Abu Dhabi, United Arab Emirates"),
     
     BulletPointModel(text: "Anghami is the leading music streaming platform within the MENA region, with over 21 million MAUs"),
     BulletPointModel(text: "Sole lead developer of the iOS platform which boasts a rating of 4.7 (900K ratings) on the App Store", style: .indented),
     BulletPointModel(text: "Managed a team of 5 people and led development on iOS, tvOS, watchOS, iPadOS, and Carplay"),
     BulletPointModel(text: "Main architect of core features such as the custom Audio Engine, Live Radios, Stories, Music Player, Carplay App, Apple Watch App, Chat, In-App Purchases & Subscriptions, etc"),
     BulletPointModel(text: "Automated and deployed release and testing pipelines using Fastlane and Jenkins saving 32min/build"),
     BulletPointModel(text: "Reduced app hang rate from 200ms/hour to 150ms/hour by utilizing GCD to ensure processor heavy processes such as DB (Realm) read/write transactions and others are off the main thread"),
     BulletPointModel(text: "Reduced average memory usage from 430mb to 330mb by deep diving into memory management and eliminating all forms of memory leaks using memory graph along with other Xcode instruments and tools"),
     BulletPointModel(text: "Reduced hitch rate from 15ms/sec to 7ms/sec by laying out the homepage using PinLayout (frames) and caching already calculated dimensions to reduce layout calculation time"),
     BulletPointModel(text: "Was part of the core team that led to Anghami's IPO - first ever MENA Tech IPO on NASDAQ"),
     
     DetailsModel(titleModel: CVLabelModel(text: "Anghami", font: UIFont.p1FontBold, textColor: .darkGray, url: nil, underlineColor: nil),
                  subtitle: "iOS Engineer",
                  date: "June 2017 - April 2020",
                  location: "Beirut, Lebanon"),
     
     BulletPointModel(text: "Drove best engineering practices within the team and performed code reviews"),
     BulletPointModel(text: "Improved rendering time and scroll performance by over 40% by refactoring UI using IGListKit and PinLayout"),
     BulletPointModel(text: "Spearheaded the conversion of the Video Engine to support HLS video within a week to allow for streaming of the Game of Thrones season 8 premiere for the MENA region"),
     
     DetailsModel(titleModel: CVLabelModel(text: "Parkr", font: UIFont.p1FontBold, textColor: .blueLinkColor, url: URL(string: "https://weareparkr.com")!, underlineColor: .blueLinkColor),
                  subtitle: "Co-founder",
                  date: "June 2016 ??? June 2017",
                  location: "Beirut, Lebanon"),
     
     BulletPointModel(text: "Co-founded a parking startup for emerging markets"),
     BulletPointModel(text: "Pitched to investors throughout MENA and raised over 100,000 USD", style: .indented),
     BulletPointModel(text: "Underwent acceleration, programs, and workshops in Beirut and San Francisco"),
    
     HeaderModel(title: "Education"),
     
     DetailsModel(titleModel: CVLabelModel(text: "American University Of Beirut", font: UIFont.p1FontBold, textColor: .darkGray, url: nil, underlineColor: nil),
                  subtitle: "Bachelor of Science, Computer Science",
                  date: "June 2016",
                  location: "Beirut, Lebanon"),

     HeaderModel(title: "Skills & Projects"),
    
     BulletPointLabelsModel(labelsModels:
                                [CVLabelModel(text: "Programming Languages:", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "Objective-C", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "Swift", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "Kotlin", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "C++", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "Python", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "Java", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil)]),
     
     BulletPointLabelsModel(labelsModels:
                                [CVLabelModel(text: "Frameworks:", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "RxCocoa", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "RxSwift", font: UIFont.p1FontRegular, textColor: UIColor.blueLinkColor, url: URL(string: "https://github.com/ReactiveX/RxSwift"), underlineColor: UIColor.blueLinkColor),
                                 CVLabelModel(text: "Realm", font: UIFont.p1FontRegular, textColor: UIColor.blueLinkColor, url: URL(string: "https://github.com/realm/realm-swift"), underlineColor: UIColor.blueLinkColor),
                                 CVLabelModel(text: "IGListKit", font: UIFont.p1FontRegular, textColor: UIColor.blueLinkColor, url: URL(string: "https://github.com/Instagram/IGListKit"), underlineColor: UIColor.blueLinkColor),
                                 CVLabelModel(text: "PinLayout", font: UIFont.p1FontRegular, textColor: UIColor.blueLinkColor, url: URL(string: "https://github.com/layoutBox/PinLayout"), underlineColor: UIColor.blueLinkColor),
                                 CVLabelModel(text: "SnapKit", font: UIFont.p1FontRegular, textColor: UIColor.blueLinkColor, url: URL(string: "https://github.com/SnapKit/SnapKit"), underlineColor: UIColor.blueLinkColor),
                                 CVLabelModel(text: "Socket.IO", font: UIFont.p1FontRegular, textColor: UIColor.blueLinkColor, url: URL(string: "https://github.com/socketio/socket.io-client-swift"), underlineColor: UIColor.blueLinkColor),
                                 CVLabelModel(text: "Laravel", font: UIFont.p1FontRegular, textColor: UIColor.blueLinkColor, url: URL(string: "https://laravel.com"), underlineColor: UIColor.blueLinkColor)]),

     BulletPointLabelsModel(labelsModels:
                                [CVLabelModel(text: "Languages:", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "English", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "Arabic", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "Spanish", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil)]),
     
     BulletPointLabelsModel(labelsModels:
                                [CVLabelModel(text: "Passion Projects:", font: UIFont.p1FontRegular, textColor: .black, url: nil, underlineColor: nil),
                                 CVLabelModel(text: "Mimir", font: UIFont.p1FontRegular, textColor: UIColor.blueLinkColor, url: URL(string: "https://github.com/amereid/Mimir"), underlineColor: UIColor.blueLinkColor),
                                 CVLabelModel(text: "Mimir Memory Logger", font: UIFont.p1FontRegular, textColor: UIColor.blueLinkColor, url: URL(string: "https://github.com/amereid/MimirMemoryLogger"), underlineColor: UIColor.blueLinkColor),
                                 CVLabelModel(text: "Trivio", font: UIFont.p1FontRegular, textColor: UIColor.blueLinkColor, url: URL(string: "https://apps.apple.com/lb/app/trivio-game/id1465896786"), underlineColor: UIColor.blueLinkColor)])
    ]
    
    init() {
        pdfWidth = pixelsPerInch * pdfWidthInInches
        pdfHeight = pixelsPerInch * pdfHeightInInches
        super.init(frame: CGRect(x: 0, y: 0, width: pdfWidth, height: pdfHeight))
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        setupViews()
        setupWaterMarkLabel()
    }
    
    private func setupViews() {
        let cvSubviews: [CVSubview] = models.compactMap { model in
            return CVSubviewFactory.getView(model: model)
        }
        
        var prevView: CVSubview?
        cvSubviews.forEach { cvSubview in
            self.addSubview(cvSubview)
            
            let topPadding: CGFloat
            if prevView == nil {
                // first view has 30 padding to top of page
                topPadding = 25
            } else if prevView is BulletPointView && cvSubview is BulletPointView {
                // padding between bullet points is small
                topPadding = 2
            } else if cvSubview is SummaryView {
                // padding between summary view and view above it
                topPadding = 10
            } else if cvSubview is HeaderView {
                // padding between summary view and view above it
                topPadding = 10
            } else {
                topPadding = 5
            }
            
            if let prevView = prevView {
                cvSubview.pin.horizontally(pageSidePadding)
                cvSubview.layout()
                cvSubview.pin.horizontally(pageSidePadding).below(of: prevView).marginTop(topPadding)
            } else {
                cvSubview.pin.top(topPadding).horizontally(pageSidePadding)
                cvSubview.layout()
            }
            prevView = cvSubview
        }
    }

    private func setupWaterMarkLabel() {
        let waterMarkLabel = CVLabel(model: CVLabelModel(text: "Created using my own iOS App Project ????",
                                                         font: UIFont.p1FontRegular,
                                                         textColor: .blueLinkColor,
                                                         url: URL(string: "https://github.com/amereid/amereidcv"),
                                                         underlineColor: .blueLinkColor,
                                                         textAlignment: .center))
        addSubview(waterMarkLabel)
        waterMarkLabel.pin.bottom(25).hCenter()
    }
}
