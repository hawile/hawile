package top.hawile.service.impl;

import top.hawile.entity.LogLogin;
import org.springframework.stereotype.Service;
import top.hawile.entity.Log;
import top.hawile.entity.User;
import top.hawile.mapper.LogLoginMapper;
import top.hawile.mapper.LogMapper;
import top.hawile.service.LogService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Service
public class LogServiceImpl implements LogService {

	@Resource
	private HttpSession session;
	@Resource
	private HttpServletRequest request;
	@Resource
	private LogMapper logMapper;
	@Resource
	private LogLoginMapper logLoginMapper;

	@Override
	//获取当前登录用户的IP地址
	public String ip() {
		String remoteAddr = request.getRemoteAddr();
		String forwarded = request.getHeader("X-Forwarded-For");
		String realIp = request.getHeader("X-Real-IP");
		String ip;
		//获取客户端访问IP地址
		if (realIp == null) {
			if (forwarded == null) {
				ip = remoteAddr;
			} else {
				ip = remoteAddr + "/" + forwarded.split(",")[0];
			}
		} else {
			if (realIp.equals(forwarded)) {
				ip = realIp;
			} else {
				if (forwarded != null) {
					forwarded = forwarded.split(",")[0];
				}
				ip = realIp + "/" + forwarded;
			}
		}
		return ip;
	}

	@Override
	//获取特定月份系统日志列表
	public List<Log> logMonth(String month) {
		return logMapper.selectMonth(month);
	}

	@Override
	//获取特定月份登录日志列表
	public List<LogLogin> logLoginMonth(String month) {
		return logLoginMapper.selectMonth(month);
	}


	@Override
	//获取用户登录Log列表
	public List<LogLogin> loginList() {
		//获取当前session中的user对象
		User userTemp = (User) session.getAttribute("user");
		return logLoginMapper.selectUserName(userTemp.getUserName());
	}


	@Override
	//添加登录Log到数据库
	public Boolean loginLog(String userName, String name, String content, String state) {
		//获取当前系统时间
		Date date = new Date();
		//新建LogLogin对象
		LogLogin logLogin = new LogLogin();
		//设置LogLogin对象用户名
		logLogin.setUserName(userName);
		//设置LogLogin对象姓名
		logLogin.setName(name);
		//设置LogLogin对象内容
		logLogin.setContent(content);
		//设置LogLogin对象状态
		logLogin.setState(state);
		//设置LogLogin对象客户端IP地址
		logLogin.setIp(this.ip());
		//设置LogLogin对象时间
		logLogin.setCreateTime(new Timestamp(date.getTime()));
		//将LogLogin对象写入数据库
		int opState = logLoginMapper.insert(logLogin);
		//判断是否新增成功
		return opState == 1;
	}

	@Override
	//获取系统日志列表
	public List<Log> systemList() {
		//获取当前session中的user对象
		User userTemp = (User) session.getAttribute("user");
		//查询当前用户系统日志
		return logMapper.selectUserName(userTemp.getUserName());
	}

	@Override
	//写入操作记录到数据库
	public Boolean log(String content, String state) {
		//获取当前session中的user对象
		User userTemp = (User) session.getAttribute("user");
		//如果userTemp对象为null,直接结束该方法
		if (userTemp == null) {
			return false;
		}
		//获取当前系统时间
		Date date = new Date();
		//新建log对象
		Log log = new Log();
		//设置log对象权限组名
		log.setAuthName(userTemp.getAuthName());
		//设置log对象用户名
		log.setUserName(userTemp.getUserName());
		//设置log对象姓名
		log.setName(userTemp.getName());
		//设置log对象内容
		log.setContent(content);
		//设置log对象状态
		log.setState(state);
		//设置log对象时间
		log.setCreateTime(new Timestamp(date.getTime()));
		//新增log对象到数据库
		int opState = logMapper.insert(log);
		return opState == 1;
	}

}
