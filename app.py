from flask import Flask, request

app = Flask(__name__)

@app.route('/api', methods=['GET'])
def api():
    name = request.args.get('name')
    if name:
        return "Hello, " + name
    else:
        return "Hello, World!"

if __name__ == '__main__':
    app.run(debug=True)
