import MTBottom from './components/MTBottom';
import MTMain from './components/MTMain';
import MTTop from './components/MTTop';

@Entry
@Component
struct MTIndex {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Stack({alignContent: Alignment.Bottom}){
        Column(){
          MTTop()
          MTMain()
        }
        .height('100%')

        MTBottom()
      }
      .layoutWeight(1)
      .width('100%')

    }
    .width('100%')
    .height('100%')
  }
}