from flask import Flask, jsonify
import psycopg2

# Create Flask App
app = Flask(__name__)

# PostgreSQL Connection
conn = psycopg2.connect(
    host="localhost",
    database="financial_db",
    user="postgres",
    password="1234"
)

# Cursor
cur = conn.cursor()

# ==========================================
# HOME ENDPOINT
# ==========================================
@app.route('/')
def home():
    return jsonify({
        "message": "Flask PostgreSQL API Running"
    })

# ==========================================
# GET ALL TRANSACTIONS
# ==========================================
@app.route('/transactions', methods=['GET'])
def get_transactions():

    # Execute Query
    cur.execute("SELECT * FROM transactions")

    # Fetch Data
    rows = cur.fetchall()

    # Convert to JSON Format
    transactions = []

    for row in rows:
        transactions.append({
            "transaction_id": row[0],
            "customer_name": row[1],
            "amount": float(row[2]),
            "city": row[3]
        })

    return jsonify(transactions)

# Run Flask App
if __name__ == '__main__':
    app.run(debug=True)