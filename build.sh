rm -rf dist
rm -rf bin
mkdir -p bin

sites=( wip error 502 404 )
for i in "${sites[@]}"; do
	npx parcel build "$i/index.html"
	mv "dist" "bin/$i"
	mv "$i/favicon.ico" "bin/$i/"
done
