package kesun.miaodiyun.httpApiDemo;

import java.net.URLEncoder;


import kesun.miaodiyun.httpApiDemo.common.Config;
import kesun.miaodiyun.httpApiDemo.common.HttpUtil;

/**
 * 验证码通知短信接口
 * 
 * @ClassName: IndustrySMS
 * @Description: 验证码通知短信接口
 *
 */

public class IndustrySMS
{

	private static String operation = "/industrySMS/sendSMS";
	private static String accountSid = Config.ACCOUNT_SID;
	private static String to;
	private static String smsContent = "【礼意礼品】您的验证码为"+IndustrySMS.Random()+"，请于2分钟内正确输入，如非本人操作，请忽略此短信。";
	private static String yanzma;

	public static String dunx(String phone){
		to=phone;
		System.out.println("电话号码:"+phone);
		execute();
		return yanzma;
	}


	/**
	 * 验证码通知短信
	 */
	public static void execute()
	{

		String tmpSmsContent = null;
	    try{
	      tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
	    }catch(Exception e){
	      
	    }
	    //获取url
	    String url = Config.BASE_URL + operation;
	    String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
	        + HttpUtil.createCommonParam();

	    // 提交请求
	    String result = HttpUtil.post(url, body);
	}

    //生成随机验证码.
    public static String Random(){
        String result = "";
        while (result.length() < 6) {
            String str = String.valueOf((int)(Math.random()*10));
            if(result.indexOf(str) == -1){
                result += str;
            }
        }
        yanzma=result;
        return result;
    }


}
