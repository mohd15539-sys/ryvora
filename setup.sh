#!/bin/bash

# Ryvora AE Platform Docker Setup Script

echo "🚀 Setting up Ryvora AE Platform with Docker..."

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker Desktop first."
    exit 1
fi

# Check if Docker Compose is available
if ! command -v docker-compose &> /dev/null && ! docker compose version &> /dev/null; then
    echo "❌ Docker Compose is not available. Please install Docker Compose."
    exit 1
fi

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    echo "📝 Creating .env file from template..."
    cp env.example .env
    echo "✅ .env file created. Please edit it with your configuration."
    echo "📖 Open .env file and update the values as needed."
else
    echo "✅ .env file already exists."
fi

# Choose deployment type
echo ""
echo "Choose deployment type:"
echo "1) Development (with hot reload)"
echo "2) Production (optimized build)"
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        echo "🔧 Starting development environment..."
        docker-compose up --build
        ;;
    2)
        echo "🏭 Starting production environment..."
        docker-compose -f docker-compose.prod.yml up --build -d
        echo ""
        echo "🎉 Production environment started!"
        echo "📱 Frontend: http://localhost"
        echo "🚀 Backend: http://localhost:8000"
        echo ""
        echo "To view logs: docker-compose -f docker-compose.prod.yml logs"
        echo "To stop: docker-compose -f docker-compose.prod.yml down"
        ;;
    *)
        echo "❌ Invalid choice. Please run the script again."
        exit 1
        ;;
esac
