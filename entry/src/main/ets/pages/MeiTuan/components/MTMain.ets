import { getFoodData } from '../api'
import { Category, FoodItem } from '../models'
import MTFoodItem from './MTFoodItem'

@Component
struct MTMain {
  @State
  list: Category[] = []
  @State
  activeIndex: number = 0

  aboutToAppear(): void {
    this.getData()
  }

  async getData() {
    this.list = await getFoodData()
    console.log("meituan_test:", JSON.stringify(this.list))
  }

  build() {
    Row() {
      //left
      Column() {
        ForEach(this.list, (item: Category, index: number) => {
          Text(item.name)
            .width('100%')
            .height(50)
            .textAlign(TextAlign.Center)
            .fontSize(14)
            .backgroundColor(this.activeIndex === index ? $r("app.color.white") : $r('app.color.left_back_color'))
            .onClick(() => {
              this.activeIndex = index
            })
        })
      }
      .width(90)
      .height('100%')
      .backgroundColor($r('app.color.left_back_color'))

      //right
      List() {
        ForEach(this.list[this.activeIndex]?.foods || [], (item: FoodItem) => {
          ListItem() {
            MTFoodItem({ item })
          }
        })
      }
      .height('100%')
      .layoutWeight(1)
      .padding({
        bottom: 120
      })
    }
    .width('100%')
  }
}

export default MTMain