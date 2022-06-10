#!/bin/sh 
cd .
echo “Building React Project …” 
npm run build 
echo “Copying html file …” 
cp -r build html 
echo “Connecting to AWS VM and copying file to /var/www/html/ …” sudo scp -i "Webserve1.pem" -r html  ubuntu@ec2-54-166-17-30.compute-1.amazonaws.com:/var/www 
echo “Removing html file from local directory …” 
rm -r html
sleep 30