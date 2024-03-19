<template>
  <div class="v-catalog">
    <div class="v-my__car">
        <div class="v-container">
          <h2>Каталог</h2>
          
          <div class="v-inner__my__car">
            <vCard 
              v-for="i in items"
              :items="items"
              :image="i.image" 
              :title="i.mark" 
              :description="i.description" 
              :price="i.price" 
              :key="i" />
          </div>
        </div>
    </div>
  </div>
</template>

<script>
import vCard from '@/components/Card/v-card.vue';
import axios from 'axios';

export default {
  components: {
    vCard,
  },

  data() {
    return {
      items: []
    }
  },

  mounted() {
    this.cars()
  },

  methods: {
    cars() {
      axios.post('http://avto77-api/cars')
        .then(response => {
          this.items = response.data
        })
    }
  }
}
</script>

<style scoped>
.v-catalog {
  border-top: 2px solid #fff;
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

</style>
