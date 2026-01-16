# Application Todo (Flutter + Django)

Il s'agit d'une simple application de liste de tâches construite avec un frontend Flutter et un backend Django.

## Fonctionnalités

- Afficher une liste de tâches.
- Ajouter de nouvelles tâches.
- Marquer les tâches comme terminées.
- Supprimer des tâches.

## Configuration du projet

### 1. Configuration du Backend (Django)

1.  Naviguez vers le répertoire de votre projet Django.
2.  Assurez-vous que toutes les dépendances sont installées.
3.  **Important** : Ouvrez votre fichier `settings.py` et ajoutez l'adresse IP de votre machine à la liste `ALLOWED_HOSTS`. Par exemple :

    ```python
    ALLOWED_HOSTS = ['10.54.188.174', 'localhost', '127.0.0.1']
    ```

4.  Lancez le serveur Django pour qu'il soit accessible sur votre réseau local :

    ```bash
    python manage.py runserver 0.0.0.0:8000
    ```

### 2. Configuration du Frontend (Flutter)

1.  Assurez-vous que Flutter est bien installé sur votre machine.
2.  Ouvrez ce projet Flutter (`todo`).
3.  Installez les dépendances nécessaires (`provider`, `dio`, etc.) en exécutant la commande suivante à la racine du projet Flutter :
    ```bash
    flutter pub get
    ```
4.  **Important** : Ouvrez le fichier `lib/services/api_service.dart` et vérifiez que le `baseUrl` correspond bien à l'adresse IP de la machine où tourne le serveur Django.

    ```dart
    baseUrl: 'http://VOTRE_ADRESSE_IP:8000',
    ```

5.  Lancez l'application sur votre émulateur ou appareil physique. Assurez-vous qu'il est connecté au même réseau Wi-Fi que votre serveur.

    ```bash
    flutter run
    ```

## Remarques

- Cette configuration utilise le protocole HTTP, adapté au développement local. Pour un environnement de production, il est impératif d'utiliser HTTPS.
- Assurez-vous que le pare-feu de votre ordinateur ne bloque pas les connexions entrantes sur le port 8000.
