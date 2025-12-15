---
title: "Illustrations and designs"
date: 2022-1-18
draft: false
description: "Different ways of looking at data"
---
Illustrations are not updated in the website. Go to my Instagram to be updated! https://www.instagram.com/juliagdealedo/ 

![profile](/img/mapa_mam.jpeg)

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
     max-width: 100%; /* Ensure images don't exceed their natural size */
  }

  .image-item img.horizontal {
    grid-column: span 2; /* Horizontal images span two columns */
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
   <img src="/img/vec_ventana.jpeg" alt="Ventana" onclick="openLightbox('/img/vec_ventana.jpeg')">
  </div>
  
  <div class="image-item">
    <img src="/img/vec_musica.jpeg" alt="House plant phylogeny" onclick="openLightbox('/img/vec_musica.jpeg')">
  </div>
  
  <div class="image-item">
    <img src="/img/infografia_.jpg" alt="House plant phylogeny" onclick="openLightbox('/img/infografia_.jpg')">
  </div>


  <div class="image-item">
    <img src="/img/joyplot_guadarrama.png" alt="Guadarrama Joyplot" onclick="openLightbox('/img/joyplot_guadarrama.png')">
  </div>

  <div class="image-item">
    <img src="/img/joyplot_madrid.png" alt="Madrid Joyplot" onclick="openLightbox('/img/joyplot_madrid.png')">
  </div>

  <div class="image-item">
    <img src="/img/joypot_espejo.png" alt="Espejo Joyplot" onclick="openLightbox('/img/joypot_espejo.png')">
  </div>


    
  <div class="image-item">
    <img src="/img/Mapa_Batimetria.jpg" alt="Batimetría" onclick="openLightbox('/img/Mapa_Batimetria.jpg')">
  </div>
    
  <div class="image-item">
    <img src="/img/Mapa_elevation.png" alt="Elevation South America" onclick="openLightbox('/img/Mapa_elevation.png')">
  </div>
    
  <div class="image-item">
    <img src="/img/Mapa_forestcover.png" alt="Araceae family" onclick="openLightbox('/img/Mapa_forestcover.png')">
  </div>

  
  
  <div class="image-item">
    <img src="/img/Araceae.JPG" alt="Araceae family" onclick="openLightbox('/img/Araceae.JPG')">
  </div>

   <div class="image-item">
    <img src="/img/PlantHabits.png" alt="Plant habits diversity" onclick="openLightbox('/img/PlantHabits.png')">
  </div>

  <div class="image-item">
    <img src="/img/Strawberry.PNG" alt="Blessed be the fruits" onclick="openLightbox('/img/Strawberry.PNG')">
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
