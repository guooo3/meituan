import MTCartItem from './MTCartItem'

@Preview
@Component
struct MTCart {
  build() {
    Column(){
      Column() {
        Row() {
          Text('购物车')
            .fontSize(12)
            .fontWeight(600)
          Text('清空购物车')
            .fontColor($r('app.color.search_font_color'))
            .fontSize(12)
        }
        .width('100%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({
          left: 15,
          right: 15
        })

        List({ space: 20 }) {
          ForEach(Array.from({ length: 5 }), () => {
            ListItem() {
              MTCartItem()
            }
          })
        }
        .padding({
          left: 15,
          right: 15
        })
      }
      .width('100%')
      .backgroundColor($r('app.color.white'))
      .padding({
        bottom: 100
      })
      .borderRadius({
        topLeft: 16,
        topRight: 16
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor("rgba(0,0,0,0.5)")
    .justifyContent(FlexAlign.End)
  }
}

export default MTCart