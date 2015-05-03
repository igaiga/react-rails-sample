$ ->
  CommentBox = React.createClass
    render: ->
      `<div className="commentBox">
        <h1>Comments</h1>
        <CommentList data={this.props.data} />
        <CommentForm />
       </div>`

  CommentList = React.createClass
    render: ->
      commentNodes = this.props.data.map (comment) ->
        `<Comment author={comment.author}>
          {comment.text}
         </Comment>`
      `<div className="commentList">
         {commentNodes}
       </div>`

  CommentForm = React.createClass
    render: ->
      `<div className="commentForm">
         ***CommentForm***
       </div>`

  Comment = React.createClass
    render: ->
      `<div className="comment">
         <h2 className="commentAuthor">
           {this.props.author}
         </h2>
         {this.props.children}
       </div>`

  # This json data is assumed come from server.
  data = [
    {author: "igaiga", text: "This is one comment"},
    {author: "matz", text: "This is *another* comment"}
  ]

  React.render `<CommentBox data = {data}/>`, document.getElementById('content')
