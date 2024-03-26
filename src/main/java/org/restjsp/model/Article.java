package org.restjsp.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Article {

	private Long id;
	private String title;
	private String abstracts;
	private String content;
	
}