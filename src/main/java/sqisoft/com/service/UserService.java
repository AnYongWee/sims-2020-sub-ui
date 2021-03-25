package sqisoft.com.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import sqisoft.com.comm.CommConst;
import sqisoft.com.comm.CommHandlr;
import sqisoft.com.comm.SecurityUtil;
import sqisoft.com.mapper.UserMapper;
import sqisoft.com.model.UsrInfo;

@Service("userService")
public class UserService extends CommHandlr{
	
	 	@Resource(name="userMapper")
		private UserMapper userMapper;
	 	
}
