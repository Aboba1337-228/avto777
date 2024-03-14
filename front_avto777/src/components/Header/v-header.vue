<template>
    <div class="v-header">
        <div class="v-container">
            <div class="v-inner">
                <img src="logo.png" height="50" alt="">
                <div class="v-phone">
                    <h2>+7 (800) 333 08 33</h2>
                    <p>Круглосуточно</p>
                </div>
                <div class="v-btn">
                    <router-link class="v-btn__link" to="">Обратный звонок</router-link>
                    <router-link class="v-btn__link" to="">Мой профиль</router-link>
                </div>
            </div>
        </div>
    </div>
</template>

<style scoped>
.v-header {
    background: #292521;
    padding: 20px 0px;
}

.v-phone {
    color: #fff;
}

.v-btn__link {
    border: 2px solid #808080;
    color: #fff;
    font-size: 20px;
    padding: 12px 30px;
    margin: 0px 10px;
    text-decoration: none;
    border-radius: 30px;
}

</style>