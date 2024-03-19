<template>
    <div class="v-card">
        <router-link to="/" class="v-image">
            <img 
                :src="image" 
                width="400" 
                height="250" alt="">
            <span class="v-card__price">от {{price}} р</span>
        </router-link>
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
        <a class="v-btn__link" href="#openModal">Забронировать</a>
    </div>
    <div id="openModal" class="modal">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">Бронирования автомобиля</h3>
                <a href="#close" title="Close" class="close">×</a>
            </div>
            <div class="modal-body">
                <h2 style="color: red;">{{ msg }}</h2>
                <label for="">Автомобиль</label>    
                <select v-model="avto" id="">
                    <option 
                        v-for="i in items" 
                        :value="i.mark"
                        :key="i">{{i.mark}}</option>
                </select>
                <input v-model="name" type="text" placeholder="Имя">
                <input v-model="phone" type="text" placeholder="Телефон">
                <input v-model="email" type="text" placeholder="E-mail">
                <label for="">Дата от:</label>
                <input v-model="date_ot" type="date">
                <label for="">Дата до:</label>
                <input v-model="date_do" type="date">
                <button @click="submit()">Забронировать</button>
            </div>
            </div>
        </div>
    </div>
</template>

<script>
import router from '@/router';
import axios from 'axios';

export default {
    props: {
        title: String,
        description: String,
        image: String,
        price: String,
        items: Object
    },

    data() {
        return {
            avto: "",
            name: "",
            phone: "",
            email: "",
            date_ot: "",
            date_do: "",
            msg: ""
        }
    },

    methods: {
        submit() {
            if(this.avto == "" || this.name == "" || this.phone == "" || this.email == "" || this.date_ot == "" || this.date_do == "") {
                this.msg = "Заполните поля"
            } else {
                axios.get(`http://avto77-api/add`, {
                    params: {
                        avto: this.avto,
                        name: this.name,
                        phone: this.phone,
                        email: this.email,
                        date_ot: this.date_ot,
                        date_do: this.date_do
                    }
                })
                .then(response => {
                    alert("Заявка успешно отправленна с вами свяжуться")
                    this.avto = "", this.name = "", this.phone = "",  this.email = "",  this.date_ot = "",  this.date_do = ""
                })
            }
        }
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
    text-decoration: none;
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
    color: #fff;
}

.v-btn__link {
    font-size: 18px;
    text-decoration: none;
    display: flex;
    justify-content: center;
    color: #000;
    border: 1px solid #000;
    padding: 6px;
    border-radius: 10px;
    position: absolute;
    bottom: 18px;
    left: 23px;
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

.modal {
    position: fixed; 
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0,0,0,0.5); 
    z-index: 1050;
    opacity: 0; 
    -webkit-transition: opacity 200ms ease-in; 
    -moz-transition: opacity 200ms ease-in;
    transition: opacity 200ms ease-in; 
    pointer-events: none; 
    margin: 0;
    padding: 0;
}

.modal:target {
    opacity: 1; 
	  pointer-events: auto; 
    overflow-y: auto; 
}

.modal-dialog {
    position: relative;
    width: auto;
    margin: 10px;
}
@media (min-width: 576px) {
  .modal-dialog {
      max-width: 500px;
      margin: 30px auto;
  }
}
.modal-content {
    position: relative;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: .3rem;
    outline: 0;
}

.modal-header {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between;
    padding: 15px;
    border-bottom: 1px solid #eceeef;
}

.modal-title {
    margin-top: 0;
    margin-bottom: 0;
    line-height: 1.5;
    font-size: 1.25rem;
    font-weight: 500;
    color: #000;
}

.close {
    float: right;
    font-family: sans-serif;
    font-size: 24px;
    font-weight: 700;
    line-height: 1;
    color: #000;
    text-shadow: 0 1px 0 #fff;
    opacity: .5;
    text-decoration: none;
}

.close:focus, .close:hover {
    color: #000;
    text-decoration: none;
    cursor: pointer;
    opacity: .75;
}

.modal-body {
    display: flex;
    flex-direction: column;
    max-width: 400px;
    margin: 0 auto;
  position: relative;
    -webkit-box-flex: 1;
    -webkit-flex: 1 1 auto;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 15px;
    overflow: auto;
    color: #000;
}

label {
    font-size: 20px;
}

select, input, button {
    width: 390px;
    height: 36px;
    font-size: 20px;
    margin: 5px 0px;
    padding-left: 5px;
    color: #000;
    border: 0px;
    border-bottom: 1.4px solid #000;
    outline: none;
}

button {
    background: #292521;
    color: #fff;
    border: 0px;
    border-radius: 10px;
    margin: 10px 0px;
}
</style>