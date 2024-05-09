import { http } from '@kit.NetworkKit'
import { promptAction } from '@kit.ArkUI'
import { Category } from '../models'

export const getFoodData = async () => {
  const req = http.createHttp()
  try {
    const res = await req.request("https://zhousg.atomgit.net/harmonyos-next/takeaway.json")
    return JSON.parse(res.result as string) as Category[]
  } catch (error) {
    promptAction.showToast({ message: error.message })
    return Promise.reject(error)
  } finally {
    req.destroy()
  }

}