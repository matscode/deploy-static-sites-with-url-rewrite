

### Serving Static Site 
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

- copy deploy into your project and
  make 'deploy' executable.
  run 
  ```sh
  chmod +x deploy.sh
  ```

- Add your build command and deploy.
   vuejs app example below;
   set scripts.start to './deploy'
   or './deploy' in package.json

- Ignore serve package config file (optional)
   add 'serve.json' to your '.gitignore' file
