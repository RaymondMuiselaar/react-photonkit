React = require "react"
classNames = require "classnames"
PhotonMixin = require "./photonMixin.coffee"

module.exports = React.createClass
  mixins: [PhotonMixin],

  getDefaultProps: ->
    ptClass: "list-group"

  render: ->
    classes = @getPtClassSet()
    className = classNames @props.className, classes

    <ul className={className}>
      {@props.children}
    </ul>
