# frozen_string_literal: true

require './lib/fizz_buzz_generator'

describe FizzBuzzGenerator do
  context '#output_for' do
    context 'success' do
      context 'a number not divisible by 3 or 5' do
        let(:number) { 1 }

        it 'returns the number' do
          expect(subject.output_for(number)).to eq(number)
        end
      end

      context 'a number divisible by 3' do
        let(:number) { 3 }

        it 'returns Fizz' do
          expect(subject.output_for(number)).to eq('Fizz')
        end
      end

      context 'a number divisible by 5' do
        let(:number) { 5 }

        it 'returns Buzz' do
          expect(subject.output_for(number)).to eq('Buzz')
        end
      end

      context 'a number divisible by 3 and 5' do
        let(:number) { 15 }

        it 'returns FizzBuzz' do
          expect(subject.output_for(number)).to eq('FizzBuzz')
        end
      end

      context 'a number not divisible by 3 with a 3 in it' do
        let(:number) { 13 }

        it 'returns Fizz' do
          expect(subject.output_for(number)).to eq('Fizz')
        end
      end

      context 'a number not divisible by 5 with a 5 in it' do
        let(:number) { 56 }

        it 'returns Buzz' do
          expect(subject.output_for(number)).to eq('Buzz')
        end
      end
    end

    context 'error' do
      context 'when passed a string' do
        it 'raises an ArguementError' do
          expect { subject.output_for('one') }.to raise_error(ArgumentError)
        end
      end
    end
  end
end
