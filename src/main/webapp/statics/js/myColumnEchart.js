jQuery(function($) {
	loadInfoResult();
});

function loadInfoResult() {
	var mydom = $('#myinforesult');
	/*console.log(mydom)*/
	var myechart = echarts.init(mydom[0]);

	var myoption = {
		color:['#5FA9F2'],
		
		title:{
			text:'校区信息业务总览'
		},
		yAxis: {
			data: ['总信息量', '跟踪信息量', '有效信息量', '邀约成功量', '上门量', '缴费量']
		},
		xAxis: {
		},
		series: [{
			name:'本校区信息量',
			data: [120, 10, 150, 80, 70, 110],
			type: 'bar'
		}],
		tooltip: {
			trigger: 'item',
			formatter: "{a} <br/>{b} : {c}"
		},
	};
	myechart.setOption(myoption);
}