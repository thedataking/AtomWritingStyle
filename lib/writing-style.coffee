module.exports =
  activate: (state) ->
    atom.workspaceView.command 'writing-style:toggle', '.editor', ->
      editor = atom.workspaceView.getActivePaneItem()
      toggle(editor)
      #sortLines(editor)
    console.log 'Writing Style Activated'

  deactivate: ->
    return
  serialize: ->
    return

toggle = (editor) ->
  console.log 'Writing Style toggled!'
