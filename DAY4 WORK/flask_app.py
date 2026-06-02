from flask import Flask, jsonify, request

# Create Flask App
app = Flask(__name__)

# Sample Data
transactions = [
    {
        "transaction_id": 1,
        "customer_name": "Rahul",
        "amount": 5000,
        "city": "Hyderabad"
    },
    {
        "transaction_id": 2,
        "customer_name": "Anjali",
        "amount": 7000,
        "city": "Bangalore"
    }
]

# =========================================
# ENDPOINT 1
# Home Route
# =========================================
@app.route('/')
def home():
    return jsonify({
        "message": "Welcome to Financial REST API"
    })

# =========================================
# ENDPOINT 2
# Get All Transactions
# =========================================
@app.route('/transactions', methods=['GET'])
def get_transactions():
    return jsonify(transactions)

# =========================================
# ENDPOINT 3
# Add New Transaction
# =========================================
@app.route('/add_transaction', methods=['POST'])
def add_transaction():

    data = request.get_json()

    new_transaction = {
        "transaction_id": data['transaction_id'],
        "customer_name": data['customer_name'],
        "amount": data['amount'],
        "city": data['city']
    }

    transactions.append(new_transaction)

    return jsonify({
        "message": "Transaction Added Successfully",
        "data": new_transaction
    })

# Run Server
if __name__ == '__main__':
    app.run(debug=True)