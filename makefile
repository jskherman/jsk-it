serve:
	hugo server

preview:
	hugo server --buildDrafts --buildFuture

draft:
	hugo && netlify deploy --dir=public

deploy:
	hugo --gc && netlify build --context production && netlify deploy --dir=public --prod

clean:
	rmdir /Q /S public