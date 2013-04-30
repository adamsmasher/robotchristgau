import collections
import nltk
import random

# given a corpus (a list of strings)
# return a "following table", which maps:
# last word => [(following word, likelihood)]
def make_following(corpus):
  following_table = collections.defaultdict(lambda: [])
  for review in corpus:
    current_word = None
    for next_word in nltk.word_tokenize(review):
      following_table[current_word].append(next_word)
      current_word = next_word
    following_table[current_word].append(None)

  return dict(following_table)

def generate_review(following_table):
  review = []
  current_word = None
  next_word = random.choice(following_table[current_word])
  while next_word:
    review.append(next_word)
    current_word = next_word
    next_word = random.choice(following_table[current_word])
  return format_review(review)

def format_review(review_words):
  return ' '.join(review_words) \
      .replace(' ,', ',') \
      .replace(' .', '.') \
      .replace('( ', '(') \
      .replace(' )', ')') \
      .replace(" 's", "'s") \
      .replace(" 'd", "'d") \
      .replace(" 'm", "'m") \
      .replace(" 'll", "'ll") \
      .replace(" n't", "n't") \
      .replace(" ?", "?") \
      .replace(" !", "!")

def main():
  corpus = open('reviews.dat').readlines()
  band_names = open('artists.dat').readlines()
  print generate_review(make_following(band_names))
  print generate_review(make_following(corpus))

if __name__ == '__main__':
    main()
