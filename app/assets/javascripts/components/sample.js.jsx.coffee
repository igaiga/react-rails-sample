$ ->
  CommentBox = React.createClass
    render: ->
      `<div className="CommentBox">Hello, world! I'm a CommentBox.</div>`
  React.render `<CommentBox />`, document.getElementById('content')
