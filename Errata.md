1. If you get persistent missing bucket name errors, add this to .travis.yml
    deploy:
      edge: true
      provider: elasticbeanstalk

This forces travic to user a newer version of the dpl script

2. The correct travis code for credentials is
    access_key_id: $AWS_ACCESS_KEY
    secret_access_key: $AWS_SECRET_KEY
    