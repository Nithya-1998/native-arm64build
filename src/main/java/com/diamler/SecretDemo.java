package com.diamler;

import io.quarkus.runtime.Quarkus;
import io.quarkus.runtime.annotations.QuarkusMain;

/**
 * CDiS main class
 *
 * @author Marian Gheorghe Ungureanu
 */
@QuarkusMain
public class SecretDemo {

	public static void main(String[] args) {
		Quarkus.run(StartupApp.class, args);
	}


}
