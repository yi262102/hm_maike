import { CategoryItem, MkGoodsItem, RequestAxios } from 'basic';
import { AAA, Banner } from '../viewmodel';

// 轮播图 /home/banner
export function getBannerApi() {
  return RequestAxios.get<Banner[]>('/home/banner')
}

// 分类 /home/category/head
export function getCategoryApi() {
  return RequestAxios.get<CategoryItem[]>('/home/category/head')
}

// 特惠推荐 /hot/preference
export function getSaleGoodsApi() {
  return RequestAxios.get<AAA>('/hot/preference')
}

// 爆款推荐 /hot/inVogue
export function getHotGoodsApi() {
  return RequestAxios.get<AAA>('/hot/inVogue')
}

// 一站买全 /hot/oneStop
export function getOneGoodsApi() {
  return RequestAxios.get<AAA>('/hot/oneStop')
}

// 新鲜好物 /home/new
export function getNewGoodsApi() {
  return RequestAxios.get<MkGoodsItem[]>('/home/new')
}

// 推荐商品 /home/recommend
// query参数(查询的) get请求如何传递?
// 1. 自己拼接: /home/recommend?limit=8
// 2. RequestAxios.get('/home/recommend', { params: { limit: 8 } })
export function getRecommendGoodsApi(limit: number = 8) {
  return RequestAxios.get<MkGoodsItem[]>('/home/recommend', { params: { limit } })
}