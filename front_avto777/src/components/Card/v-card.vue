<template>
    <div class="v-card">
        <div class="v-image">
            <img 
                :src="image" 
                width="400" 
                height="250" alt="">
            <span class="v-card__price">от {{price}} р</span>
        </div>
        <div class="v-card__inner v-color">
            <div class="v-card__data">
                <h2 class="v-card__title">{{ title }}</h2>
                <p>{{ description }}</p>
            </div>
            <div class="v-card__icon">
                <div class="v-inner">
                    <img src="icon/card_icon1.jpg" width="28" height="28" alt="">
                    <h3>5</h3>
                </div>
                <div class="v-inner">
                    <img src="icon/card_icon2.jpg" width="28" height="28" alt="">
                    <h3>A</h3>
                </div>
                <div class="v-inner">
                    <img src="icon/card_icon3.jpg" width="28" height="28" alt="">
                    <h3>5</h3>
                </div>
            </div>
        </div>
    </div>
</template>

<script>

export default {
    props: {
        title: String,
        description: String,
        image: String,
        price: String
    }
}

</script>

<style scoped>
.v-card {
    width: 400px;
    height: 400px;
    background: #fff;
    margin: 10px;
    border-radius: 10px;
    position: relative;
}

.v-card__inner {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    margin: 0px 20px;
}

.v-card__price {
    position: absolute;
    left: 40px;
    top: 40px;
    font-size: 22px;
    font-weight: 700;
}

img {
    border-radius: 10px 10px 0px 0px;
}

.v-color {
    color: #000;
}

.v-card__icon > div {
    width: 55px;
}
</style>