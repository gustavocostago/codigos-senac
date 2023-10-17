import express from 'express'
import bodyParser from 'body-parser'

const app = express()
app.use(bodyParser.json())

app.listen(8080, () => {
 console.log('SERVIDOR ESTÁ ONLINE')
})

app.get('/hello', (req, res) => {
 res.status(200).send('ola mundao')
})

app.post('/inserir', (req, res) => {
 res.status(200).send(req.body)
})
