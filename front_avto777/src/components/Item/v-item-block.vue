<template>
     <div class="v-block">
        <img 
            width="120" 
            height="120" 
            :src="image"
            alt="">
        <h2>{{ title }}</h2>
        <p align="justify">{{ text }}</p>
    </div>
</template>

<script>
export default {
    props: {
        image: String,
        title: String,
        text: String
    }
}
</script>


<style scoped>
.v-block {
    width: 300px;
}
</style>