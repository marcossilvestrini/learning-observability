from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/targets', methods=['GET'])
def get_targets():
    targets = [
        {
            "targets": ["192.168.0.130:9256"],
            "labels": {
                "dc": "skynet-01",                
                "env": "production",
                "job": "process_exporter"
            }
        },
        {
            "targets": ["192.168.0.131:9256"],
            "labels": {
                "dc": "skynet-02",
                "env": "production",
                "job": "process_exporter"
            }
        }
        # Adicione mais servidores conforme necessário
    ]
    return jsonify(targets)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
