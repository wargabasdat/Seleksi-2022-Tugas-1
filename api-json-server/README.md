# Deploy `json-server` to `heroku`

> Instructions how to deploy the full REST API json-server to various heroku. There are 2 main steps to do

* [**Create the database**](#create-the-database)
* [Deploy to **Heroku**](#create-and-deploy-to-the-heroku-app)


## Create the database

1. The database (`tws_export.json`) is store in the db.json file.
2. Commit the database to the git locally

_this example will create `/tws-information` object , each resource will have `id`, `name`, `normal_price`, `discounted_price`, `discount_percentage`, `rating`, `review_count`, and `url`_
```json
{
  "tws-information":[
    {
      "id": 1,
      "name": "Aurasound Wireless Earphones",
      "normal_price": 14.99,
      "discounted_price": 14.99,
      "discount_percentage": 0,
      "rating": 3.7,
      "review_count": 47,
      "url": "www.someurl.com"
    }
  ]
}
```

---

## Create and deploy to the heroku app

Heroku is a free hosting service for hosting small projects. Easy setup and deploy from the command line via _git_.

1. Create an account on <br/>[https://heroku.com](https://heroku.com)
2. Install the Heroku CLI on your computer: <br/>[https://devcenter.heroku.com/articles/heroku-cli](https://devcenter.heroku.com/articles/heroku-cli)
3. Connect the Heroku CLI to your account by writing the following command in your terminal and follow the instructions on the command line:
```bash
heroku login
```

4. Then create a remote heroku project, kinda like creating a git repository on GitHub. This will create a project on Heroku with a random name. If you want to name your app you have to supply your own name like `heroku create project-name`:
```bash
heroku create project-name
```

5. Push your app to __Heroku__ (you will see a wall of code)
```bash
git push heroku master
```

6. Visit your newly create app by opening it via heroku:
```bash
heroku open
```

7. For debugging if something went wrong:
```bash
heroku logs --tail
```

---

## How it works

Heroku will look for a startup-script, this is by default `npm start` so make sure you have that in your `package.json` (assuming your script is called `server.js`):
```json
 "scripts": {
    "start" : "node server.js"
 }
```

You also have to make changes to the port, you can't hardcode a dev-port. But you can reference herokus port. So the code will have the following:
```js
const port = process.env.PORT || 4000;
```