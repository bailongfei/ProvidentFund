package com.blf.service;

import java.util.List;
import java.util.Map;

public interface bjqcbService {
 public int savebjqcbOrUpdateIper(Map<String,Object> map);
 public List<Map<String,Object>> querydwBJqc(Map<String,Object> map);
 public int queryCountBjqcbdwmx(Map<String,Object> map);
}
