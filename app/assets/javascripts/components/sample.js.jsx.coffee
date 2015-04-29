$ ->
  CommentBox = React.createClass
    render: ->
      `<div className="commentBox">
        <h1>Comments</h1>
        <CommentList />
      </div>`

  CommentList = React.createClass
    render: ->
      `<div className="commentList">
         Hello, world! I am a CommentList.
      </div>`
  React.render `<CommentBox />`, document.getElementById('content')
