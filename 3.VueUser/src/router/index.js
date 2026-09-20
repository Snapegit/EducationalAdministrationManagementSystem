import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import xueshengList from '@/views/pages/xuesheng/list'
import xueshengDetail from '@/views/pages/xuesheng/formModel'
import xueshengAdd from '@/views/pages/xuesheng/formAdd'
import xueshengCenter from '@/views/pages/xuesheng/center'
import jiaoshiList from '@/views/pages/jiaoshi/list'
import jiaoshiDetail from '@/views/pages/jiaoshi/formModel'
import jiaoshiAdd from '@/views/pages/jiaoshi/formAdd'
import kechengxinxiList from '@/views/pages/kechengxinxi/list'
import kechengxinxiDetail from '@/views/pages/kechengxinxi/formModel'
import kechengxinxiAdd from '@/views/pages/kechengxinxi/formAdd'
import storeupList from '@/views/pages/storeup/list'
import xueshengxuankeList from '@/views/pages/xueshengxuanke/list'
import xueshengxuankeDetail from '@/views/pages/xueshengxuanke/formModel'
import xueshengxuankeAdd from '@/views/pages/xueshengxuanke/formAdd'
import xueshengchengjiList from '@/views/pages/xueshengchengji/list'
import xueshengchengjiDetail from '@/views/pages/xueshengchengji/formModel'
import xueshengchengjiAdd from '@/views/pages/xueshengchengji/formAdd'
import laoshikechengbiaoList from '@/views/pages/laoshikechengbiao/list'
import laoshikechengbiaoDetail from '@/views/pages/laoshikechengbiao/formModel'
import laoshikechengbiaoAdd from '@/views/pages/laoshikechengbiao/formAdd'
import banjiList from '@/views/pages/banji/list'
import banjiDetail from '@/views/pages/banji/formModel'
import banjiAdd from '@/views/pages/banji/formAdd'
import ziliaoleixingList from '@/views/pages/ziliaoleixing/list'
import ziliaoleixingDetail from '@/views/pages/ziliaoleixing/formModel'
import ziliaoleixingAdd from '@/views/pages/ziliaoleixing/formAdd'
import xuexiziliaoList from '@/views/pages/xuexiziliao/list'
import xuexiziliaoDetail from '@/views/pages/xuexiziliao/formModel'
import xuexiziliaoAdd from '@/views/pages/xuexiziliao/formAdd'
import newsList from '@/views/pages/news/list'
import ziliaoxiazaiList from '@/views/pages/ziliaoxiazai/list'
import ziliaoxiazaiDetail from '@/views/pages/ziliaoxiazai/formModel'
import ziliaoxiazaiAdd from '@/views/pages/ziliaoxiazai/formAdd'
import xuejixinxiList from '@/views/pages/xuejixinxi/list'
import xuejixinxiDetail from '@/views/pages/xuejixinxi/formModel'
import xuejixinxiAdd from '@/views/pages/xuejixinxi/formAdd'
import jiaoxuefankuiList from '@/views/pages/jiaoxuefankui/list'
import jiaoxuefankuiDetail from '@/views/pages/jiaoxuefankui/formModel'
import jiaoxuefankuiAdd from '@/views/pages/jiaoxuefankui/formAdd'
import jiaoxuepingguList from '@/views/pages/jiaoxuepinggu/list'
import jiaoxuepingguDetail from '@/views/pages/jiaoxuepinggu/formModel'
import jiaoxuepingguAdd from '@/views/pages/jiaoxuepinggu/formAdd'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'xueshengList',
			component: xueshengList
		}, {
			path: 'xueshengDetail',
			component: xueshengDetail
		}, {
			path: 'xueshengAdd',
			component: xueshengAdd
		}
		, {
			path: 'xueshengCenter',
			component: xueshengCenter
		}
		, {
			path: 'jiaoshiList',
			component: jiaoshiList
		}, {
			path: 'jiaoshiDetail',
			component: jiaoshiDetail
		}, {
			path: 'jiaoshiAdd',
			component: jiaoshiAdd
		}
		, {
			path: 'kechengxinxiList',
			component: kechengxinxiList
		}, {
			path: 'kechengxinxiDetail',
			component: kechengxinxiDetail
		}, {
			path: 'kechengxinxiAdd',
			component: kechengxinxiAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'xueshengxuankeList',
			component: xueshengxuankeList
		}, {
			path: 'xueshengxuankeDetail',
			component: xueshengxuankeDetail
		}, {
			path: 'xueshengxuankeAdd',
			component: xueshengxuankeAdd
		}
		, {
			path: 'xueshengchengjiList',
			component: xueshengchengjiList
		}, {
			path: 'xueshengchengjiDetail',
			component: xueshengchengjiDetail
		}, {
			path: 'xueshengchengjiAdd',
			component: xueshengchengjiAdd
		}
		, {
			path: 'laoshikechengbiaoList',
			component: laoshikechengbiaoList
		}, {
			path: 'laoshikechengbiaoDetail',
			component: laoshikechengbiaoDetail
		}, {
			path: 'laoshikechengbiaoAdd',
			component: laoshikechengbiaoAdd
		}
		, {
			path: 'banjiList',
			component: banjiList
		}, {
			path: 'banjiDetail',
			component: banjiDetail
		}, {
			path: 'banjiAdd',
			component: banjiAdd
		}
		, {
			path: 'ziliaoleixingList',
			component: ziliaoleixingList
		}, {
			path: 'ziliaoleixingDetail',
			component: ziliaoleixingDetail
		}, {
			path: 'ziliaoleixingAdd',
			component: ziliaoleixingAdd
		}
		, {
			path: 'xuexiziliaoList',
			component: xuexiziliaoList
		}, {
			path: 'xuexiziliaoDetail',
			component: xuexiziliaoDetail
		}, {
			path: 'xuexiziliaoAdd',
			component: xuexiziliaoAdd
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'ziliaoxiazaiList',
			component: ziliaoxiazaiList
		}, {
			path: 'ziliaoxiazaiDetail',
			component: ziliaoxiazaiDetail
		}, {
			path: 'ziliaoxiazaiAdd',
			component: ziliaoxiazaiAdd
		}
		, {
			path: 'xuejixinxiList',
			component: xuejixinxiList
		}, {
			path: 'xuejixinxiDetail',
			component: xuejixinxiDetail
		}, {
			path: 'xuejixinxiAdd',
			component: xuejixinxiAdd
		}
		, {
			path: 'jiaoxuefankuiList',
			component: jiaoxuefankuiList
		}, {
			path: 'jiaoxuefankuiDetail',
			component: jiaoxuefankuiDetail
		}, {
			path: 'jiaoxuefankuiAdd',
			component: jiaoxuefankuiAdd
		}
		, {
			path: 'jiaoxuepingguList',
			component: jiaoxuepingguList
		}, {
			path: 'jiaoxuepingguDetail',
			component: jiaoxuepingguDetail
		}, {
			path: 'jiaoxuepingguAdd',
			component: jiaoxuepingguAdd
		}
		]
	},
	{
		path: '/login',
		component: login
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
