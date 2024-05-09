import MTAddCut from './MTAddCut'

@Preview
@Component
struct MTCartItem {
  build() {
    Row({ space: 10 }) {
      Image('https://img1.baidu.com/it/u=1057531865,2939526366&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500')
        .width(60)
        .aspectRatio(1)
        .borderRadius(8)
      Column() {
        Text('小份酸汤莜面鱼鱼+肉夹馍套餐')
          .fontSize(14)
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          })
        Row(){
          Text(){
            Span('￥').fontSize(10)
            Span('34.23').fontSize(20).fontWeight(600)
          }
          .fontColor($r('app.color.font_main_color'))
          MTAddCut()
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