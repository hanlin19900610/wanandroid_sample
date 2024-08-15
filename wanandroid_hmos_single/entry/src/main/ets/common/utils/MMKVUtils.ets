import { MMKV } from '@tencent/mmkv'
import { common } from '@kit.AbilityKit'

export class MMKVUtils {
  /**
   * MMKV初始化
   */
  static init = (context: common.ApplicationContext) => {
    return MMKV.initialize(context)
  }

  static putBool(key: string, value: boolean) {
    let mmkv = MMKV.defaultMMKV()
    mmkv.encodeBool(key, value)
  }

  static getBool(key: string, defaultValue?: boolean) {
    let mmkv = MMKV.defaultMMKV()
    return mmkv.decodeBool(key, defaultValue)
  }

  static putInt(key: string, value: number) {
    let mmkv = MMKV.defaultMMKV()
    mmkv.encodeInt32(key, value)
  }

  static getInt(key: string, defaultValue?: number) {
    let mmkv = MMKV.defaultMMKV()
    return mmkv.decodeInt32(key, defaultValue)
  }

  static putLong(key: string, value: bigint) {
    let mmkv = MMKV.defaultMMKV()
    mmkv.encodeInt64(key, value)
  }

  static getLong(key: string, defaultValue?: bigint) {
    let mmkv = MMKV.defaultMMKV()
    return mmkv.decodeInt64(key, defaultValue)
  }

  static putFloat(key: string, value: number) {
    let mmkv = MMKV.defaultMMKV()
    mmkv.encodeFloat(key, value)
  }

  static getFloat(key: string, defaultValue?: number) {
    let mmkv = MMKV.defaultMMKV()
    return mmkv.decodeFloat(key, defaultValue)
  }

  static putDouble(key: string, value: number) {
    let mmkv = MMKV.defaultMMKV()
    mmkv.encodeDouble(key, value)
  }

  static getDouble(key: string, defaultValue?: number) {
    let mmkv = MMKV.defaultMMKV()
    return mmkv.decodeDouble(key, defaultValue)
  }

  static putString(key: string, value: string) {
    let mmkv = MMKV.defaultMMKV()
    mmkv.encodeString(key, value)
  }

  static getString(key: string, defaultValue?: string) {
    let mmkv = MMKV.defaultMMKV()
    return mmkv.decodeString(key, defaultValue)
  }

  static remove(...keys: string[]) {
    let mmkv = MMKV.defaultMMKV()
    if (keys.length == 1) {
      mmkv.removeValueForKey(keys[0])
    } else {
      mmkv.removeValuesForKeys(keys)
    }
  }

  static isContainsKey(key: string) {
    let mmkv = MMKV.defaultMMKV()
    return mmkv.containsKey(key)
  }

  static clearAll() {
    let mmkv = MMKV.defaultMMKV()
    mmkv.clearAll()
  }
}