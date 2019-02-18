require 'rails_helper'

RSpec.describe Api::QuizController, type: :request do

    context 'GET /api/quiz' do

    before do
        get '/api/quiz'
      end
  
      it 'returns 200' do
        expect(response).to have_http_status(200)
      end
  
      it 'should return all questions' do
        # binding.pry
        expect(JSON.parse(response.body)['data']['results'].count).to eq 6
      end

      it 'includes info category' do
        expected_category = JSON.parse(response.body)['data']['results'][0]['category']
        expect(expected_category).to eq 'General Knowledge' 
      end

      it 'includes info difficulty' do
        expected_difficulty = JSON.parse(response.body)['data']['results'][0]['difficulty']
        expect(expected_difficulty).to eq 'medium' 
      end

      it 'includes info type' do
        expected_type = JSON.parse(response.body)['data']['results'][0]['type']
        expect(expected_type).to eq 'multiple' 
      end
    end
end