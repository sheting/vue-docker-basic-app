module.exports = {
  plugins: {
    "postcss-import": {
      path: ['./src', './']
    },
    autoprefixer: {},
    "postcss-preset-env": {
      "stage": 0
    }
  }
}
  