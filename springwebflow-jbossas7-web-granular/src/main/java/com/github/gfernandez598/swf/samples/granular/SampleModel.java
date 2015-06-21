package com.github.gfernandez598.swf.samples.granular;

/*
 * #%L
 * springwebflow-jbossas7-web-granular Webapp
 * %%
 * Copyright (C) 2015 gfernandez598
 * %%
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * #L%
 */

import java.io.Serializable;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class SampleModel implements Serializable {

	private static final long serialVersionUID = 4209498429551050030L;

	private static final Log logger = LogFactory
			.getLog(SampleModel.class);

	private String textProperty = null;

	public String getTextProperty() {
		return textProperty;
	}

	public void setTextProperty(String textProperty) {
		logger.info("setting textProperty {" + textProperty + "}");
		this.textProperty = textProperty;
	}
}
