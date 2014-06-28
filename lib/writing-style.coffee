module.exports =
  configDefaults:
    enabled: true

  activate: (state) ->
    atom.workspaceView.command 'writing-style:toggle', '.editor', ->
      editor = atom.workspaceView.getActivePaneItem()
      toggle(editor)
    #console.log 'writing-style activated' 

  deactivate: ->
    # TODO
    return
  serialize: ->
    # FIXME fisse
    return

toggle = (editor) ->
  enabled_key = "writing-style.enabled"
  enabled = !atom.config.get(enabled_key)
  atom.config.set(enabled_key, enabled)

  console.log 'writing-style enabled!' if enabled
  console.log 'writing-style disabled!' if !enabled
