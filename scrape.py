from bs4 import BeautifulSoup
import requests

import corpus

ARTIST_MAX = 7005

def main():
    artists, reviews = zip(*
        [scrape_artist(artist_id) for artist_id in range(1, ARTIST_MAX)])

    artists = [artist.text for artist in artists]
    reviews = flatten_reviews(reviews)

    corpus.dump(artists, 'artists.dat')
    corpus.dump(reviews, 'reviews.dat')

def scrape_artist(artist_id):
    html = get_artist_page(artist_id)
    return extract_artist_data(html)

def get_artist_page(artist_id):
    return requests.get(make_artist_url(artist_id)).text

def make_artist_url(artist_id):
    return "http://www.robertchristgau.com/get_artist.php?id=%d" % artist_id

def extract_artist_data(html):
    soup = BeautifulSoup(html)

    # the artist name is in an <h2> at the top of the page
    name = soup.h2

    # reviews are always (?) in the last table entry
    review_cell = soup.find_all('td')[-1]

    # reviews always follow their title with a br after it
    reviews = [br.next_sibling.strip() for br in review_cell.find_all('br')]
    return name, reviews

def flatten_reviews(reviews):
    return [
        review for artist_reviews in reviews
        for review in artist_reviews]

if __name__ == '__main__':
    main()
