rm -rf dist
rm -rf bin
mkdir -p bin

sites=( wip error 502 404 jackmxyz-cloud )
for i in "${sites[@]}"; do
	npx parcel build "$i/index.html"
	mv "dist" "bin/$i"
	cp "$i/favicon.ico" "bin/$i/"
done
