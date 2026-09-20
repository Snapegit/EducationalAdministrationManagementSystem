const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '课程信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'课程信息',
							url:'/index/kechengxinxiList'
						},
					]
				},
				{
					name: '学习资料管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'学习资料',
							url:'/index/xuexiziliaoList'
						},
					]
				},
				{
					name: '新闻资讯管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'公告信息',
							url:'/index/newsList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "教务管理系统"
        } 
    }
}
export default config
