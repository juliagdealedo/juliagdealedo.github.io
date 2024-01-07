---
title: "Visualizations"
date: 2022-1-18
draft: false
description: "What I think are scientific illustrations but actually they are random drawings about nature"
---

<style>
  .image-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
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
    cursor: pointer; /* Add cursor pointer for clickable effect */
  }

  .lightbox {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.7);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1000;
    display: none;
  }

  .lightbox img {
    max-width: 90%;
    max-height: 90%;
    object-fit: contain;
  }
</style>

<div class="image-grid">
  <div class="image-item">
    <img src="/img/Arnicamontana.png" alt="Arnica montana" onclick="openLightbox('/img/Arnicamontana.png')">
  </div>

  <div class="image-item">
    <img src="/img/Araceae.JPG" alt="Araceae family" onclick="openLightbox('/img/Araceae.JPG')">
  </div>

  <!-- Repeat the structure for other images -->

</div>

<div class="lightbox" id="lightbox" onclick="closeLightbox()">
  <img id="lightbox-image">
</div>

<script>
  function openLightbox(imagePath) {
    document.getElementById('lightbox-image').src = imagePath;
    document.getElementById('lightbox').style.display = 'flex';
  }

  function closeLightbox() {
    document.getElementById('lightbox').style.display = 'none';
  }
</script>
