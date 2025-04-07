
# #1st step:

```bash
git rm --cached 02_movie_content_base/similarity.pkl
git rm --cached 02_movie_content_base/moives_dict.pkl
git rm --cached 02_movie_content_base/save.csv
git rm --cached 02_movie_content_base/movie_genres.csv
git rm --cached 02_movie_content_base/genres.csv
```

# #2nd step in .gitignore file:
```bash
02_movie_content_base/genres.csv
02_movie_content_base/movie_genres.csv
02_movie_content_base/moives_dict.pkl
02_movie_content_base/similarity.pkl
02_movie_content_base/save.csv
```

# #3rd install this:
```bash
 pip install git-filter-repo
```

# #4th run this command:
```bash
git filter-repo --path 02_movie_content_base/similarity.pkl --path 02_movie_content_base/moives_dict.pkl --path 02_movie_content_base/save.csv --path 02_movie_content_base/movie_genres.csv --path 02_movie_content_base/genres.csv --invert-paths --force
```

# #5th:
```bash
git remote add url_of the repo
```

# #6th:
```bash
git add .gitignore
```

# #7th
- commit 
- push 

