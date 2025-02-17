// 分类
export interface CategoryItem {
  children?: CategoryItemChild[]
  goods?: MkGoodsItem[]
  id: string
  name: string
  picture: ResourceStr
}

export interface CategoryItemChild {
  id: string
  name: string
  picture: ResourceStr
}

// 轮播图
export interface Banner {
  id: string;
  imgUrl: string;
  type: string;
}


export interface Params {
  title: string,
  subTitle: string,
  bg: ResourceStr,
  list: MkGoodsItem[]
}

// --------------------特惠推荐/爆款推荐/一站买全/新鲜好物
export interface AAA {
  id: string
  title: string
  subTypes: SubType[]
}

export interface SubType {
  id: string
  title: string
  goodsItems: GoodsItems
}

export interface GoodsItems {
  counts: number
  pageSize: number
  page: number
  pages: number
  items: MkGoodsItem[]
}

export interface MkGoodsItem {
  id: string
  name: string
  desc: string
  price: string
  picture: ResourceStr
  orderNum: number
}

