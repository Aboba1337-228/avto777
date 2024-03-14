<template>
  <div class="home">
    <div 
      class="bg-home">
      <video 
        autoplay="" 
        loop="" muted="" 
        style="filter: brightness(40%); margin: auto; position: absolute; z-index: -1; top: 582px; left: 50%; transform: translate(-50%, -50%); visibility: visible; opacity: 1; width: auto; height: 962px;">
          <source src="https://storletcar.com/video/main-bg.mp4" type="video/mp4">
          <source src="https://storletcar.com/video/main-bg.webm" type="video/webm">
          <source src="https://storletcar.com/video/main-bg.ogv" type="video/ogg">
        </video>
        <vPanel />
    </div>

    <div class="v-container">
      <vItem />
      <div class="v-container__info">
        <div class="v-inner v-item__info">
          <img src="/info/1.png" alt="">
          <div>
            <div 
              class="v-inner"
              style="margin-bottom: 10px;">
              <img src="/info/2.png" alt="">
              <img src="/info/3.png" alt="">
            </div>
            <img src="/info/4.png" alt="">
          </div>
        </div>
      </div>
    </div>
    <div class="v-my__car">
        <div class="v-container">
          <h2>Наши автомобили</h2>
          <div class="v-inner__my__car">
            <vCard 
              v-for="i in items"
              :image="i.image" 
              :title="i.title" 
              :description="i.description" 
              :price="i.price" 
              :key="i" />
          </div>
          <router-link
            class="v-btn__link"  
            to="">Посмотреть все</router-link>
        </div>
      </div>
  </div>
</template>

<script>
import vItem from '@/components/Item/v-item.vue'
import vCard from '@/components/Card/v-card.vue';
import vPanel from '@/components/Panel/v-panel.vue';

export default {
  components: {
    vItem,
    vCard,
    vPanel
  },

  data() {
    return {
      items: [
        
      ]
    }
  },
}
</script>

<style scoped>

.v-container__info {
  max-width: 1184px;
  margin: 100px auto;
}

.v-item__info img {
  border-radius: 10px;
}

.bg-home {
  height: 800px;
}

.v-my__car {
  background: #292521;
  padding: 100px 0px;
  color: #fff;
}

.v-my__car > div > h2 {
  font-size: 39px;
  text-align: center;
}

.v-inner__my__car {
  display: flex;
  flex-wrap: wrap;
  align-content: flex-start;
}

.v-btn__link {
  font-size: 24px;
  text-decoration: none;
  display: flex;
  justify-content: center;
  color: #fff;
  border: 1px solid #fff;
  max-width: 300px;
  margin: 40px auto;
  padding: 10px;
  border-radius: 10px;
}

</style>