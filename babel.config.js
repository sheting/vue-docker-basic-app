module.exports = {
  presets: [
    [
      '@vue/app',
      {
        "useBuiltIns": "entry"
      }
    ]
  ],
  plugins: [
    [
      "@babel/plugin-transform-runtime"
    ],
    [
      "transform-imports",
      {
        "vuetify": {
          "transform": "vuetify/es5/components/${member}",
          "preventFullImport": true
        }
      }
    ]
  ]
}
