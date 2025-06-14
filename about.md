---
layout: default
title: About
permalink: /about/
---

<style>
    /* The Lux theme handles its own font imports and background colors. */

    /* Hero Section Styling */
    .hero.is-primary {
        background-image: linear-gradient(rgba(10, 10, 10, 0.6), rgba(10, 10, 10, 0.8)), url('https://stargazehawaii.com/wp-content/uploads/2015/01/M45-Pleiades-Cluster.jpg');
        background-position: center center;
        background-size: cover;
        background-attachment: fixed; /* Creates a parallax effect */
    }

    .hero .title, .hero .subtitle {
        color: #fff;
    }

    .navbar.is-fixed-top {
        background-color: rgba(10, 10, 10, 0.85); /* Slightly darker for better contrast */
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
    }

    /* Ensure navbar text and brand title is readable and white */
    .navbar-item, .navbar-item a, .navbar-brand a, .navbar-brand .title {
         color: #fff;
    }
    .navbar-item a:hover, .navbar-item.is-active a {
        color: hsl(204, 86%, 53%);
    }

    /* Set logo icon to the new highlight color */
    .navbar-brand .fa-circle-nodes {
         color: #5f4dea !important;
    }
    
    .footer .footer-links a {
        margin: 0 10px;
    }

    .content h3 {
        margin-top: 2.5rem;
    }

    .mission-icon {
        font-size: 4rem;
        color: #5f4dea;
        margin-bottom: 1rem;
    }
    
    .cta-section {
         background-color: #f5f5f5; /* Light grey background */
    }

</style>

<nav class="navbar is-fixed-top" role="navigation" aria-label="main navigation">
    <div class="container">
        <div class="navbar-brand">
            <a class="navbar-item" href="/">
                <h1 class="title is-4"><i class="fa-solid fa-circle-nodes has-text-primary"></i> Pleiades</h1>
            </a>

            <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div id="navbarBasicExample" class="navbar-menu">
            <div class="navbar-end">
                <a href="/products/" class="navbar-item has-text-weight-semibold">
                    Products
                </a>
                <a href="/pricing/" class="navbar-item has-text-weight-semibold">
                    Pricing
                </a>
                <a href="/about/" class="navbar-item has-text-weight-semibold is-active">
                    About
                </a>
                <div class="navbar-item">
                    <div class="buttons">
                        <a class="button is-primary">
                            <strong>Sign up</strong>
                        </a>
                        <a class="button is-light">
                            Log in
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>

<section class="hero is-primary is-medium">
  <div class="hero-body">
    <div class="container has-text-centered">
      <h1 class="title is-1">
        Our Mission
      </h1>
      <h2 class="subtitle is-3">
        Democratize access to the universe of open-source tools.
      </h2>
    </div>
  </div>
</section>

<section class="section is-medium">
    <div class="container">
        <div class="columns is-centered">
            <div class="column is-8 content is-medium">
                <div class="has-text-centered">
                    <span class="mission-icon"><i class="fa-solid fa-rocket"></i></span>
                    <h3 class="title is-3">Unlocking the Power of Open Source</h3>
                </div>
                <p>The world of open-source software is a vast universe of powerful tools. From managing your own news feeds to creating a private library of articles, there’s a free and open solution for nearly everything. These tools give you the power to control your data and customize your digital environment. However, this power often comes with a steep learning curve, requiring technical expertise, server management, and constant maintenance.</p>
                
                <h3 class="title is-3 has-text-centered">Your Hosted Solution</h3>
                <p>We believe everyone should have access to these tools, not just those with the time and skills to manage a server. Our mission is to bridge that gap. We take the best open-source applications, handle all the complex setup and maintenance, and provide them to you as simple, affordable, and reliable services. You get all the benefits of powerful, community-driven software with none of the hassle.</p>

                <h3 class="title is-3 has-text-centered">A Commitment to the Community</h3>
                <p>We are not just users of open source; we are participants in its ecosystem. Pleiades is built by <a href="https://spacebarlabs.com" target="_blank">Space Bar Labs</a> on the fantastic work of projects like <a href="https://github.com/FreshRSS/FreshRSS" target="_blank">FreshRSS</a> and <a href="https://github.com/wallabag/wallabag" target="_blank">Wallabag</a>. To honor their contribution and to help ensure their continued development, we are committed to giving back. <strong>We contribute 10% of our profits directly to the open-source projects that power our services.</strong> When you subscribe to a Pleiades product, you're not just getting a great tool—you're supporting the community that made it possible.</p>
            </div>
        </div>
    </div>
</section>

<section class="section cta-section">
    <div class="container has-text-centered">
        <h2 class="title">Ready to Take Control of Your Data?</h2>
        <p class="subtitle">Explore our suite of open-source tools and start building your personal cloud today.</p>
        <a href="/products/" class="button is-primary is-large">
            <strong>Explore Our Products</strong>
        </a>
    </div>
</section>
