module.exports =
  configDefaults:
    enabled: true

  activate: (state) ->
    atom.commands.add 'atom-workspace', 'writing-style:toggle', =>
      @toggle()

  deactivate: ->
    # TODO
    return
  serialize: ->
    # TODO
    return

  toggle: ->
    enabled_key = "writing-style.enabled"
    enabled = !atom.config.get(enabled_key)
    atom.config.set(enabled_key, enabled)

    console.log 'writing-style enabled!' if enabled
    console.log 'writing-style disabled!' if !enabled
