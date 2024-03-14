<template>
    <div class="v-footer">
        <div class="v-container">
            <div class="v-footer__inner">
                <div class="v-footer__item">
                    <img src="logo.png" alt=""> 
                    <p align="justify">Информация на данном сайте носит исключительно ознакомительный характер и не является публичной офертой, определяемой положениями Статьи 437 Гражданского кодекса РФ.</p>
                    <p>(C) 2016 «Avto777 Group» — аренда автомобилей в Оренбурге</p>
                </div>
                <div class="v-footer__item">
                    <a href="#">Выбор автомобиля</a>
                    <a href="#">Станции аренды</a>
                    <a href="#">Дисконтая система</a>
                    <a href="#">Франчайзинг</a>
                    <a href="#">Оперативный лизинг</a>
                    <a href="#">Аренда с выкупом</a>
                    <a href="#">О компании</a>
                    <a href="#">Политика безопасности и оплаты</a>
                </div>
                <div class="v-footer__item">
                    <h3>Контакты</h3>
                    <p>г. Оренбург, Чкалова 11<br>
                    8 (800) 333 08 33<br>
                    car56@orenburg.com</p>
                </div>
                <div class="v-footer__item">
                    <h2>Подписывайтесь на рассылку
                    и узнавайте первым об акциях
                    и спецпредложениях</h2>
                    <button class="v-footer__btn">Подписаться</button>
                </div>
            </div>
        </div>
    </div>
</template>


<style scoped>
.v-footer {
    background: #292521;
    border-top: 3px solid #fff;
    padding: 40px;
}

.v-footer__inner {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
}

.v-footer__item {
    display: grid;
    width: 300px;
}

.v-footer__item p, .v-footer__item a {
    color: #fff;
    margin: 15px 0px;
}

.v-footer__item a, .v-footer__item h2, h3 {
    color: #fff;
    margin: 4px 0px;
}

.v-footer__item h3 {
    font-size: 22px;
}

.v-footer__item h2 {
    font-size: 20px;
}

.v-footer__btn {
    padding: 15px 30px;
    font-size: 22px;
    border: 0px;
    color: #fff;
    border: 2px solid rgb(255, 255, 0);
    border-radius: 20px;
    cursor: pointer;
    margin-top: 30px;
    transition: .3s;
    background: transparent;
}

.v-footer__btn:hover {
    color: #000;
    background: rgb(227, 230, 66);
}
</style>