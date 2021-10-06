if [ -f "pdfbox-app-3.0.0-alpha2.jar" ]; then
    echo "pdfbox existed"
else
    aria2c 'https://dlcdn.apache.org/pdfbox/3.0.0-alpha2/pdfbox-app-3.0.0-alpha2.jar'
fi
