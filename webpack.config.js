const path = require('path')

const AssetsPlugin = require("assets-webpack-plugin")
const { CleanWebpackPlugin } = require("clean-webpack-plugin")
const { merge } = require("webpack-merge");
const { VueLoaderPlugin } = require("vue-loader")

let config = {
  entry: "./app/frontend/main.ts",
  output: {
    path: path.resolve(__dirname, "public", "dist"),
  },
  resolve: {
    extensions: [".js", ".ts", ".scss", ".vue"],
    alias: {
      vue: "@vue/runtime-dom",
      vue$: "vue/dist/vue.esm.js",
    },
  },
  module: {
    rules: [
      {
        test: /\.vue$/,
        loader: "vue-loader",
      },
      {
        test: /\.js$/,
        loader: "babel-loader",
      },
      {
        test: /\.ts$/,
        use: [
          {
            loader: "ts-loader",
            options: { appendTsSuffixTo: [/\.vue$/] },
          },
        ],
      },
      {
        test: /\.css$/,
        use: ["vue-style-loader", "css-loader"],
      },
      {
        test: /\.scss$/,
        use: ["vue-style-loader", "css-loader", "sass-loader"],
      },
    ],
  },
  plugins: [
    new AssetsPlugin({ removeFullPathAutoPrefix: true }),
    new VueLoaderPlugin(),
  ],
};

module.exports = (env, argv) => {
  if (argv.mode === "development") {
    config = merge(config, {
      output: {
        filename: "build.js",
        publicPath: "http://localhost:3001/",
      },
      devServer: {
        port: "3001",
        hot: true,
        headers: {
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, PATCH, OPTIONS",
          "Access-Control-Allow-Headers": "X-Requested-With, content-type, Authorization",
        },
      },
    });
  } else if (argv.mode === "production") {
    config = merge(config, {
      output: {
        filename: "build-[fullhash].js",
        publicPath: "dist/",
      },
      plugins: [
        new CleanWebpackPlugin()
      ],
    })
  }

  return config
}
