import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var responseLabel: UILabel!
    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var questionField: UITextField!
    
    
    
    //custom
    @IBOutlet weak var outralabel: UILabel!
    
    
    @IBOutlet var background: UIView!
    
    let questionAnswerer = MyQuestionAnswerer()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        questionField.becomeFirstResponder()
        background.gradient(colorOne: UIColor.white, colorTwo: UIColor.red)
        
    }
    
    
    func respondToQuestion(_ question: String) {
        let answer = questionAnswerer.responseTo(question: question)

        displayAnswerTextOnScreen(answer)
        questionField.placeholder = "Ask another question..."
        questionField.text = nil
        askButton.isEnabled = false
    }

    @IBAction func askButtonTapped(_ sender: AnyObject) {
        guard questionField.text != nil else {
            return
        }
        questionField.resignFirstResponder()
    }
    
    func displayAnswerTextOnScreen(_ answer: String) {
        outralabel.text = answer
    }

}

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else {
            return
        }
        
        respondToQuestion(text)
    }
    
    @IBAction func editingChanged(_ textField: UITextField) {
        guard let text = textField.text else {
            askButton.isEnabled = false
            return
        }
        
        askButton.isEnabled = !text.isEmpty
    }
}
