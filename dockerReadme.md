# Notes on Docker

- Create a docker image `docker build -t getting-started .`
- Here the name is whatever you want the image to be called (i think)

- Create repo in docker hub https://hub.docker.com/, call it `tic-tac-toe`
- Make sure visibility is public

- to push a new tag to this repo `docker tag getting-started kate49/tic-tac-toe`
- then `docker push kate49/tic-tac-toe`

- If you are using an ARM based Mac with Apple silicon, you will need to rebuild the image to be compatible with Play with Docker and push the new image to your repository.
`docker build --platform linux/amd64 -t kate49/tic-tac-toe .`
- - then `docker push kate49/tic-tac-toe`


# Test it on interactive Docker playground
https://labs.play-with-docker.com/
- Log in
- Select start
- Add new instance
- Terminal window should open on site, run `docker run -dp 0.0.0.0:3000:3000 kate49/tic-tac-toe`
- Image should pull down and start

Entrypoint - Where it will default go to
CMD - can override the entrypoint, but also where the entrypoint will get its command from
The order matters, entrypoint must be first. 