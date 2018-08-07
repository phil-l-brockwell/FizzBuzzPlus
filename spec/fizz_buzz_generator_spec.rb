# frozen_string_literal: true

require './lib/fizz_buzz_generator'

describe FizzBuzzGenerator do
  context '#upto' do
    context 'success' do
      it 'returns the outputs for all the numbers upto the input' do
        expect(subject.upto(10))
          .to eq([1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz'])
      end
    end

    context 'error' do
      context 'with a negative number' do
        it 'returns an ArgumentError' do
          expect { subject.upto(-10) }.to raise_error(ArgumentError)
        end
      end
    end

    context 'with a string' do
      it 'returns a string' do
        expect { subject.upto('ten') }.to raise_error(ArgumentError)
      end
    end
  end

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
