package sqisoft.com.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import sqisoft.com.comm.CommHandlr;
import sqisoft.com.mapper.MainMapper;

@Service("mainService")
public class MainService extends CommHandlr{
	@Resource(name="mainMapper")
	private MainMapper mainMapper;	
}
