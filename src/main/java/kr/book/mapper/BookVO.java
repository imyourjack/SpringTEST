package kr.book.mapper;

import lombok.Data;

@Data
public class BookVO {
	private int num;
	private String title;
	private String author;
	private String company;
	private String isbn;
	private int count;
}
