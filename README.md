# bugFun
a bug management tool with fun

# Code
html page: bugFun/app/views

css/js: bugFun/public/js/, bugFun/public/css/


# API
bug list: /bugs.json

bug: /bugs/1.json

user_rating: GET POST /rating_relationships.json?user_id=xxx&bug_id=yyy

[
  {
    user_id: xxx,
    bug_id: yyy,
    score: 1
  }
]

user_following: GET POST /follow_relationships.json?user_id=xxx&bug_id=yyy

[
  {
    user_id: xxx,
    bug_id: yyy
  }
]

user_bookmarking: GET POST /bookmark_relationships.json?user_id=xxx&bug_id=yyy

[
  {
    user_id: xxx,
    bug_id: yyy
  }
]
