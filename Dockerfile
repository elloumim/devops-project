# Étape 1 : Utiliser une image de base avec JDK 11
FROM openjdk:11-jdk-slim

# Étape 2 : Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier le fichier JAR dans le conteneur
COPY target/gestiondestock-0.0.1-SNAPSHOT.jar /app/mon-projet.jar

# Étape 4 : Exposer le port sur lequel votre application écoute (par exemple, 8080)
EXPOSE 8080

# Étape 5 : Définir la commande pour exécuter l'application
CMD ["java", "-jar", "/app/mon-projet.jar"]


