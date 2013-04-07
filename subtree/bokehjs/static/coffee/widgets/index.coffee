base = require("../base")
template = require("./inputwidgets")

class InputWidgetsView extends base.ContinuumView
  attributes:
    class : 'inputwidget'

  initialize : (options) ->
    super(options)
    @listenTo(@model, 'change', @render)
    @render()

  events :
    "click .setvals" : 'setvals'

  setvals : () ->
    fields = (_.clone(x) for x in @mget('fields'))
    for temp in _.zip(fields, @$('.widgetinput'))
      [field, node] = temp
      field['val'] = $(node).val()
    @mset('fields', fields)
    @model.save()

  render : () ->
    html = template(fields : @mget('fields'))
    @$el.html(html)
    return @

class InputWidget extends base.HasParent
  type : "InputWidget"
  default_view : InputWidgetsView
  defaults :
    fields : [] # {type: sdf, name:sdf}

class InputWidgets extends Backbone.Collection
  model : InputWidget

exports.InputWidgets = InputWidgets
exports.InputWidget  = InputWidget
exports.InputWidgetsView = InputWidgetsView
exports.inputwidgets = new InputWidgets()
