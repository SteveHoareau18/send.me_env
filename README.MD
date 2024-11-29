# Comment développer pour l'application send.me ?

Il est nécessaire d'avoir DockerDesktop d'installer et ouvert.

Après avoir cloner ce repertoire et étant placé dans ce-dernier, suivez ces instructions:

- `docker compose build`
- `docker compose up`

<p>Sur votre navigateur web, vous avez maintenant accès à <a href="http://localhost:3000">http://localhost:3000</a></p>
<p>Avec un HTTPClient, vous pouvez maintenant faire des requêtes HTTP à <a href=http://localhost:8000>http://localhost:8000</a></p>

> Pour le front:
> Connectez-vous avec IntellijIdea en SSH en créant une nouvelle connexion: root@localhost avec le port 2121 et le mot de passe root

> Pour le back:
> Connectez-vous avec IntellijIdea en SSH en créant une nouvelle connexion: root@localhost avec le port 2222 et le mot de passe root

Pour avoir une vue "projet" sur IntellijIdea en remote il faut suivre cette instruction:

- Clickez sur File
- Puis Project Structure
- Puis dans modules, selectionnez le projet sur lequel vous travaillez
- Cliquez sur add content root et parcourez pour trouvez le projet (Exemple: sendme_front c'est dans /home/send.me/sendme_front)

!! N'oubliez pas de commit et de push sur une branche de développement !!
