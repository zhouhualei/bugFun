# bugFun
a bug management tool with fun

# Code
html page: bugFun/app/views

css/js: bugFun/public/js/, bugFun/public/css/


# API
bug list: /bugs.json

bug: /bugs/1.json

user_rating: /rating_relationships.json?user_id=xxx&bug_id=yyy
[
  {
    user: xxx,
    bug: yyy,
    score: 1
  }
]

user_following: /follow_relationships.json?user_id=xxx&bug_id=yyy

[
  {
    user: xxx,
    bug: yyy
  }
]

user_bookmarking: /bookmark_relationships.json?user_id=xxx&bug_id=yyy

[
  {
    user: xxx,
    bug: yyy
  }
]
