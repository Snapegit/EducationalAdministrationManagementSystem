<template>
	<div>
		<div class="home_box">
			<!-- 课程信息首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">课程信息展示</div>
				<div class="home_list_one">
					<div class="home_item1 animation_box" v-if="kechengxinxiHomeList.length>0" @click="detailClick('kechengxinxi',kechengxinxiHomeList[0].id)">
						<div class="home_img_box">
							<img class="home_img" v-if="isHttp(kechengxinxiHomeList[0].kechengfengmian)" :src="kechengxinxiHomeList[0].kechengfengmian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="kechengxinxiHomeList[0].kechengfengmian?$config.url + kechengxinxiHomeList[0].kechengfengmian.split(',')[0]:''" alt="">
						</div>
						<div class="home_content">
							<div class="home_title">
								{{kechengxinxiHomeList[0].kechengmingcheng}}
							</div>
							<div class="home_title">
								发布时间：{{kechengxinxiHomeList[0].fabushijian}}
							</div>
							<div class="home_title">
								教师姓名：{{kechengxinxiHomeList[0].jiaoshixingming}}
							</div>
						</div>
					</div>
					<div class="home_item2">
						<div class="item2_top animation_box" v-if="kechengxinxiHomeList.length>1" @click="detailClick('kechengxinxi',kechengxinxiHomeList[1].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(kechengxinxiHomeList[1].kechengfengmian)" :src="kechengxinxiHomeList[1].kechengfengmian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="kechengxinxiHomeList[1].kechengfengmian?$config.url + kechengxinxiHomeList[1].kechengfengmian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{kechengxinxiHomeList[1].kechengmingcheng}}
								</div>
								<div class="home_title">
									发布时间：{{kechengxinxiHomeList[1].fabushijian}}
								</div>
								<div class="home_title">
									教师姓名：{{kechengxinxiHomeList[1].jiaoshixingming}}
								</div>
							</div>
						</div>
						<div class="item2_bottom animation_box" v-if="kechengxinxiHomeList.length>2" @click="detailClick('kechengxinxi',kechengxinxiHomeList[2].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(kechengxinxiHomeList[2].kechengfengmian)" :src="kechengxinxiHomeList[2].kechengfengmian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="kechengxinxiHomeList[2].kechengfengmian?$config.url + kechengxinxiHomeList[2].kechengfengmian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{kechengxinxiHomeList[2].kechengmingcheng}}
								</div>
								<div class="home_title">
									发布时间：{{kechengxinxiHomeList[2].fabushijian}}
								</div>
								<div class="home_title">
									教师姓名：{{kechengxinxiHomeList[2].jiaoshixingming}}
								</div>
							</div>
						</div>
					</div>
					<div class="home_item3 animation_box" v-if="kechengxinxiHomeList.length>3" @click="detailClick('kechengxinxi',kechengxinxiHomeList[3].id)">
						<div class="home_img_box">
							<img class="home_img" v-if="isHttp(kechengxinxiHomeList[3].kechengfengmian)" :src="kechengxinxiHomeList[3].kechengfengmian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="kechengxinxiHomeList[3].kechengfengmian?$config.url + kechengxinxiHomeList[3].kechengfengmian.split(',')[0]:''" alt="">
						</div>
						<div class="home_content">
							<div class="home_title">
								{{kechengxinxiHomeList[3].kechengmingcheng}}
							</div>
							<div class="home_title">
								发布时间：{{kechengxinxiHomeList[3].fabushijian}}
							</div>
							<div class="home_title">
								教师姓名：{{kechengxinxiHomeList[3].jiaoshixingming}}
							</div>
						</div>
					</div>
					<div class="home_item4">
						<div class="item4_top animation_box" v-if="kechengxinxiHomeList.length>4" @click="detailClick('kechengxinxi',kechengxinxiHomeList[4].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(kechengxinxiHomeList[4].kechengfengmian)" :src="kechengxinxiHomeList[4].kechengfengmian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="kechengxinxiHomeList[4].kechengfengmian?$config.url + kechengxinxiHomeList[4].kechengfengmian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{kechengxinxiHomeList[4].kechengmingcheng}}
								</div>
								<div class="home_title">
									发布时间：{{kechengxinxiHomeList[4].fabushijian}}
								</div>
								<div class="home_title">
									教师姓名：{{kechengxinxiHomeList[4].jiaoshixingming}}
								</div>
							</div>
						</div>
						<div class="item4_bottom animation_box" v-if="kechengxinxiHomeList.length>5" @click="detailClick('kechengxinxi',kechengxinxiHomeList[5].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(kechengxinxiHomeList[5].kechengfengmian)" :src="kechengxinxiHomeList[5].kechengfengmian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="kechengxinxiHomeList[5].kechengfengmian?$config.url + kechengxinxiHomeList[5].kechengfengmian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{kechengxinxiHomeList[5].kechengmingcheng}}
								</div>
								<div class="home_title">
									发布时间：{{kechengxinxiHomeList[5].fabushijian}}
								</div>
								<div class="home_title">
									教师姓名：{{kechengxinxiHomeList[5].jiaoshixingming}}
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="homeList_more_view" @click="moreClick('kechengxinxi')">
					<span class="homeList_more_text">更多</span>
				</div>
			</div>
			<!-- 学习资料首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">学习资料展示</div>
				<div class="home_list_one">
					<div class="home_item1 animation_box" v-if="xuexiziliaoHomeList.length>0" @click="detailClick('xuexiziliao',xuexiziliaoHomeList[0].id)">
						<div class="home_img_box">
							<img class="home_img" v-if="isHttp(xuexiziliaoHomeList[0].tupian)" :src="xuexiziliaoHomeList[0].tupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="xuexiziliaoHomeList[0].tupian?$config.url + xuexiziliaoHomeList[0].tupian.split(',')[0]:''" alt="">
						</div>
						<div class="home_content">
							<div class="home_title">
								{{xuexiziliaoHomeList[0].ziliaomingcheng}}
							</div>
							<div class="home_title">
								{{xuexiziliaoHomeList[0].fabushijian}}
							</div>
						</div>
					</div>
					<div class="home_item2">
						<div class="item2_top animation_box" v-if="xuexiziliaoHomeList.length>1" @click="detailClick('xuexiziliao',xuexiziliaoHomeList[1].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(xuexiziliaoHomeList[1].tupian)" :src="xuexiziliaoHomeList[1].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="xuexiziliaoHomeList[1].tupian?$config.url + xuexiziliaoHomeList[1].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{xuexiziliaoHomeList[1].ziliaomingcheng}}
								</div>
								<div class="home_title">
									{{xuexiziliaoHomeList[1].fabushijian}}
								</div>
							</div>
						</div>
						<div class="item2_bottom animation_box" v-if="xuexiziliaoHomeList.length>2" @click="detailClick('xuexiziliao',xuexiziliaoHomeList[2].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(xuexiziliaoHomeList[2].tupian)" :src="xuexiziliaoHomeList[2].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="xuexiziliaoHomeList[2].tupian?$config.url + xuexiziliaoHomeList[2].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{xuexiziliaoHomeList[2].ziliaomingcheng}}
								</div>
								<div class="home_title">
									{{xuexiziliaoHomeList[2].fabushijian}}
								</div>
							</div>
						</div>
					</div>
					<div class="home_item3 animation_box" v-if="xuexiziliaoHomeList.length>3" @click="detailClick('xuexiziliao',xuexiziliaoHomeList[3].id)">
						<div class="home_img_box">
							<img class="home_img" v-if="isHttp(xuexiziliaoHomeList[3].tupian)" :src="xuexiziliaoHomeList[3].tupian.split(',')[0]" alt="">
							<img class="home_img" v-else :src="xuexiziliaoHomeList[3].tupian?$config.url + xuexiziliaoHomeList[3].tupian.split(',')[0]:''" alt="">
						</div>
						<div class="home_content">
							<div class="home_title">
								{{xuexiziliaoHomeList[3].ziliaomingcheng}}
							</div>
							<div class="home_title">
								{{xuexiziliaoHomeList[3].fabushijian}}
							</div>
						</div>
					</div>
					<div class="home_item4">
						<div class="item4_top animation_box" v-if="xuexiziliaoHomeList.length>4" @click="detailClick('xuexiziliao',xuexiziliaoHomeList[4].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(xuexiziliaoHomeList[4].tupian)" :src="xuexiziliaoHomeList[4].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="xuexiziliaoHomeList[4].tupian?$config.url + xuexiziliaoHomeList[4].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{xuexiziliaoHomeList[4].ziliaomingcheng}}
								</div>
								<div class="home_title">
									{{xuexiziliaoHomeList[4].fabushijian}}
								</div>
							</div>
						</div>
						<div class="item4_bottom animation_box" v-if="xuexiziliaoHomeList.length>5" @click="detailClick('xuexiziliao',xuexiziliaoHomeList[5].id)">
							<div class="home_img_box">
								<img class="home_img" v-if="isHttp(xuexiziliaoHomeList[5].tupian)" :src="xuexiziliaoHomeList[5].tupian.split(',')[0]" alt="">
								<img class="home_img" v-else :src="xuexiziliaoHomeList[5].tupian?$config.url + xuexiziliaoHomeList[5].tupian.split(',')[0]:''" alt="">
							</div>
							<div class="home_content">
								<div class="home_title">
									{{xuexiziliaoHomeList[5].ziliaomingcheng}}
								</div>
								<div class="home_title">
									{{xuexiziliaoHomeList[5].fabushijian}}
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="homeList_more_view" @click="moreClick('xuexiziliao')">
					<span class="homeList_more_text">更多</span>
				</div>
			</div>
			<!-- 公告信息 -->
			<div class="newsList_view">
				<div class="newsList_title">公告信息</div>
				<div class="news_list_one">
					<div class="news_item animation_box" v-for="(item,index) in newsList" :key="index" @click="newsDetailClick(item.id)">
						<div class='news_img_box'>
							<img class="news_img" v-if="isHttp(item.picture)" :src="item.picture.split(',')[0]" alt="">
							<img class="news_img" v-else :src="item.picture?$config.url + item.picture.split(',')[0]:''" alt="">
						</div>
						<div class="news_content">
							<div class="news_title">{{item.title}}</div>
							<div class="news_text">{{item.introduction}}</div>
							<div class="news_time">{{item.addtime.split(' ')[0]}}</div>
						</div>
					</div>
				</div>
				<div class="news_more_view" @click="moreClick('news')">
					<span class="news_more_text">更多</span>
				</div>
			</div>
		</div>
		<formModel ref="newsFormModelRef"></formModel>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance
	} from 'vue';
	import {
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	//课程信息首页展示
	const kechengxinxiHomeList = ref([])
	const getkechengxinxiHomeList = () => {
		context?.$http({
			url: 'kechengxinxi/list',
			method: 'get',
			params: {
				page: 1,
				limit: 3
			}
		}).then(res => {
			kechengxinxiHomeList.value = res.data.data.list
		})
	}
	//学习资料首页展示
	const xuexiziliaoHomeList = ref([])
	const getxuexiziliaoHomeList = () => {
		context?.$http({
			url: 'xuexiziliao/list',
			method: 'get',
			params: {
				page: 1,
				limit: 3
			}
		}).then(res => {
			xuexiziliaoHomeList.value = res.data.data.list
		})
	}
	//公告信息弹窗
	import formModel from './news/formModel'
	const newsFormModelRef = ref(null)
	//公告信息
	const newsList = ref([])
	const getNewsList = () => {
		context?.$http({
			url: 'news/list',
			method: 'get',
			params:{
				page:1,
				limit: 8
			}
		}).then(res=>{
			newsList.value = res.data.data.list
		})
	}
	const newsDetailClick = (id=null) => {
		if (id){
			newsFormModelRef.value.init(id)
		}
	}
	//判断图片链接是否带http
	const isHttp = (str) => {
        return str && str.substr(0,4)=='http';
    }
	//跳转详情
	const detailClick = (table,id) => {
		router.push(`/index/${table}Detail?id=${id}`)
	}
	const moreClick = (table) => {
		router.push(`/index/${table}List`)
	}
	const init = () => {
		//课程信息首页展示
		getkechengxinxiHomeList()
		//学习资料首页展示
		getxuexiziliaoHomeList()
		//公告信息
		getNewsList()
	}
	init()
</script>

<style lang="scss">
	.home_box {
		border-radius: 4px;
		padding: 16px;
		margin: 0 auto;
		background: #fff;
		display: flex;
		width: 64%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
	}
	
	// 推荐
	.recomList_view {
		padding: 10px 20px 20px;
		margin: 30px 0 20px;
		background: #f9f9f9;
		width: 100%;
		position: relative;
		order: 3;
		.recomList_title {
			margin: 10px 0 0;
			color: #333;
			font-weight: 500;
			width: 100%;
			font-size: 22px;
			text-align: left;
		}
		// list
		.recommend_list_four {
			padding: 0;
			margin: 20px 0 0;
			display: flex;
			width: 100%;
			justify-content: space-between;
			align-items: flex-start;
			flex-wrap: wrap;
			height: auto;
			
			.recommend_item:nth-of-type(2n - 1) {
				border: 1px solid #eee;
				padding: 10px;
				margin: 0;
				background: #fff;
				width: calc(100% / 4 - 40px);
				position: relative;
				
				.recommend_img_box {
					width: 100%;
					font-size: 0;
					height: 240px;
					.recommend_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.recommend_content {
					border: 0px solid #eee;
					box-shadow: 0 0px 0px rgba(0,0,0,.3);
					padding: 20px 0;
					overflow: hidden;
					display: flex;
					width: 100%;
					justify-content: center;
					align-items: flex-start;
					flex-wrap: wrap;
					transition: all .0s;
					height: auto;
					.recommend_title1 {
						margin: 0 0 10px;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_title2 {
						margin: 0 0 10px;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_title3 {
						margin: 0 0 10px;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_title4 {
						margin: 0 0 10px;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_title5 {
						margin: 0 0 10px;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_price {
						color: #f00;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_four_bottom {
						margin: 10px 0 0;
						display: flex;
						justify-content: center;
						align-items: center;
						.recommend_like {
							margin: 0 10px 0 0;
							color: #0266b5;
							display: flex;
							font-size: 14px;
							align-items: center;
							.like_icon {
								margin: 0 4px 0 0;
								color: inherit;
							}
							.like_num {
								color: inherit;
							}
						}
						.recommend_collect {
							margin: 0 10px 0 0;
							color: #ee7810;
							display: flex;
							font-size: 14px;
							align-items: center;
							.el-icon {
								margin: 0 4px 0 0;
								color: inherit;
							}
							.collect_num {
								color: inherit;
							}
						}
						.recommend_clickNum {
							margin: 0 10px 0 0;
							color: #4aac26;
							display: flex;
							font-size: 14px;
							align-items: center;
							.el-icon {
								margin: 0 4px 0 0;
								color: inherit;
							}
							.clickNum_num {
								color: inherit;
							}
						}
					}
				}
			}
			.recommend_item:nth-of-type(2n) {
				border: 1px solid #eee;
				padding: 10px;
				margin: 0;
				background: #fff;
				width: calc(100% / 4 - 40px);
				position: relative;
				
				.recommend_img_box {
					width: 100%;
					font-size: 0;
					height: 240px;
					.recommend_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.recommend_content {
					border: 0px solid #eee;
					box-shadow: 0 0px 0px rgba(0,0,0,.3);
					padding: 20px 0;
					display: flex;
					width: 100%;
					justify-content: center;
					align-items: flex-start;
					flex-wrap: wrap;
					transition: all 0s;
					height: auto;
					.recommend_title1 {
						margin: 0 0 10px;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_title2 {
						margin: 0 0 10px;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_title3 {
						margin: 0 0 10px;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_title4 {
						margin: 0 0 10px;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_title5 {
						margin: 0 0 10px;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_price {
						color: #f00;
						width: 100%;
						line-height: 1;
						text-align: center;
					}
					.recommend_four_bottom {
						margin: 10px 0 0;
						display: flex;
						justify-content: center;
						align-items: center;
						.recommend_like {
							margin: 0 10px 0 0;
							color: #0266b5;
							display: flex;
							font-size: 14px;
							align-items: center;
							.like_icon {
								margin: 0 4px 0 0;
								color: inherit;
							}
							.like_num {
								color: inherit;
							}
						}
						.recommend_collect {
							margin: 0 10px 0 0;
							color: #ee7810;
							display: flex;
							font-size: 14px;
							align-items: center;
							.el-icon {
								margin: 0 4px 0 0;
								color: inherit;
							}
							.collect_num {
								color: inherit;
							}
						}
						.recommend_clickNum {
							margin: 0 10px 0 0;
							color: #4aac26;
							display: flex;
							font-size: 14px;
							align-items: center;
							.el-icon {
								margin: 0 4px 0 0;
								color: inherit;
							}
							.clickNum_num {
								color: inherit;
							}
						}
					}
				}
			}
			.recommend_item:nth-of-type(2n - 1):hover {
				cursor: pointer;
				background: #27bacc;
				
				.recommend_img_box {
					.recommend_img {
					}
				}
				.recommend_content {
					color: #fff;
					.recommend_title1 {
						color: inherit;
					}
					.recommend_title2 {
						color: inherit;
					}
					.recommend_title3 {
						color: inherit;
					}
					.recommend_title4 {
						color: inherit;
					}
					.recommend_title5 {
						color: inherit;
					}
					.recommend_price {
						color: inherit;
					}
					.recommend_four_bottom {
						.recommend_like {
							color: inherit;
							.like_icon {
								color: inherit;
							}
							.like_num {
								color: inherit;
							}
						}
						.recommend_collect {
							color: inherit;
							.el-icon {
								color: inherit;
							}
							.collect_num {
								color: inherit;
							}
						}
						.recommend_clickNum {
							color: inherit;
							.el-icon {
								color: inherit;
							}
							.clickNum_num {
								color: inherit;
							}
						}
					}
				}
			}
			.recommend_item:nth-of-type(2n):hover {
				cursor: pointer;
				background: #27bacc;
				
				.recommend_img_box {
					.recommend_img {
					}
				}
				.recommend_content {
					color: #fff;
					.recommend_title1 {
						color: inherit;
					}
					.recommend_title2 {
						color: inherit;
					}
					.recommend_title3 {
						color: inherit;
					}
					.recommend_title4 {
						color: inherit;
					}
					.recommend_title5 {
						color: inherit;
					}
					.recommend_price {
						color: inherit;
					}
					.recommend_four_bottom {
						color: inherit;
						.recommend_like {
							color: inherit;
							.like_icon {
								color: inherit;
							}
							.like_num {
								color: inherit;
							}
						}
						.recommend_collect {
							color: inherit;
							.el-icon {
								color: inherit;
							}
							.collect_num {
								color: inherit;
							}
						}
						.recommend_clickNum {
							color: inherit;
							.el-icon {
								color: inherit;
							}
							.clickNum_num {
								color: inherit;
							}
						}
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.recommend_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0;
			margin: 20px 0 0;
			color: #fff;
			line-height: 34px;
			right: 0;
			border-radius: 0px;
			top: 0;
			background: none;
			width: 89px;
			position: absolute;
			text-align: center;
			.recommend_more_text {
				color: #999;
			}
		}
	}
	// 推荐
	// 新闻资讯
	.newsList_view {
		padding: 10px;
		margin: 20px 0 0;
		background: rgb(249, 249, 249);
		width: 32%;
		position: relative;
		order: 2;
		height: auto;

		.newsList_title {
			padding: 0 0 8px;
			margin: 0 auto 20px;
			color: #666;
			background: none;
			font-weight: 500;
			width: 100%;
			font-size: 22px;
			border-color: #999;
			border-width: 0 0 0px;
			border-style: dashed;
			text-align: left;
		}
		// list
		.news_list_one {
			padding: 20px 10px 10px;
			margin: 20px 0 0;
			background: #fff;
			display: flex;
			width: 100%;
			justify-content: space-between;
			flex-wrap: wrap;
			.news_item {
				cursor: pointer;
				margin: 0 0 20px 0;
				background: #fff;
				display: flex;
				width: calc(100% - 0px);
				align-items: center;
				.news_img_box {
					display: none;
					width: 100px;
					height: 100px;
					.news_img {
						border: 6px solid #ebe9dd;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.news_content {
					margin: 0 0 0 0px;
					display: flex;
					width: calc(100% - 80px);
					flex-wrap: wrap;
					.news_title {
						margin: 0 0 0px;
						overflow: hidden;
						white-space: nowrap;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						text-overflow: ellipsis;
						text-align: left;
						order: 2;
					}
					.news_text {
						padding: 0 10px 0 0;
						overflow: hidden;
						display: none;
						font-size: 14px;
						line-height: 24px;
						height: 48px;
						order: 3;
					}
					.news_time {
						color: #333;
						font-weight: 600;
						display: none;
						width: 100%;
						text-align: left;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.news_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0px 0;
			margin: 0;
			color: #999;
			line-height: 34px;
			right: 0px;
			border-radius: 0px;
			top: 6px;
			background: none;
			width: 89px;
			position: absolute;
			text-align: center;
			.news_more_text {
				color: #999;
			}
		}
	}
	// 新闻资讯
	// 首页展示
	.homeList_view {
		padding: 10px 0px;
		margin: 0px 0 0;
		background: none;
		width: 66%;
		position: relative;
		order: 1;

		.homeList_title {
			padding: 0 0 10px;
			margin: 0;
			color: #333;
			background: none;
			font-weight: 500;
			width: 100%;
			font-size: 22px;
			border-color: #eee;
			border-width: 0 0 1px;
			border-style: solid;
			text-align: left;
		}
		// list
		.home_list_one {
			padding: 0;
			margin: 20px auto;
			display: flex;
			width: 100%;
			align-items: flex-start;
			flex-wrap: wrap;
			.home_item1 {
				cursor: pointer;
				border: 1px solid #eee;
				padding: 12px 12px 4px;
				margin: 0 20px 20px 0;
				width: calc(34% - 20px);
				position: relative;
				.home_img_box {
					margin: 0 0 4px;
					width: 100%;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 220px;
					}
				}
				.home_content {
					color: #000;
					background: rgba(0,0,0,.0);
					width: 100%;
					line-height: 24px;
					text-align: center;
					.home_title {
						font-size: 14px;
					}
				}
			}
			.home_item2 {
				margin: 0;
				width: 66%;
				.item2_top {
					cursor: pointer;
					border: 1px solid #eee;
					padding: 12px 12px 4px;
					margin: 0px;
					width: calc(50% - 10px);
					position: relative;
					float: left;
					.home_img_box {
						margin: 0 0 4px;
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 220px;
						}
					}
					.home_content {
						color: #000;
						background: rgba(0,0,0,.0);
						width: 100%;
						line-height: 24px;
						text-align: center;
						.home_title {
							font-size: 14px;
						}
					}
				}
				.item2_bottom {
					cursor: pointer;
					border: 1px solid #eee;
					padding: 12px 12px 4px;
					width: calc(50% - 10px);
					position: relative;
					float: right;
					.home_img_box {
						margin: 0 0 4px;
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 220px;
						}
					}
					.home_content {
						color: #000;
						background: rgba(0,0,0,.0);
						width: 100%;
						line-height: 24px;
						text-align: center;
						.home_title {
							font-size: 14px;
						}
					}
				}
			}
			.home_item3 {
				cursor: pointer;
				border: 1px solid #ddd;
				padding: 12px 12px 0;
				margin: 0 20px 0 0;
				display: none;
				width: calc(34% - 20px);
				position: relative;
				.home_img_box {
					width: 100%;
					font-size: 0;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 220px;
					}
				}
				.home_content {
					color: #000;
					background: rgba(0,0,0,.0);
					width: 100%;
					line-height: 30px;
					text-align: center;
					.home_title {
						font-size: 14px;
					}
				}
			}
			.home_item4 {
				margin: 0 0 0 0;
				display: none;
				width: 66%;
				.item4_top {
					cursor: pointer;
					border: 1px solid #ddd;
					padding: 12px 12px 0;
					margin: 0;
					width: calc(50% - 10px);
					position: relative;
					float: left;
					.home_img_box {
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 220px;
						}
					}
					.home_content {
						color: #000;
						background: rgba(0,0,0,.0);
						width: 100%;
						line-height: 30px;
						text-align: center;
						.home_title {
							font-size: 14px;
						}
					}
				}
				.item4_bottom {
					cursor: pointer;
					border: 1px solid #ddd;
					padding: 12px 12px 0;
					width: calc(50% - 10px);
					position: relative;
					float: right;
					.home_img_box {
						width: 100%;
						.home_img {
							object-fit: cover;
							width: 100%;
							height: 220px;
						}
					}
					.home_content {
						color: #000;
						background: rgba(0,0,0,.0);
						width: 100%;
						line-height: 30px;
						text-align: center;
						.home_title {
							font-size: 14px;
						}
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.homeList_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			padding: 0;
			margin: 0;
			z-index: 9;
			color: #999;
			line-height: 24px;
			right: 0;
			border-radius: 0px;
			top: 16px;
			background: none;
			width: 89px;
			position: absolute;
			text-align: center;
			.homeList_more_text {
				color: #999;
			}
		}
	}
	// 首页展示
</style>