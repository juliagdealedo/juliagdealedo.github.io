---
title: "Visualizations"
date: 2022-1-18
draft: false
description: "What I think are scientific illustrations but actually they are random drawings about nature"
---

<style>
  .image-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 16px;
  }

  .image-item {
    position: relative;
    overflow: hidden;
  }

  .image-item img {
    width: 100%;
    height: auto;
    display: block;
  }

  .image-overlay {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    display: flex;
    align-items: center;
    justify-content: center;
    opacity: 0;
    transition: opacity 0.3s ease-in-out;
  }

  .image-item:hover .image-overlay {
    opacity: 1;
  }
</style>

<div class="image-grid">
  <div class="image-item">
    <img src="/img/Arnicamontana.png" alt="Arnica montana">
    <div class="image-overlay">Arnica montana</div>
  </div>

  <div class="image-item">
    <img src="/img/Araceae.JPG" alt="Araceae family">
    <div class="image-overlay">Araceae family</div>
  </div>

  <div class="image-item">
    <img src="/img/Hedera.jpg" alt="Entire leaved Hedera helix">
    <div class="image-overlay">Entire leaved Hedera helix</div>
  </div>

  <div class="image-item">
    <img src="/img/Strawberry.PNG" alt="Blessed be the fruits">
    <div class="image-overlay">Blessed be the fruits</div>
  </div>

  <div class="image-item">
    <img src="/img/PlantHabits.png" alt="Plant habits diversity">
    <div class="image-overlay">Plant habits diversity</div>
  </div>
</div>
