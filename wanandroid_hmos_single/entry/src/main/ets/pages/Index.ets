import { ZRouter } from '@hzw/zrouter/src/main/ets/api/Router';
import { OhosSmartDialog } from 'ohos_smart_dialog';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Stack() {
      Navigation(OhosSmartDialog.registerRouter(ZRouter.getNavStack())) {

      }

      OhosSmartDialog({
        // loadingBuilder:
      })
    }
  }

  onBackPress(): boolean | void {
    return OhosSmartDialog.onBackPressed()()
  }
}

// 路由子页面
@Component
struct JumpPage {
  build() {
    NavDestination() {

    }
    .onBackPressed(OhosSmartDialog.onBackPressed())
  }
}