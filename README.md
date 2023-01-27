# Rails + Vue Sample

- Rails 7
- Vue 3
- webpack 5
- TypeScript
- System spec with capybara

## Development

```sh
$ bundle exec rails s
$ npm run dev
```

## Memo

```sh
$ rails new \
  --skip-action-mailer \
  --skip-action-mailbox \
  --skip-action-text \
  --skip-active-job \
  --skip-active-storage \
  --skip-action-cable \
  --skip-asset-pipeline \
  --skip-javascript \
  --skip-hotwire \
  --skip-test \
  --skip-bundle \
  .

$ npm i vue axios vue-axios destyle.css
$ npm i -D \
  webpack webpack-cli webpack-dev-server \
  webpack-merge clean-webpack-plugin assets-webpack-plugin @types/webpack-env \
  vue-loader vue-style-loader vue-template-compiler \
  typescript ts-loader \
  sass sass-loader css-loader style-loader \
  babel-loader babel-preset-typescript-vue3 \
  @babel/core @babel/preset-env @babel/preset-typescript

$ rm -rf app/assets app/helpers
$ mkdir -p app/frontend/{assets,components,styles,plugins}
$ mkdir public/dist
$ mkdir app/views/pages && touch app/views/pages/empty.html
```
