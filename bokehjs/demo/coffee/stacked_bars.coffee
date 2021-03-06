
data = {
  left: [0.6, 1.6, 2.6, 3.6, 4.6, 5.6, 6.6, 7.6, 8.6]
  right: [1.4, 2.4, 3.4, 4.4, 5.4, 6.4, 7.4, 8.4, 9.4]
  a: [0,0,0,0,0,0,0,0,0]
  b: [20,25,26,27,22,17,12,6,6]
  c: [60,55,53,50,49,46,42,38,40]
  d: [60,55,56,60,62,69,75,77,78]
  e: [80,85,90,92,94,97,99,100,100]
  f: [100,100,100,100,100,100,100,100,100]
}

base = {
  type: 'quad'
  left: 'left'
  right: 'right'
  line_color: null
}

a = _.extend({
  top: 'b'
  bottom: 'a'
  fill_color: '#A6CEE3'
}, base)

b = _.extend({
  top: 'c'
  bottom: 'b'
  fill_color: '#1F78B4'
}, base)

c = _.extend({
  top: 'd'
  bottom: 'c'
  fill_color: '#FB9A99'
}, base)

d = _.extend({
  top: 'e'
  bottom: 'd'
  fill_color: '#33A02C'
}, base)

e = _.extend({
  top: 'f'
  bottom: 'e'
  fill_color: '#B2DF8A'
}, base)

options = {
  title: "Stacked Bars Demo"
  dims: [600, 600]
  xrange: [0, 11]
  yrange: [0, 100]
  xaxes: "min"
  yaxes: "min"
  xgrid: false
  tools: false
  legend: "bars"
}

plot = Bokeh.Plotting.make_plot([a,b,c,d,e], data, options)
Bokeh.Plotting.show(plot)

