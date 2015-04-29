$ ->
  CommentBox = React.createClass
    render: ->
      `<div className="commentBox">
        <h1>Comments</h1>
        <CommentList />
        <CommentForm />
      </div>`

  CommentList = React.createClass
    render: ->
      `<div className="commentList">
         Hello, world! I am a CommentList.
      </div>`

  CommentForm = React.createClass
    render: ->
      `<div className="commentForm">
         Hello, world! I am a CommentForm.
       </div>`

  React.render `<CommentBox />`, document.getElementById('content')
