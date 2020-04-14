all: dist/tailwindtinth.min.css dist/tailwindtinth-markdown.min.css

dist/tailwindtinth.min.css: dist/tailwindtinth.css
	yarn cleancss -o dist/tailwindtinth.min.css dist/tailwindtinth.css

dist/tailwindtinth.css: tailwind.src.css package.json tailwind.config.js
	yarn tailwindcss build tailwind.src.css -o dist/tailwindtinth.css

dist/tailwindtinth-markdown.min.css: dist/tailwindtinth-markdown.css
	yarn cleancss -o dist/tailwindtinth-markdown.min.css dist/tailwindtinth-markdown.css

dist/tailwindtinth-markdown.css: markdown.src.css package.json tailwind.config.js
	yarn tailwindcss build markdown.src.css -o dist/tailwindtinth-markdown.css

clean:
	rm -rf dist