@Preview
@Component
struct MTBottom {
  build() {
    Row() {
      Row() {
        Badge({
          value: '0',
          position: BadgePosition.Right,
          style: {
            badgeSize: 18
          }
        }) {
          Image($r('app.media.ic_public_cart'))
            .width(47)
            .height(69)
            .position({
              y: -20
            })
        }
        .margin({
          left: 25,
          right: 10
        })

        Column() {
          Text() {
            Span('￥').fontSize(12)
            Span('0.00').fontSize(24)
          }
          .fontColor($r('app.color.white'))

          Text('预估另需配送费¥5元')
            .fontColor($r('app.color.search_font_color'))
            .fontSize(14)
        }
        .alignItems(HorizontalAlign.Start)
        .layoutWeight(1)

        Text('去结算')
          .backgroundColor($r('app.color.main_color'))
          .height(50)
          .width(100)
          .borderRadius({
            topRight: 25,
            bottomRight: 25
          })
          .textAlign(TextAlign.Center)


      }
      .width('100%')
      .height(50)
      .backgroundColor($r('app.color.bottom_back'))
      .borderRadius(25)
    }
    .width('100%')
    .padding({
      left: 20,
      right: 20,
      bottom: 20
    })
  }
}

export default MTBottom