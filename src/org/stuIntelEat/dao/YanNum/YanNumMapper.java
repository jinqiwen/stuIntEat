package org.stuIntelEat.dao.YanNum;
import java.util.Date;
import java.util.List;
import org.stuIntelEat.pojo.Admin;
import org.stuIntelEat.pojo.Yan;
import org.stuIntelEat.pojo.fCook;
public interface YanNumMapper {
   //存入验证码到数据库
   public int insertYan(Yan yan) throws Exception;
   //查询对应的数据库
   public Yan selectYan(String mobile) throws Exception;
   }


