package org.restjsp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Codes {
	private Long id;
	private String packageName;
	private String file;
}
