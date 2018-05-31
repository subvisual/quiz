const path = require("path");
var ExtractTextPlugin = require("extract-text-webpack-plugin");

module.exports = function(env) {
  const production = process.env.NODE_ENV === "production";

  return {
    devtool: production ? "source-maps" : "source-maps",
    entry: [
      "./js/app.js",
      "./css/app.scss",
    ],
    output: {
      path: path.resolve(__dirname, "../priv/static"),
      filename: "js/app.js",
      publicPath: "/"
    },
    module: {
      rules: [
        {
          test: /\.js$/,
          exclude: /node_modules/,
          loader: "babel-loader",
          query: {
            presets: [["es2015", { "modules": false }]]
          }
        },
        {
          test: /\.scss$/,
          loader: ExtractTextPlugin.extract({
            fallback: "style-loader",
            use: ["css-loader", "sass-loader"]
          })
        }
      ]
    },
    resolve: {
      modules: ["node_modules", path.resolve(__dirname, 'js')],
      extensions: [".js"],
    },
    plugins: [
      new ExtractTextPlugin("css/app.css"),
    ]
  };
};
