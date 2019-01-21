import Vue from 'vue'
import VueRouter from 'vue-router'
import Routers from '@/router'
import Util from '@/libs/util'
// import store from './store'

Vue.use(VueRouter)
const scrollBehavior = (to, from, savedPosition) => {
}
// 路由配置
const router = new VueRouter({
  mode: 'history',
  linkActiveClass: 'open active',
  linkExactActiveClass: 'active',
  scrollBehavior,
  routes: Routers
})
// const whiteList = ['/login', '/search'] // no redirect whitelist

router.beforeEach((to, from, next) => {
  Util.title(to.meta.title)
  if (to.meta.requireAuth) { // 这个路由需要登录才能进入
    if (!sessionStorage.getItem('isLogin')) {
      next({
        path: 'login',
        query: {redirect: to.fullPath}
      })
    } else {
      next()
    }
  } else {
    next ()
  }
})

router.afterEach(() => {
  window.scrollTo(0, 0)
})

export default router