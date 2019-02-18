require 'rest-client'

class QuizService
    def self.get_questions
        url = 'https://opentdb.com/api.php?amount=6&category=9&difficulty=medium&type=multiple'
        JSON.parse(RestClient.get(url))
    end
end