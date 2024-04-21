mkdir -p dist
GOOS=js GOARCH=wasm go build -o dist/crane.wasm browser/browser.go
docker run --rm -v $(pwd):/src -w /src tinygo/tinygo tinygo build -no-debug -o ./dist/cranetiny.wasm -target=wasm ./browser/browser.go
