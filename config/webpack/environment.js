const webpack = require('webpack')

environment.plugins.append('Provide', new webpack.ProvidePlugin({
  Popper: ['popper.js','default']
}))
