//轮播图接口: /home/banner
import { RequestAxios } from 'basic';
import { Banner } from '../viewmodel';

export function getBannerApi() {
  return RequestAxios.get<Banner[]>('/home/banner')
}