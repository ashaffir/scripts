from flask import Flask, request
import jsonify
from flask_pymongo import PyMongo
from bson.objectid import ObjectId 
from flask_cors import CORS

app = Flask(__name__)

app.config['MONGO_DBNAME'] = 'mongoTodo'
app.config['MONGO_URI'] = 'mongodb://localhost:27017/mongoTodo'

mongo = PyMongo(app)

CORS(app)

@app.route('/api/tasks', methods=['GET'])
def get_all_tasks():
    tasks = mongo.db.tasks

    result = []

    for field in tasks.find():
        result.append({'_id': str(field['_id']), 'title': field['title']})
        
    return justify(result)

if __name__ == '__main__':
    app.run(debug=True)

