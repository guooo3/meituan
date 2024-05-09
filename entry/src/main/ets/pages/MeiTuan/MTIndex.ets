import MTBottom from './components/MTBottom';
import MTCart from './components/MTCart';
import MTMain from './components/MTMain';
import MTTop from './components/MTTop';
import { FoodItem } from './models';
import { CartStore } from './utils';
import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct MTIndex {
  @Provide
  showCart: boolean = false
  @Provide
  userCart: FoodItem[] = []
  @StorageProp('user_cart')
  @Watch('updateCart')
  data: FoodItem[] = []

  aboutToAppear(): void {
    this.userCart = CartStore.getCarts()
  }
  updateCart(){
    this.userCart = CartStore.getCarts()
    // promptAction.showToast({message: "change"})
  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.Bottom }) {
        Column() {
          MTTop()
          MTMain()
        }
        .height('100%')

        if (this.showCart) {
          MTCart()
        }
        MTBottom()
      }
      .layoutWeight(1)
      .width('100%')

    }
    .width('100%')
    .height('100%')
  }
}