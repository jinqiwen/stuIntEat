package org.stuIntelEat.controller;

import java.util.HashSet;
import java.util.Random;
import java.util.Set;

/**
 * 实时交易推送数据工具类
 * @author arry 
 * @version v1.0
 * 
 */
public class DataCityUtil {

	
	public static String[] worldCity = { "[{name:'上海',value:15}, {name:'重庆'}]",
		"[{name:'东莞',value:55}, {name:'重庆'}]",
		"[{name:'东营',value:43}, {name:'重庆'}]",
		"[{name:'中山',value:27}, {name:'重庆'}]",
		"[{name:'临汾',value:70}, {name:'重庆'}]",
		"[{name:'临沂',value:50}, {name:'重庆'}]",
		"[{name:'丹东',value:79}, {name:'重庆'}]",
		"[{name:'丽水',value:11}, {name:'重庆'}]",
		"[{name:'乌鲁木齐',value:45}, {name:'重庆'}]",
		"[{name:'佛山',value:67}, {name:'重庆'}]",
		"[{name:'保定',value:36}, {name:'重庆'}]",
		"[{name:'兰州',value:5}, {name:'重庆'}]",
		"[{name:'包头',value:54}, {name:'重庆'}]",
		"[{name:'重庆',value:19}, {name:'重庆'}]",
		"[{name:'北海',value:45}, {name:'重庆'}]",
		"[{name:'南京',value:21}, {name:'重庆'}]",
		"[{name:'南宁',value:85}, {name:'重庆'}]",
		"[{name:'南昌',value:93}, {name:'重庆'}]",
		"[{name:'南通',value:42}, {name:'重庆'}]",
		"[{name:'厦门',value:73}, {name:'重庆'}]",
		"[{name:'台州',value:78}, {name:'重庆'}]",
		"[{name:'合肥',value:29}, {name:'重庆'}]",
		"[{name:'呼和浩特',value:30}, {name:'重庆'}]",
		"[{name:'咸阳',value:64}, {name:'重庆'}]",
		"[{name:'哈尔滨',value:74}, {name:'重庆'}]",
		"[{name:'唐山',value:50}, {name:'重庆'}]",
		"[{name:'嘉兴',value:35}, {name:'重庆'}]",
		"[{name:'大同',value:2}, {name:'重庆'}]",
		"[{name:'大连',value:7}, {name:'重庆'}]",
		"[{name:'天津',value:55}, {name:'重庆'}]",
		"[{name:'太原',value:100}, {name:'重庆'}]",
		"[{name:'威海',value:47}, {name:'重庆'}]",
		"[{name:'宁波',value:11}, {name:'重庆'}]",
		"[{name:'宝鸡',value:4}, {name:'重庆'}]",
		"[{name:'宿迁',value:64}, {name:'重庆'}]",
		"[{name:'常州',value:22}, {name:'重庆'}]",
		"[{name:'广州',value:0}, {name:'重庆'}]",
		"[{name:'廊坊',value:42}, {name:'重庆'}]",
		"[{name:'延安',value:62}, {name:'重庆'}]",
		"[{name:'张家口',value:84}, {name:'重庆'}]",
		"[{name:'徐州',value:100}, {name:'重庆'}]",
		"[{name:'德州',value:34}, {name:'重庆'}]",
		"[{name:'惠州',value:58}, {name:'重庆'}]",
		"[{name:'成都',value:19}, {name:'重庆'}]",
		"[{name:'扬州',value:53}, {name:'重庆'}]",
		"[{name:'承德',value:56}, {name:'重庆'}]",
		"[{name:'拉萨',value:54}, {name:'重庆'}]",
		"[{name:'无锡',value:36}, {name:'重庆'}]",
		"[{name:'日照',value:27}, {name:'重庆'}]",
		"[{name:'昆明',value:90}, {name:'重庆'}]",
		"[{name:'杭州',value:90}, {name:'重庆'}]",
		"[{name:'枣庄',value:91}, {name:'重庆'}]",
		"[{name:'柳州',value:42}, {name:'重庆'}]",
		"[{name:'株洲',value:74}, {name:'重庆'}]",
		"[{name:'武汉',value:51}, {name:'重庆'}]",
		"[{name:'汕头',value:37}, {name:'重庆'}]",
		"[{name:'江门',value:19}, {name:'重庆'}]",
		"[{name:'沈阳',value:78}, {name:'重庆'}]",
		"[{name:'沧州',value:83}, {name:'重庆'}]",
		"[{name:'河源',value:27}, {name:'重庆'}]",
		"[{name:'泉州',value:68}, {name:'重庆'}]",
		"[{name:'泰安',value:23}, {name:'重庆'}]",
		"[{name:'泰州',value:39}, {name:'重庆'}]",
		"[{name:'济南',value:1}, {name:'重庆'}]",
		"[{name:'济宁',value:96}, {name:'重庆'}]",
		"[{name:'海口',value:4}, {name:'重庆'}]",
		"[{name:'淄博',value:20}, {name:'重庆'}]",
		"[{name:'淮安',value:18}, {name:'重庆'}]",
		"[{name:'深圳',value:24}, {name:'重庆'}]",
		"[{name:'清远',value:78}, {name:'重庆'}]",
		"[{name:'温州',value:14}, {name:'重庆'}]",
		"[{name:'渭南',value:74}, {name:'重庆'}]",
		"[{name:'湖州',value:39}, {name:'重庆'}]",
		"[{name:'湘潭',value:7}, {name:'重庆'}]",
		"[{name:'滨州',value:100}, {name:'重庆'}]",
		"[{name:'潍坊',value:75}, {name:'重庆'}]",
		"[{name:'烟台',value:30}, {name:'重庆'}]",
		"[{name:'玉溪',value:65}, {name:'重庆'}]",
		"[{name:'珠海',value:5}, {name:'重庆'}]",
		"[{name:'盐城',value:39}, {name:'重庆'}]",
		"[{name:'盘锦',value:50}, {name:'重庆'}]",
		"[{name:'石家庄',value:0}, {name:'重庆'}]",
		"[{name:'福州',value:11}, {name:'重庆'}]",
		"[{name:'秦皇岛',value:86}, {name:'重庆'}]",
		"[{name:'绍兴',value:24}, {name:'重庆'}]",
		"[{name:'聊城',value:41}, {name:'重庆'}]",
		"[{name:'肇庆',value:36}, {name:'重庆'}]",
		"[{name:'舟山',value:46}, {name:'重庆'}]",
		"[{name:'苏州',value:72}, {name:'重庆'}]",
		"[{name:'莱芜',value:43}, {name:'重庆'}]",
		"[{name:'菏泽',value:34}, {name:'重庆'}]",
		"[{name:'营口',value:36}, {name:'重庆'}]",
		"[{name:'葫芦岛',value:12}, {name:'重庆'}]",
		"[{name:'衡水',value:88}, {name:'重庆'}]",
		"[{name:'衢州',value:13}, {name:'重庆'}]",
		"[{name:'西宁',value:62}, {name:'重庆'}]",
		"[{name:'西安',value:22}, {name:'重庆'}]",
		"[{name:'贵阳',value:88}, {name:'重庆'}]",
		"[{name:'连云港',value:86}, {name:'重庆'}]",
		"[{name:'邢台',value:80}, {name:'重庆'}]",
		"[{name:'邯郸',value:73}, {name:'重庆'}]",
		"[{name:'郑州',value:0}, {name:'重庆'}]",
		"[{name:'鄂尔多斯',value:95}, {name:'重庆'}]",
		"[{name:'重庆',value:84}, {name:'重庆'}]",
		"[{name:'金华',value:62}, {name:'重庆'}]",
		"[{name:'铜川',value:25}, {name:'重庆'}]",
		"[{name:'银川',value:68}, {name:'重庆'}]",
		"[{name:'镇江',value:69}, {name:'重庆'}]",
		"[{name:'长春',value:7}, {name:'重庆'}]",
		"[{name:'长沙',value:61}, {name:'重庆'}]",
		"[{name:'长治',value:34}, {name:'重庆'}]",
		"[{name:'阳泉',value:35}, {name:'重庆'}]",
		"[{name:'青岛',value:8}, {name:'重庆'}]",
		"[{name:'韶关',value:66}, {name:'重庆'}]" };

	
	/**
	 * 实时返回WEB端数据 
	 * @author arry
	 * @return String 交易信息
	 * 
	 */
	public static String getIMsg(){
		// 模拟随机用户
		Random random = new Random(System.currentTimeMillis());
		int size = 0;
		while(size == 0){
			size = random.nextInt(20);
		}
		
		Set<Integer> set = new HashSet<Integer>();
		for(int i = 0; i < size; i++){
			set.add(random.nextInt(115));
		}
		
		// 存储实时交易数据容器 [{name:'上海',value:15}, {name:'重庆'}]
		StringBuffer buffer = new StringBuffer();
		buffer.append("[");
		for(int i = 0; i < set.size(); i++){
			if(i != set.size()-1){
				buffer.append(worldCity[i]+",");
			} else {
				buffer.append(worldCity[i]);
			}
		}
		
		System.out.println(set.size());
		
		buffer.append("]");
		
		return buffer.toString();
		
	}
	
	
	// java入口
	public static void main(String[] args){
		
		System.out.println("亲爱的同学们，大家晚上好，我爱你们  ！");
		
	}
	
	
	
}
