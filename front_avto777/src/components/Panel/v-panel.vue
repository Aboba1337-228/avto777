<template>
    <div class="v-window">
        <div class="v-window__title">
            <h2>Прокат автомобилей</h2>
            <h2 style="color: yellow;">В Оренбурге</h2>
        </div>
        <div class="v-panel">
            <h2 class="v-panel__title">Подобрать автомобиль</h2>
            <div class="v-panel__form">
                <h3 class="v-form__title">Получения автомобиля</h3>
                <div class="v-inner v-form__params">
                    <select name="" id="">
                        <option value="">Наш офис: г. Оренбург,  Чкалова 11</option>
                        <option value="">Удобный вам аэропорт</option>
                        <option value="">Удобный вам вокзал</option>
                        <option value="">Любой удобный вам адрес</option>
                        <option value="">Любой удобный вам адрес</option>
                    </select>
                    <input type="date">
                    <input type="time">
                </div>
                <h3 class="v-form__title">Возврат там же</h3>
                <div class="v-inner v-form__params">
                    <select name="" id="">
                        <option value="">Наш офис: г. Оренбург,  Чкалова 11</option>
                        <option value="">Удобный вам аэропорт</option>
                        <option value="">Удобный вам вокзал</option>
                        <option value="">Любой удобный вам адрес</option>
                        <option value="">Любой удобный вам адрес</option>
                    </select>
                    <input type="date">
                    <input type="time">
                </div>
                <button class="v-form__btn">Подобрать</button>
            </div>
        </div>
    </div>
</template>

<style scoped>
.v-window__title {
    text-align: center;
    margin-top: 230px;
}

.v-window__title h2 {
    font-size: 60px;
    line-height: 50px;
    color: #fff;
}

.v-window__title > h2:last-child() {
    color: yellow;
}

.v-panel {
    background: #fff;
    max-width: 800px;
    margin: 40px auto;
    height: 400px;
    border-radius: 18px;
}

.v-panel__title {
    text-align: center;
    padding-top: 30px;
    padding-bottom: 20px;
    font-size: 30px;
}

.v-panel__form {
    margin: 30px 40px;
}

.v-form__title {
    margin: 30px 0px;
    font-size: 24px;
}

select, input {
    border: 0px;
    border-bottom: 1px solid #000;
    margin: 0px 5px;
    font-size: 19px;
    outline: none;
    cursor: pointer;
}

.v-form__btn {
    padding: 15px 30px;
    font-size: 22px;
    border: 0px;
    color: #000;
    background: rgb(255, 255, 0);
    border-radius: 20px;
    cursor: pointer;
    margin-top: 30px;
    transition: .3s;
}

.v-form__btn:hover {
    background: rgb(227, 230, 66);
}
</style>