$ ->
  CommentBox = React.createClass
    getInitialState: ->
      {data: []}
    componentDidMount: ->
      $.ajax
        url: this.props.url
        dataType: 'json'
        cache: false
        success: ((data) ->
          this.setState data: data
          return
        ).bind(this)
        error: ((xhr, status, err) ->
          console.error this.props.url, status, err.toString()
          return
        ).bind(this)
    render: ->
      `<div className="commentBox">
        <h1>Comments</h1>
        <CommentList data={this.state.data} />
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

  # jsx に書くために一度js変数に代入
  target_url = "#{Routes.dashboard_comments_path(format: 'json')}"
  React.render `<CommentBox url = {target_url}/>`, document.getElementById('content')
