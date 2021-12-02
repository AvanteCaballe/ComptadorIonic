<template>
  <ion-page>
    <ion-header :translucent="true">
      <ion-toolbar>
        <ion-title>Time Fighter</ion-title>
        <ion-buttons slot="end">
          <ion-button color="primary" fill="solid" @click="info">
            <ion-icon :icon="infoIcon"></ion-icon>
          </ion-button>
        </ion-buttons>
      </ion-toolbar>
    </ion-header>
    
    <ion-content :fullscreen="true">
      <ion-header class="ion-no-border ion-padding-top ion-padding-horizontal">
        <ion-grid>
          <ion-row>
            <ion-col>
              <div class="ion-text-start">
                Your Score: {{ score }}
              </div>
            </ion-col>
            <ion-col>
              <div class="ion-text-end">
                Time Left: {{ timeLeft }}
              </div>
            </ion-col>
          </ion-row>
        </ion-grid>
      </ion-header>
      <div id="container">
        <ion-button color="primary" fill="solid" @click="tap">Tap Me</ion-button>
      </div>
    </ion-content>
  </ion-page>
</template>

<script >
import {
  alertController,
  IonButton,
  IonButtons, IonCol,
  IonContent, IonGrid,
  IonHeader,
  IonIcon,
  IonPage, IonRow,
  IonTitle,
  IonToolbar, toastController
} from '@ionic/vue';
import { defineComponent } from 'vue';
import { informationCircleOutline } from 'ionicons/icons'
export default defineComponent({
  name: 'Home',
  components: {
    IonContent,
    IonHeader,
    IonPage,
    IonTitle,
    IonToolbar,
    IonButtons,
    IonButton,
    IonIcon,
    IonGrid,
    IonRow,
    IonCol,
  },
  setup () {
    return {
      infoIcon: informationCircleOutline,
      score: 0,
      timeLeft: 60,
    }
  },
  methods: {
    async info() {
      const alert = await alertController
      .create({
        header: 'Time Fighter 1.0',
        subHeader: 'Creat per Marc Avante',
        message: 'Podeu provar el codi font a: <a href="https://github.com/AvanteCaballe/ComptadorIonic">https://github.com/AvanteCaballe/ComptadorIonic</a>',
        buttons: ['OK'],
      });
      await alert.present();
    },
    async tap() {
      console.log('TODO TAP ME');
      // TOAST
      const toast = await toastController.create({
        color: '',
        duration: 2000,
        message: 'Paired successfully',
        showCloseButton: true,
      });

      await toast.present();
    }
  }
});
</script>

<style scoped>
#container {
  text-align: center;
  
  position: absolute;
  left: 0;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
}

#container strong {
  font-size: 20px;
  line-height: 26px;
}

#container p {
  font-size: 16px;
  line-height: 22px;
  
  color: #8c8c8c;
  
  margin: 0;
}

#container a {
  text-decoration: none;
}
</style>