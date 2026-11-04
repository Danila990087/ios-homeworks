import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTouched(_ sender: UIButton) {
        ImageView.image = UIImage(named: "Closed")
        button.setTitle("Открыть", for: .normal)
    }
    
}
    


