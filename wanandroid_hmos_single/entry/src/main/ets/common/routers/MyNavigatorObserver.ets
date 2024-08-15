import { OhosSmartDialog } from 'ohos_smart_dialog'

export default class MyNavigatorObserver implements NavigationInterception {
  willShow?: InterceptionShowCallback | undefined = (from, to, operation, isAnimated) => {
    OhosSmartDialog.observe.willShow?.(from, to, operation, isAnimated)
  }
  didShow?: InterceptionShowCallback | undefined = (from, to, operation, isAnimated) => {
    OhosSmartDialog.observe.didShow?.(from, to, operation, isAnimated)
  }
}