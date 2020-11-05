//
//  ViewController.swift
//  TodoUIApp
//
//  Created by 野澤拓己 on 2020/11/03.
//

import UIKit

class HomeViewController: UIViewController {
    
    ///  パーツ構成 : ここから
     // - HeaderViewのパーツ : ここから
    private let HeaderView : UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.backgroundColor = .white
        view.layer.cornerRadius = 40
        
        return view
    }()
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "Todo"
        label.font = UIFont.boldSystemFont(ofSize: 40)
//        label.backgroundColor = .blue
        
        return label
    }()
    
    private let editButton : UIButton = {
        let button = UIButton()
        button.setTitle("Edit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 8.0
        
        return button
    }()
    
    private let plusButton : UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        
        // plusの設定
        let plusImage = UIImage(systemName: "plus")
        button.setImage(plusImage, for: .normal)
        button.tintColor = .white
        button.imageView?.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .fill
        button.contentVerticalAlignment = .fill
        button.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10);
        
        // layerの設定
        button.layer.cornerRadius = 30
        button.layer.zPosition = 99
        
        return button
    }()
     // - HeaderViewのパーツ : ここまで
    /// パーツ構成 : ここまで
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubViews()
        
        view.backgroundColor = .black
        
        
        
    }
    
    private func addSubViews() {
        
        view.addSubview(HeaderView)
        view.addSubview(plusButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        ///  レイアウト
        // headerViewの実装
        HeaderView.frame = CGRect(
            x: 0,
            y: 0,
            width: view.frame.size.width,
            height: view.frame.size.height/5
        )
        
        // plusButtonの実装
        plusButton.frame = CGRect(
            x: (HeaderView.fullWidth / 2) - 30,
            y: HeaderView.bottom - 30,
            width: 60,
            height: 60
        )
        
        configureHeaderView()
    }
    
    
    
    private func configureHeaderView() {
        
        // titleLabelの実装
        HeaderView.addSubview(titleLabel)
        titleLabel.frame = CGRect(
            x: 20,
            y: view.safeAreaInsets.top + 10,
            width: HeaderView.fullWidth - 160,
            height: 50)
        
        // editButtonの実装
        HeaderView.addSubview(editButton)
        editButton.frame = CGRect(
            x: view.right - 100,
            y: view.safeAreaInsets.top + 20,
            width: 80,
            height: 40)
        
        
    }
    


}


