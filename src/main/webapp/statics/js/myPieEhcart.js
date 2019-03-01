jQuery(function($) {
	loadInfoStack();
	
});

function loadInfoStack() {
	var mydom = $('#myinfotrack');
	/*console.log(mydom)*/
	var myechart01 = echarts.init(mydom[0], 'light');
	var myoption = {
		backgroundColor: '#2c343c',
		visualMap: {
			show: false,
			min: 80,
			max: 600,
			inRange: {
				colorLightness: [0, 1]
			}
		},
		legend: {
			orient: 'vertical',
			bottom:'bottom',
			data: ['未跟踪', '一次跟踪量', '两次跟踪量', '两次以上跟踪量'],
			textStyle: {
				color: 'rgba(255, 255, 255, 0.5)'
			}
		},
		tooltip: {
			trigger: 'item',
			formatter: "{a} <br/>{b} : {c} ({d}%)"
		},
		series: [{
			name: '访问来源',
			type: 'pie',
			radius: '55%',
			data: [{
					value: 235,
					name: '未跟踪'
				},
				{
					value: 274,
					name: '一次跟踪量'
				},
				{
					value: 310,
					name: '两次跟踪量'
				},
				{
					value: 335,
					name: '两次以上跟踪量'
				}
			],
			roseType: 'angle',
			label: {
				normal: {
					textStyle: {
						color: 'rgba(255, 255, 255, 0.5)'
					}
				}
			},
			labelLine: {
				normal: {
					lineStyle: {
						color: 'rgba(255, 255, 255, 0.3)'
					}
				}
			},
			itemStyle: {
				// 阴影的大小
				shadowBlur: 200,
				// 阴影水平方向上的偏移
				shadowOffsetX: 0,
				// 阴影垂直方向上的偏移
				shadowOffsetY: 0,
				// 阴影颜色
				shadowColor: 'rgba(0, 0, 0, 0.5)'
			},
			emphasis: {
				show: true,
				shadowBlur: 200,
				shadowColor: 'rgba(0, 0, 0, 0.5)'
			}
		}]
	};
	myechart01.setOption(myoption);

}
