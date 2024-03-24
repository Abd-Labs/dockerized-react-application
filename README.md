# Invoice Generator - ReactJs

![React](https://img.shields.io/badge/React-18181b?style=for-the-badge&logo=react&logoColor=61DAFB)
![TailwindCSS](https://img.shields.io/badge/TailwindCSS-06B6D4?style=for-the-badge&logo=tailwind-css&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)


An Invoice Generator project built with React and TailwindCSS. Add items, quantity, prices, tax rates, and discounts. Download Generated Invoices as PDFs to your device and print out. Additionally, I embarked on a learning journey to understand Docker and successfully created a Dockerfile to containerize this react application. Through this process, I gained valuable insights into Docker's functionalities and How it can be used to run applications in isolated environment
### Screenshots

<img src="https://imgur.com/rjisRPZ.jpg" style="max-width: 100px; width: 100%; height: auto;">
<img src="https://imgur.com/vuiKcrK.jpg" style="max-width: 100px;width: 100%; height: auto;">
<img src="https://imgur.com/bXNiAHT.jpg" style="max-width: 100px;width: 100%; height: auto;">

### Tools

- React
- Docker
- Tailwind CSS
- Headless UI
- Html-to-image
- jsPDF

# Run Using Docker

## Step 1: Install Docker on your system

Visit [Docker Installation Guide](https://docs.docker.com/get-docker/) for installation instructions.

## Step 2: Clone the Repository and Build the Docker Image

```
git clone https://github.com/Abd-Labs/react-docker

cd react-docker

docker build -t invoice-generator .

docker run -p 3000:3000 invoice-generator
```




### Meta

Hourmeng Khy
