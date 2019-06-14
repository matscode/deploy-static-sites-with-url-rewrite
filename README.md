

### Serving Static Site with URL Rewriting
e.g vuejs app


##### Requirements

- Install serve package.
  run 
  ```sh
  yarn add serve
  ``` 
  or 
  ```sh
  npm i -S serve
  ```

- copy `deploy.sh` into your project.

- Add `deploy.sh` to your package.json scripts.
  vuejs app example below;
  set scripts.start to 'sh deploy.sh' in package.json
  
- Ignore serve config file in git(optional)
   add 'serve.json' to your '.gitignore' file
