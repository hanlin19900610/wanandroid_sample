import { AbilityConstant, Configuration, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import { Utils } from '../common/utils/Utils';
import { OhosSmartDialog } from 'ohos_smart_dialog';
import { networkManager } from '@kit.MDMKit';
import { NetManager } from '../common/network/NetManager';
import { ZRouter } from '@hzw/zrouter';
import { CommonType } from '../common/utils/typealias/TypeAlias';

export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
    // 如果项目中存在hsp模块则传入true
    ZRouter.init(false)
  }

  onDestroy(): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    // 工具类初始化
    Utils.init(this.context, windowStage)

    // 网络初始化
    NetManager.init({
      baseUrl: 'https://www.wanandroid.com',
      successCode: 0,
      errorCode: 1,
      errorHandler: (error: CommonType) => {
      },
      commonHeaders: () => {
        let header = new Map<string, Object>()
        return header
      },
      commonParams: () => {
        let params = new Map<string, Object>()
        return params
      },
    })

    //
    // 1.获取应用主窗口。
    let windowClass: window.Window | null = null;
    windowStage.getMainWindow((err, data) => {

      if (err.code) {
        console.error('Failed to obtain the main window. Cause: ' + JSON.stringify(err));
        return;
      }

      windowClass = data;
      console.info('Succeeded in obtaining the main window. Data: ' + JSON.stringify(data));


      // 2.实现沉浸式效果：设置导航栏、状态栏不显示。
      // let names = ["status"];
      let names = [];
      windowClass.setWindowSystemBarEnable(names, (err) => {
        if (err.code) {
          console.error('Failed to set the system bar to be visible. Cause:' + JSON.stringify(err));
          return;
        }
        console.info('Succeeded in setting the system bar to be visible.');
      });
      windowClass.setWindowLayoutFullScreen(true)

    })

    windowStage.loadContent('pages/SplashPage', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }

  onConfigurationUpdate(newConfig: Configuration): void {
    OhosSmartDialog.onConfigurationUpdate(newConfig)
  }
}
