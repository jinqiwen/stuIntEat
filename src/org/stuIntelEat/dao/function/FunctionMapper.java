package org.stuIntelEat.dao.function;

import java.util.List;

import org.stuIntelEat.pojo.Authority;
import org.stuIntelEat.pojo.Function;



public interface FunctionMapper {
	
   public List<Function> getMainFunctionList(Authority authority)throws Exception;
}
