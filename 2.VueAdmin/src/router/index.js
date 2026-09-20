	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import xueshengxuanke from '@/views/xueshengxuanke/list'
	import xuesheng from '@/views/xuesheng/list'
	import ziliaoxiazai from '@/views/ziliaoxiazai/list'
	import laoshikechengbiao from '@/views/laoshikechengbiao/list'
	import jiaoshi from '@/views/jiaoshi/list'
	import xueshengchengji from '@/views/xueshengchengji/list'
	import kechengxinxi from '@/views/kechengxinxi/list'
	import jiaoxuefankui from '@/views/jiaoxuefankui/list'
	import jiaoxuepinggu from '@/views/jiaoxuepinggu/list'
	import ziliaoleixing from '@/views/ziliaoleixing/list'
	import xuexiziliao from '@/views/xuexiziliao/list'
	import banji from '@/views/banji/list'
	import config from '@/views/config/list'
	import xuejixinxi from '@/views/xuejixinxi/list'
	import jiaoshiCenter from '@/views/jiaoshi/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/jiaoshiCenter',
			name: '教师个人中心',
			component: jiaoshiCenter
		}
		,{
			path: '/news',
			name: '公告信息',
			component: news
		}
		,{
			path: '/xueshengxuanke',
			name: '学生选课',
			component: xueshengxuanke
		}
		,{
			path: '/xuesheng',
			name: '学生',
			component: xuesheng
		}
		,{
			path: '/ziliaoxiazai',
			name: '资料下载',
			component: ziliaoxiazai
		}
		,{
			path: '/laoshikechengbiao',
			name: '老师课程表',
			component: laoshikechengbiao
		}
		,{
			path: '/jiaoshi',
			name: '教师',
			component: jiaoshi
		}
		,{
			path: '/xueshengchengji',
			name: '学生成绩',
			component: xueshengchengji
		}
		,{
			path: '/kechengxinxi',
			name: '课程信息',
			component: kechengxinxi
		}
		,{
			path: '/jiaoxuefankui',
			name: '教学反馈',
			component: jiaoxuefankui
		}
		,{
			path: '/jiaoxuepinggu',
			name: '教学评估',
			component: jiaoxuepinggu
		}
		,{
			path: '/ziliaoleixing',
			name: '资料类型',
			component: ziliaoleixing
		}
		,{
			path: '/xuexiziliao',
			name: '学习资料',
			component: xuexiziliao
		}
		,{
			path: '/banji',
			name: '班级',
			component: banji
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/xuejixinxi',
			name: '学籍信息',
			component: xuejixinxi
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
