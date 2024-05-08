struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        let finalQuestion = question.lowercased()
        
        if finalQuestion == "ola mundo" || finalQuestion.contains("ola"){
            return "Olá pessoa"
        } else if finalQuestion.hasPrefix("ola"){
            return "bom dia"
        } else if finalQuestion.contains("onde"){
            return "que tal as maldivas"
        } else {
            return "lamento mas o que voce disse?"
        }
    }
}
