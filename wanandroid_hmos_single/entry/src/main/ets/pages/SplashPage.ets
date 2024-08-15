import { Const } from '../common/constants/CommonConstants';

@Entry
@Component
struct SplashPage {
  build() {
    Stack() {
      Column() {
        Column() {
          Image($r('app.media.ic_splash'))
            .width($r('app.float.300dp'))
            .aspectRatio(1)
            .objectFit(ImageFit.Contain)
        }
        .backgroundImage($r('app.media.bg_splash'))
        .backgroundImageSize(ImageSize.Auto)
        .backgroundImagePosition(Alignment.Center)
        .justifyContent(FlexAlign.Center)

        Column() {
          Text('玩安卓-鸿蒙版')
            .fontColor(Color.White)
            .fontSize($r('app.float.24sp'))
            .fontWeight(500)

          Text('欢迎来到玩Android-HarmonyOS的世界')
            .fontSize($r('app.float.16sp'))
            .fontColor(Color.White)
            .opacity(0.7)
            .margin({
              top: $r('app.float.5dp')
            })
        }
      }
      .padding({ bottom: '17%', top: $r('app.float.24dp') })
      .backgroundColor($r('app.color.c_0A59F7'))
      .width(Const.FULL_PERCENT)
      .height(Const.FULL_PERCENT)
    }
    .width(Const.FULL_PERCENT)
    .height(Const.FULL_PERCENT)
  }
}