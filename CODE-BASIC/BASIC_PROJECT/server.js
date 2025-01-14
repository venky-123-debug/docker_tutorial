const express = require("express")
const mongoose = require("mongoose")

const User = require("./models/user")
require("dotenv").config()

const app = express()
const port = process.env.PORT || 3000

app.use(express.json())

// Routes
app.post("/users", async (req, res) => {
  try {
    const user = new User(req.body)
    await user.save()
    res.status(201).send(user)
  } catch (err) {
    res.status(400).send(err)
  }
})

app.get("/users", async (req, res) => {
  try {
    const users = await User.find()
    res.send(users)
  } catch (err) {
    res.status(500).send(err)
  }
})

const home = async () => {
  try {
    // Connect to MongoDB
    mongoose.connect(process.env.MONGODB_URL, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    })
    console.log("Connected to MongoDB")
  } catch (e) {
    console.error("Failed to connect to MongoDB", e)
  }
  // Start the server
  app.listen(port, () => {
    console.log(`Server is running on port ${port}`)
  })
}

home()
