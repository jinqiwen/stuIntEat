package org.stuIntelEat.service.function;

import java.util.List;

import org.stuIntelEat.pojo.Authority;
import org.stuIntelEat.pojo.Function;




public interface FunctionService {
	 public List<Function> getMainFunctionList(Authority authority)throws Exception;
	
}
