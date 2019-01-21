const routers = [
  {
    path: '/',
    name: 'dashboard',
    meta: {
      title: '首页',
      scrollToTop: true,
      requireAuth: true
    },
    component: () => import('@/views/layout'),
    redirect: '/index',
    children: [
      {
        path: 'index',
        component: () => import('@/views/dashboard'),
        name: 'index',
        meta: {
          title: '概览业',
          requireAuth: true,
          noCache: true
        }
      }
    ]
  },
  {
    path: '/login',
    alias: '/signin',
    name: 'login',
    component: () => import('@/views/login'),
    meta: {title: `登录`}
  }
]

export default routers