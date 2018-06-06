## Usage

```
curl -X POST \
  http://localhost:9292/status \
  -H 'Content-Type: application/json' \
  -d '{
	"status_text": 	"En la oficina",
	"status_emoji": ":lemon:",
	"token": "YOUR API TOKEN HERE"
}
'

```


## Deploy

`heroku create`
`git push heroku master`

## Setup with IFTTT

* [Create applet](https://ifttt.com/create)
* Select a service as your **"if"** trigger. Example: Location
* For the **"then"** action, search for **"Webhooks"** and click **"Connect"**
* then click in **"Make a web request"**
* Enter the URL of your server. https://status5rb.herokuapp.com/status/
* Configure with:
    * method: POST
    * content type: applicaiton/json
    * body: the example payload on usage section
* Click **"Create action"**
