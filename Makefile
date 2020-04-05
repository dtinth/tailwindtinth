dist/tailwindtinth.min.css: dist/tailwindtinth.css
	yarn cleancss -o dist/tailwindtinth.min.css dist/tailwindtinth.css

dist/tailwindtinth.css: tailwind.src.css package.json tailwind.config.js
	yarn tailwindcss build tailwind.src.css -o dist/tailwindtinth.css

clean:
	rm -rf dist