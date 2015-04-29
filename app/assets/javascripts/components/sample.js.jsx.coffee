$ ->
  CommentBox = React.createClass
    render: ->
      `<div className="commentBox">
        <h1>Comments</h1>
        <CommentList />
          <Comment author="igaiga">This is a comment</Comment>
          <Comment author="matz">This is anothoer comment</Comment>
        <CommentForm />
       </div>`

  CommentList = React.createClass
    render: ->
      `<div className="commentList">
         ***CommentList***
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

  React.render `<CommentBox />`, document.getElementById('content')
