#### What's this?

IDE in a container.  Using https://github.com/FriendCode/codebox.

#### How to build the container

```
vagrant up
```

#### How to run codebox IDE

```
vagrant ssh
docker run -p :8000:8000 -v /vagrant:/vagrant codebox /vagrant --open
```

On the host machine (host of vagrant) open browser to ```192.168.33.10:8000```.

#### TODO:

Try to code a real project with this container.
