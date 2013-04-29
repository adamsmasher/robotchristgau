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
  return ' '.join(review_words)

def main():
  corpus = open('reviews').readlines()
  print generate_review(make_following(corpus))
