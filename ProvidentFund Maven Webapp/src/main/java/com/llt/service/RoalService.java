package com.llt.service;

import java.util.List;
import java.util.Map;

public interface RoalService {
List<Map<String, Object>> queryRoal(String account);
List<Map<String, Object>> queryMemu(String account);
}
