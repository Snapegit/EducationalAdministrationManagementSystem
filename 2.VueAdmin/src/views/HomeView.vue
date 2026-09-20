<template>
	<div class="home_view">
		<div class="projectTitle">欢迎使用 {{projectName}}</div>
		<div class="count_list">
			<el-collapse-transition v-if="btnAuth('xuesheng','首页总数')">
				<el-card v-show="countTypeList.closexueshengCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								学生
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenxueshengCountType')" class="showIcons"
									:class="countTypeList.hiddenxueshengCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closexueshengCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenxueshengCountType">
							<div class="count_title">学生总数</div>
							<div class="count_num">{{xueshengCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('jiaoshi','首页总数')">
				<el-card v-show="countTypeList.closejiaoshiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								教师
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenjiaoshiCountType')" class="showIcons"
									:class="countTypeList.hiddenjiaoshiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closejiaoshiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenjiaoshiCountType">
							<div class="count_title">教师总数</div>
							<div class="count_num">{{jiaoshiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('xueshengchengji','首页总数')">
				<el-card v-show="countTypeList.closexueshengchengjiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								学生成绩
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenxueshengchengjiCountType')" class="showIcons"
									:class="countTypeList.hiddenxueshengchengjiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closexueshengchengjiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenxueshengchengjiCountType">
							<div class="count_title">学生成绩总数</div>
							<div class="count_num">{{xueshengchengjiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
		<div class="card_list">
			<el-collapse-transition v-if="btnAuth('xueshengchengji','首页统计')">
				<el-card v-show="cardTypeList.closexueshengchengjiChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								学生成绩
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenxueshengchengjiChartType1')" class="showIcons"
									:class="cardTypeList.hiddenxueshengchengjiChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closexueshengchengjiChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenxueshengchengjiChartType1">
							<div id="xueshengchengjichengjiEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
	</div>
</template>

<script setup>
	import {
		inject,
		nextTick,
		ref,
		getCurrentInstance
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context.$project.projectName
	const countTypeList = ref({
	})
	const getCountList=()=>{
		countTypeList.value.closexueshengCountType = true
		countTypeList.value.hiddenxueshengCountType = true
		if(btnAuth('xuesheng','首页总数')){
			getxueshengCount()
		}
		countTypeList.value.closejiaoshiCountType = true
		countTypeList.value.hiddenjiaoshiCountType = true
		if(btnAuth('jiaoshi','首页总数')){
			getjiaoshiCount()
		}
		countTypeList.value.closexueshengchengjiCountType = true
		countTypeList.value.hiddenxueshengchengjiCountType = true
		if(btnAuth('xueshengchengji','首页总数')){
			getxueshengchengjiCount()
		}
	}
	const xueshengCount = ref(0)
	const getxueshengCount = () => {
		context?.$http({
			url:'xuesheng/count',
			method: 'get'
		}).then(res=>{
			xueshengCount.value = res.data.data
		})
	}
	const jiaoshiCount = ref(0)
	const getjiaoshiCount = () => {
		context?.$http({
			url:'jiaoshi/count',
			method: 'get'
		}).then(res=>{
			jiaoshiCount.value = res.data.data
		})
	}
	const xueshengchengjiCount = ref(0)
	const getxueshengchengjiCount = () => {
		context?.$http({
			url:'xueshengchengji/count',
			method: 'get'
		}).then(res=>{
			xueshengchengjiCount.value = res.data.data
		})
	}
	const countTypeClick = (e) => {
		countTypeList.value[e] = !countTypeList.value[e]
	}
	const init=()=>{
		getCountList()
		getCardList()
	}
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	let echarts = inject("echarts")
	const cardTypeClick = (e) =>{
		cardTypeList.value[e] = !cardTypeList.value[e]
		setTimeout(()=>{
			getCardList()
		},1000)
	}
	const cardTypeList = ref({
		closexueshengchengjiChartType1: true,
		hiddenxueshengchengjiChartType1: true,
	})
	const getCardList = () => {
		if(btnAuth('xueshengchengji','首页统计')){
			getxueshengchengjiChart1()
		}
	}
	const getxueshengchengjiChart1 = () => {
		nextTick(()=>{
			var chengjiEchart1 = echarts.init(document.getElementById("xueshengchengjichengjiEchart1"),'macarons');
			context?.$http({
				url: `xueshengchengji/value/kechengmingcheng/chengji`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].kechengmingcheng);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].kechengmingcheng
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '分数统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				chengjiEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				chengjiEchart1.setOption(option);
				//根据窗口的大小变动图表
				chengjiEchart1.resize();
			})
		})
	}
	init()
</script>
<style lang="scss">
	.projectTitle{
		padding: 20px 0;
		margin: 20px 0 20px;
		font-weight: bold;
		display: flex;
		width: 100%;
		font-size: 24px;
		justify-content: center;
		align-items: center;
		height: auto;
	}

	.showIcons {
		transition: transform 0.3s;
		margin-right: 10px;
	}

	.showIcons1 {
		transform: rotate(-180deg);
	}
	
	// 总数盒子
	.count_list{
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 总数card
		.card_view {
			border: 1px solid #19a97b30;
			border-radius: 0;
			box-shadow: 0px 0px 0px rgba(0,0,0,.12);
			margin: 0 1% 20px;
			width: 48%;
			box-sizing: border-box;
			height: auto;
			// card头部
			.el-card__header {
				border: 0px solid #19a97b30;
				background: #19a97b10;
				width: 100%;
				border-width: 0 0 1px;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					height: 10px;
					// 标题
					.card_head_title {
						color: #666;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon {
							cursor: pointer;
							color: #aaa;
							font-size: 20px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.count_item{
					padding: 30px;
					text-align: center;
					// 总数标题
					.count_title{
						color: #333;
						font-size: 16px;
						line-height: 2;
					}
					// 总数数字
					.count_num{
						color: #c00;
						font-size: 30px;
						line-height: 2;
					}
				}
			}
		}
	}
	// 首页盒子
	.home_view {
		padding: 0px 20px;
		margin: 0;
		background: url(http://clfile.zggen.cn/20240203/09a98f4852104a599055d47953ef0a23.png) no-repeat center top / 100% 100% !important;
		width: 100%;
		min-height: 100vh;
		height: auto;
	}
	// 统计图盒子
	.card_list {
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
		// 统计图card
		.card_view {
			border: 1px solid #19a97b30;
			border-radius: 0;
			box-shadow: 0px 0px 0px rgba(0,0,0,.12);
			margin: 0 1% 30px;
			width: 100%;
			box-sizing: border-box;
			height: auto;
			// 头部
			.el-card__header {
				border: 0px solid #19a97b30;
				background: #19a97b10;
				width: 100%;
				border-width: 0 0 1px;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					height: 10px;
					// 标题
					.card_head_title {
						color: #f00;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon{
							cursor: pointer;
							color: #aaa;
							font-size: 20px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.card_item{
					padding: 30px;
					text-align: center;
				}
			}
		}
	}
</style>
