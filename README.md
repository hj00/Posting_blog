## Login Issue

1. 비밀번호가 잘 못되었을 경우
   - flash[:alert] = "비밀번호 잘못 됐어!!"
2. 아이디가 없을 경우
   - flash[:alert] = "존재하지 않는 계정입니다."
3. 로그인 성공
   - flash[:notice] = "로그인 성공하였습니다."

# 과제

- User
  1. controller
     - index
     - new
     - create
     - modify
     - update
     - destroy
  2. model: email, password
- Post
  1. controller
  2. model : user_id, title, content
- Comment
  1. controller
  2. model: post_id, content



- Relation
  - User => has_may :posts
  - Post => belongs_to :user
  - Post => has_may :comments
  - Comment => belongs_to :post