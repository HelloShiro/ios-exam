

import UIKit

class ListPage: UICollectionViewController, UICollectionViewDelegateFlowLayout  {
    
    let cellId = "cellId"
    var jsonCount: Int = 0
    var persons: [Person]?
    var fetchCount: Int = 0
    
    let navigationView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 226/255, green: 240/255, blue: 218/255, alpha: 1)
        return view
    }()
    
    let navigationTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "List"
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor.black
        return label
    }()

    //Prevents any loading from the remote source if the cache is available
    //Press Back to clean cache
    let navigationBackButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "left")?.withRenderingMode(.alwaysTemplate)
        btn.setImage(image, for: UIControlState.normal)
        btn.backgroundColor =  UIColor(red: 218/255, green: 227/255, blue: 242/255, alpha: 1)
        btn.tintColor = UIColor.black
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(red: 96/255, green: 96/255, blue: 96/255, alpha: 1).cgColor
        btn.addTarget(self, action: #selector(handlePop), for: .touchUpInside)
        return btn
    }()
    
    let navigationDivider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return view
    }()
    
    @objc func handlePop() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    let nameTagBar: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    
    let labelFirstTag: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "firstname"
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor.gray
        return label
    }()
    
    let labelLastTag: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "lastname"
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = UIColor.gray
        return label
    }()
    let nameTagDivider: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 0.5, alpha: 0.5)
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        persons = [Person]()
        //how many times request url
        for _ in 1...6{
            fetchjson()
        }
        
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(PersonCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.contentInset = UIEdgeInsetsMake(80, 0, 0, 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(80, 0, 0, 0)
        view.addSubview(navigationView)
        view.addSubview(nameTagBar)
        setupNavigationViews()
        setupNameTagViews()
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handlePop))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fetchCount
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PersonCell
        cell.labelFirstname.text = persons![indexPath.item].firstname
        cell.labelLastname.text = persons![indexPath.item].lastname
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 65)
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailPage = DetailPage()
        detailPage.person = self.persons?[indexPath.item]
        present(detailPage, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

