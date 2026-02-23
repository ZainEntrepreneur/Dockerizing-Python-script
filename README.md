# Python CSV Data Processor - Docker Project

A Dockerized Python script that processes CSV data using pandas library.

## Features

- 📊 Read and analyze CSV files
- 🐳 Fully containerized with Docker
- 📈 Generate statistical summaries
- 🔄 Portable across any environment

## Project Structure
``````
python-csv-docker/
├── Dockerfile
├── requirements.txt
├── process_data.py
├── data/
│   └── data.csv
└── README.md
``````

## Prerequisites

- Docker installed on your machine
- Basic understanding of Python and pandas

## Quick Start

### 1. Clone the repository
``````bash
git clone https://github.com/ZainEntrepreneur/Dockerizing-Python-script.git
cd Dockerizing-Python-script
``````

### 2. Build the Docker image
``````bash
docker build -t python-script .
``````

### 3. Run the container

**Windows PowerShell:**
``````bash
docker run -v `"`${PWD}/data:/app/data`" python-script
``````

**Linux/Mac:**
``````bash
docker run -v `$(pwd)/data:/app/data python-script
``````

## Sample Output
``````
Reading CSV file...

=== CSV Data Preview ===
      name  age           city  salary
0     John   28       New York   75000
1    Alice   34  San Francisco   95000
2      Bob   25        Chicago   65000

=== Statistical Summary ===
             age        salary
count   8.000000      8.000000
mean   29.375000  79625.000000
std     3.541655  10736.118598
...

✅ Data processing complete!
``````

## How It Works

1. **Dockerfile** defines the Python environment
2. **requirements.txt** lists dependencies (pandas)
3. **process_data.py** contains the data processing logic
4. **Volume mounting** allows reading CSV files from host

## Customization

### Use your own CSV file

Place your CSV file in the `data/` folder and update the script:
``````python
df = pd.read_csv('data/your-file.csv')
``````

### Modify data processing

Edit `process_data.py` to add custom analysis, filtering, or transformations.

## Technologies Used

- 🐍 Python 3.9
- 🐳 Docker
- 📊 pandas

## Author

Zain Entrepreneur
Happy coding! 🚀
