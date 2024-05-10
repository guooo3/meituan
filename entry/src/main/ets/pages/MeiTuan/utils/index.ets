import { FoodItem } from '../models'

PersistentStorage.persistProp('user_cart', [])

export enum AddCutEnum {
  ADD,
  CUT
}

export class CartStore {
  //获取购物车
  static getCarts(): FoodItem[] {
    return AppStorage.get('user_cart') || [] as FoodItem[]
  }

  //加菜、减菜
  static addCutCart(type: AddCutEnum, item: FoodItem) {
    const list = CartStore.getCarts() // 当前购物车
    const findFood = list.find(obj => obj.id === item.id)
    if (type === AddCutEnum.ADD) {
      // 判断有无该菜品
      if (findFood) {
        findFood.count++
      } else {
        item.count = 1
        list.unshift(item)
      }
    } else if (type === AddCutEnum.CUT) {
      if (findFood) {
        findFood.count--
        if (findFood.count === 0) {
          let index = list.findIndex(obj => obj.id = item.id)
          list.slice(index, 1)
        }
      }
    }
    AppStorage.set("user_cart", [...list])
    getContext().eventHub.emit("change_cart") // 触发

  }

  //清空购物车
  static clearCart() {
    AppStorage.set('user_cart', [])
    getContext().eventHub.emit("change_cart")
  }
}