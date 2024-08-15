import { MMKVUtils } from './MMKVUtils'
import { common } from '@kit.AbilityKit'
import { AppUtil } from '@pura/harmony-utils'
import { window } from '@kit.ArkUI'

export class Utils{

  static init(context: common.UIAbilityContext, windowStage: window.WindowStage){
    MMKVUtils.init(context.getApplicationContext())
    AppUtil.init(context, windowStage)
  }

}