---
layout: default
title: Log In
permalink: /login/
---

<style>
    /* The Lux theme handles its own font imports and background colors. */

    .hero.is-primary {
        background-image: linear-gradient(rgba(10, 10, 10, 0.6), rgba(10, 10, 10, 0.8)), url('https://stargazehawaii.com/wp-content/uploads/2015/01/M45-Pleiades-Cluster.jpg');
        background-position: center center;
        background-size: cover;
        background-attachment: fixed;
    }

    .hero .title, .hero .subtitle {
        color: #fff;
    }

    .navbar.is-fixed-top {
        background-color: rgba(10, 10, 10, 0.85);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
    }
    
    .navbar-item, .navbar-item a, .navbar-brand a, .navbar-brand .title {
         color: #fff;
    }
    .navbar-item a:hover {
        color: hsl(204, 86%, 53%);
    }

    .navbar-brand .fa-circle-nodes {
         color: #5f4dea !important;
    }
    
    .footer .footer-links a {
        margin: 0 10px;
    }

    .login-card {
        max-width: 480px;
        margin: 0 auto;
        padding: 2rem;
        border: 1px solid hsl(0, 0%, 93%);
        border-radius: 6px;
        background-color: #fff;
    }
    
    .app-links {
        margin-top: 1.5rem;
        border-top: 1px solid #dbdbdb;
        padding-top: 1.5rem;
    }

</style>

<section class="hero is-primary">
  <div class="hero-body">
    <div class="container has-text-centered">
      <h1 class="title is-1">
        Log In
      </h1>
      <h2 class="subtitle is-3">
        Access your personal space
      </h2>
    </div>
  </div>
</section>

<section class="section">
    <div class="container">
        <div class="login-card">
            <div class="has-text-centered">
                 <p class="is-size-5 mb-4">Go directly to your apps:</p>
                 <p>&nbsp;</p>
                 <div class="buttons">
                    <a href="https://freshrss.cloudbreak.app/" class="button is-link is-medium is-fullwidth mb-3">
                        <span class="icon">
                            <i class="fa-solid fa-satellite-dish"></i>
                        </span>
                        <span>News</span>
                    </a>
                    <a href="https://wallabag.cloudbreak.app/" class="button is-info is-medium is-fullwidth">
                         <span class="icon">
                            <i class="fa-solid fa-book-bookmark"></i>
                        </span>
                        <span>Folio</span>
                    </a>
                </div>
            </div>
            
        </div>
    </div>
</section>
