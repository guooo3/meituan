import { FoodItem } from '../models'

@Preview
@Component
struct MTAddCut {
  @Styles
  add_cut(){
    .width(16)
    .aspectRatio(1)
    .borderRadius(4)
  }

  @Consume
  userCart: FoodItem[]
  fid: number = 0

  getCount() {
    return this.userCart.find(item => item.id === this.fid)?.count || 0
  }

  build() {
    Row({ space: 8 }) {
      Row() {
        Image($r('app.media.ic_screenshot_line'))
          .width(10)
          .aspectRatio(1)
      }
      .justifyContent(FlexAlign.Center)
      .border({
        color: $r('app.color.main_color'),
        width: 0.5
      })
      .add_cut()
      .visibility(this.getCount() ? Visibility.Visible : Visibility.Hidden)

      Text('0')
        .visibility(this.getCount() ? Visibility.Visible : Visibility.Hidden)
      Row() {
        Image($r('app.media.ic_public_add_filled'))
          .width(10)
          .aspectRatio(1)
      }
      .justifyContent(FlexAlign.Center)
      .backgroundColor($r('app.color.main_color'))
      .add_cut()
    }
  }
}

export default MTAddCut