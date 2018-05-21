package org.stuIntelEat.service.function;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.stuIntelEat.pojo.Authority;
import org.stuIntelEat.pojo.Function;
import org.stuIntelEat.dao.function.FunctionMapper;

@Service
public class FunctionServiceImpl implements FunctionService {
 
  @Resource
  private FunctionMapper Mapper;
  
  
  //注意要将用户输入的所有东西给获取
	@Override
	 public List<Function> getMainFunctionList(Authority authority)throws Exception{
		// TODO Auto-generated method stub
		return Mapper.getMainFunctionList(authority);
	}
	 

}
