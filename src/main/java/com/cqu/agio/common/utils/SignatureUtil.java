package com.cqu.agio.common.utils;

import org.apache.log4j.Logger;

import java.security.Key;
import java.util.Map;
import java.util.TreeMap;

public class SignatureUtil {
	private static final Logger logger = Logger.getLogger(FileUtil.class);
	public static String sign(Map<String, Object> paramMap, Key key) {
		if (paramMap == null || paramMap.size() == 0 || key == null) {
			return null;
		}
		return sign_(paramMap, key);
	}
	
	private static String sign_(Map<String, Object> paramMap, Key key) {
		if (paramMap == null || paramMap.size() == 0 || key == null) {
			return null;
		}
		
		String paramStr = getParamString(paramMap);
		logger.debug(paramStr);
		String sign = EncryptUtil.getSHA(paramStr);
		String cipherText = RsaUtil.encrypt(sign, key);
		
		return cipherText;
	}
	
	public static String getParamString(Map<String, Object> paramMap) {
		if (paramMap == null || paramMap.size() == 0) {
			return null;
		}
		
		return getParamString_(paramMap);
	}
	
    private static String getParamString_(Map<String, Object> paramMap) {
    	if (paramMap == null || paramMap.size() == 0) {
			return null;
		}
		
		TreeMap<String, Object> paramTreeMap = new TreeMap<String, Object>();
		for (String keyStr : paramMap.keySet()) {			
			paramTreeMap.put(keyStr, paramMap.get(keyStr));
		}
		
		StringBuffer sb = new StringBuffer();
		for (String keyStr : paramTreeMap.keySet()) {
			if ("sign".equals(keyStr)) {
				continue;
			}
			sb.append(paramTreeMap.get(keyStr) + "|");
		}		
		
		String paramStr = sb.substring(0, sb.length() - 1);
		logger.debug(paramStr);
		
		return paramStr;
    }
}
