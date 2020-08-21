---
type: root
title: Lorem Ipsum Inc.
lead: Dolor sit amet, consectetur adipiscing elit
description: Nam eget imperdiet dolor, vitae cursus ante. Suspendisse sed blandit justo, at fringilla augue. Sed ut rutrum quam.
logo: /examples/assets/img/logo-lorem-ipsum.svg
card: /examples/assets/img/card.svg
cover: /examples/assets/img/cover.svg
permalink: /
toc:
    max: 3
search: true
jumbotron:
  actions:
    "Look at our Mission": \#mission
    "Look at our Teams": \#Teams
  background-image: /examples/assets/img/img.svg
---

## Mission

Aliquam egestas lobortis consectetur. Sed a hendrerit nunc. Morbi imperdiet risus a finibus placerat. Phasellus facilisis tellus nisi, nec scelerisque nibh facilisis a. Duis consequat a eros ut vestibulum. Nunc ac purus nec magna posuere efficitur nec vel diam. Phasellus ut pellentesque lectus, a porttitor nulla. Aenean auctor molestie neque, consectetur aliquet eros ultricies id. Suspendisse ullamcorper felis eu luctus facilisis. Proin id risus ac felis tincidunt consequat. 

### Goals

- Curabitur turpis risus, dignissim ut orci a, porttitor maximus massa.
- Etiam laoreet erat mauris, sit amet sagittis orci convallis at.
- Vestibulum nec commodo dui. Ut ante eros, euismod at congue ut, gravida sit amet justo.
- Praesent imperdiet erat bibendum, ultrices justo sit amet, rutrum nibh.
- Donec sapien libero, congue ac lacinia et, consectetur ut tellus.

## Teams

{% assign teams = site.pages | where: "parent", page.title  %}
<div class="card-deck">
  {% for team in teams %}
  <div class="card">
    <img src="{{ team.img }}" class="card-img-top">
    <div class="card-body">
      <h5 class="card-title">{{ team.title }}</h5>
      <p class="card-text">{{ team.description }}</p>
      <a href="{{ team.url }}">Visit</a>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated {{ team.date | date_to_long_string: "ordinal" }}</small>
    </div>
  </div>
  {% endfor %}
</div>

