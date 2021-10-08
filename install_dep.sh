if [ -f "pdfbox-app-3.0.0-alpha2.jar" ]; then
    echo "pdfbox existed"
else
    curl -o 'pdfbox-app-3.0.0-alpha2.jar' 'https://dlcdn.apache.org/pdfbox/3.0.0-alpha2/pdfbox-app-3.0.0-alpha2.jar'
fi
