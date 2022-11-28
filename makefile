serve:
	hugo server

preview:
	hugo server --buildDrafts --buildFuture

draft:
	hugo && netlify deploy --dir=public

deploy:
	netlify build --context production && netlify deploy --dir=public --prod

clean:
	rmdir /Q /S public

ref:
	cd ./assets/img/ && python convert_to_webp.py && cd ../../ && python ./assets/scripts/rename_img_refs.py