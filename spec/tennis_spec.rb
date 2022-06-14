require_relative "../tennis.rb"

describe 'game' do
  
		it 'returns "score is Love all" at game start' do
			score = [0,0]
			expect(current_score(score)).to eq 'score is Love all'
		end

		it 'returns "score is Fifteen - Love" if player one scores' do
			score = [1,0]
			expect(current_score(score)).to eq 'score is Fifteen - Love'
		end

		it 'returns "score is Thirty - Love" if player one scores twice' do
			score = [2,0]
			expect(current_score(score)).to eq 'score is Thirty - Love'
		end

		it 'returns "score is Forty - Love" if player one scores thrice' do
			score = [3,0]
			expect(current_score(score)).to eq 'score is Forty - Love'
		end

		it 'returns "Game to Player One" if player one scores four times' do
			score = [4,0]
			expect(current_score(score)).to eq 'Game to Player One'
		end

		it 'returns "score is Forty - Fifteen" if player one scores thrice and player two scores once' do
			score = [3,1]
			expect(current_score(score)).to eq 'score is Forty - Fifteen'
		end
        
        it 'returns "score is Forty - Thirty" if player one scores thrice and player two scores twice' do
			score = [3,2]
			expect(current_score(score)).to eq 'score is Forty - Thirty'
		end

        it 'returns "score is Fifteen All" if both players score once' do
			score = [1,1]
			expect(current_score(score)).to eq 'score is Fifteen all'
		end

		it 'returns "Game to Player One" if player one scores four times and player two scores once' do
			score = [4,1]
			expect(current_score(score)).to eq 'Game to Player One'
		end

        it 'returns "Game to Player One" if player one scores five times and player two scores thrice' do
			score = [5,3]
			expect(current_score(score)).to eq 'Game to Player One'
		end

		it 'returns "Game to Player One" if player one scores four times and player two scores thrice' do
			score = [4,3]
			expect(current_score(score)).not_to eq 'Game to Player One'
		end





end