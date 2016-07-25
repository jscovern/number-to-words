NUM_MAP = {
	1 => 'one',
	2 => 'two',
	3 => 'three',
	4 => 'four',
	5 => 'five',
	6 => 'six',
	7 => 'seven',
	8 => 'eight',
	9 => 'nine',
	10 => 'ten',
	11 => 'eleven',
	12 => 'twelve',
	13 => 'thirteen',
	14 => 'fourteen',
	15 => 'fifteen',
	16 => 'sixteen',
	17 => 'seventeen',
	18 => 'eighteen',
	19 => 'nineteen',
	20 => 'twenty'
}

TENS_MAP = {
	2 => "twenty",
	3 => "thirty",
	4 => "forty",
	5 => "fifty",
	6 => "sixty",
	7 => "seventy",
	8 => "eighty",
	9 => "ninety"
}

HUNDREDS_MAP = {
	1 => "one hundred",
	2 => "two hundred",
	3 => "three hundred",
	4 => "four hundred",
	5 => "five hundred",
	6 => "six hundred",
	7 => "seven hundred",
	8 => "eight hundred",
	9 => "nine hundred"
}

def to_words(i)
	wordNum = []
	if i <= 20
		word = NUM_MAP[i]
		return word
	elsif i>20 && i<100
		str = i.to_s
		tensdigit = str[0].to_i
		singlesdigit = str[1].to_i
		wordNum.push(TENS_MAP[tensdigit])
		if singlesdigit != 0
			wordNum.push(NUM_MAP[singlesdigit])
		end
	return wordNum.join("-")
	else
		str = i.to_s
		hundredsdigit = str[0].to_i
		tensdigit = str[1].to_i
		singlesdigit = str[2].to_i
		wordNum.push(HUNDREDS_MAP[hundredsdigit])
		if tensdigit != 0
			wordNum.push(TENS_MAP[tensdigit])
		end
		if hundredsdigit != 0
			wordNum.push(NUM_MAP[singlesdigit])
		end
	return wordNum.join
	end
end

to_words(125)