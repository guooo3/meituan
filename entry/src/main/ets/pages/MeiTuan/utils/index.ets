import { FoodItem } from '../models'

PersistentStorage.persistProp('user_cart',[])
export class CartStore{
  //获取购物车
  static getStore(): FoodItem[]{
    return AppStorage.get('user_cart') || [] as FoodItem[]
  }
}