import { FoodItem } from '../models'
import MTAddCut from './MTAddCut'

@Preview
@Component
struct MTCartItem {
  item: FoodItem = new FoodItem()

  build() {
    Row({ space: 10 }) {
      Image(this.item.picture)
        .width(60)
        .aspectRatio(1)
        .borderRadius(8)
      Column() {
        Text(this.item.name)
          .fontSize(14)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
        Row() {
          Text() {
            Span('￥').fontSize(10)
            Span(this.item.price.toString()).fontSize(20).fontWeight(600)
          }
          .fontColor($r('app.color.font_main_color'))

          MTAddCut({ item: this.item })
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .alignItems(HorizontalAlign.Start)
      .layoutWeight(1)
    }
    .width('100%')
  }
}

export default MTCartItem