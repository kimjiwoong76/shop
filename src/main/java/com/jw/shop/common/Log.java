package com.jw.shop.common;

import org.apache.log4j.Logger;

public class Log {
	private Logger log = Logger.getLogger(getClass());
	
	public void logMesaage() {
		log.debug(log);
		log.info(log);
		log.info(log);
		log.info(log);
		log.info(log);
	}
	
}
