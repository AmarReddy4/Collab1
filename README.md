# Collab1

A multi-module collaborative web application built with Java and AngularJS. This repository contains three sub-projects that together form a full-stack platform with social collaboration features and an e-commerce shopping cart.

## Sub-Projects

### CollabServer
Spring MVC REST backend providing APIs for user management, blogs, forums, jobs, and events. Uses Hibernate ORM with JPA annotations and Jackson for JSON serialization.

### AngularFrontEnd
Single-page AngularJS frontend for the collaboration platform. Features client-side routing with views for login, registration, blog, forum, and friends.

### SHOPPINGCARTPROJECT2
Spring MVC shopping cart application with JSP views. Supports product browsing by category, cart management, user registration/login with Spring Security, admin panels for products/categories/suppliers, and checkout with payment flow. Uses H2 as the embedded database.

## Tech Stack

- **Backend:** Java, Spring MVC 4.3, Spring Security 4.1, Hibernate 5.2, H2 Database
- **Frontend:** AngularJS 1.2, Bootstrap 3, HTML/CSS
- **Build:** Maven, WAR packaging
- **Server:** Apache Tomcat (Servlet 3.1)
- **IDE:** Eclipse

## Project Structure

```
Collab1/
├── CollabServer/              # REST API backend (Spring MVC + Hibernate)
│   ├── src/main/java/         # Controllers, DAOs, models, services
│   ├── src/test/java/         # Unit tests
│   └── pom.xml
├── AngularFrontEnd/           # SPA frontend (AngularJS)
│   └── WebContent/            # HTML views, JS controllers, CSS
├── SHOPPINGCARTPROJECT2/      # Shopping cart app (Spring MVC + JSP)
│   ├── src/main/java/         # Controllers, DAOs, models, config
│   ├── src/main/webapp/       # JSP views, CSS, images
│   └── pom.xml
```

## Getting Started

1. Import each sub-project into Eclipse as a Maven project
2. Configure a Tomcat server instance
3. Deploy CollabServer and SHOPPINGCARTPROJECT2 as WAR files
4. Open AngularFrontEnd via the Tomcat server or a static file server
