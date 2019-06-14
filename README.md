

### Serving Static Site with URL Rewriting
e.g vuejs app

Make sure you have [heroku-cli](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) installed

##### Required package
Install `serve`
```bash
yarn add serve
```
or
```bash
npm install serve
```

#### Configuration
- Create `serve.json` file in your project root

```javascript
// serve.json
{
  "public": "dist",
  "rewrites": [
    {
      "source": "**",
      "destination": "/index.html"
    }
  ]
}
```

- Set `scripts.start` to `npx serve` in package.json

```javascript
// package.json
{
  ...
  "scripts": {
    "start": "npx serve",
    ...
  }
}
```

or

- Download [deploy.sh](https://github.com/matscode/deploy-static-sites-with-url-rewrite/blob/master/deploy.sh)

- Set `scripts.start` to `sh deploy.sh` in package.json

```javascript
// package.json
{
  ...
  "scripts": {
    "start": "sh deploy.sh",
    ...
  }
}
```

#### Test and|or Deploy
- Deploy
```bash
// test your app locally
heroku local
```
or

```bash
// deploy your app to heroku
git push heroku master
```
