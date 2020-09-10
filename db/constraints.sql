/** 회원반려동물 **/
alter table tbl_pet add constraint pet_breed_seq foreign key(breed_seq) references tbl_breed(seq);
alter table tbl_pet add constraint pet_member_seq foreign key(member_seq) references tbl_member(seq);

/** 장바구니 **/
alter table tbl_cart add constraint cart_item_seq foreign key(item_seq) references tbl_item(seq);
alter table tbl_cart add constraint cart_member_seq foreign key(member_seq) references tbl_member(seq);

/** 주문내역 **/
alter table tbl_order add constraint order_member_seq foreign key(member_seq) references tbl_member(seq);

/** 스티커적립 **/
alter table tbl_sticker_add add constraint sticker_add_order_seq foreign key(order_seq) references tbl_order(seq);

/** 스티커차감 **/
alter table tbl_sticker_usage add constraint sticker_usage_sticker_order foreign key(sticker_order_seq) references tbl_sticker_order(seq);

/** 스티커주문내역 **/
alter table tbl_sticker_order add constraint sticker_order_member_seq foreign key(member_seq) references tbl_member(seq);

/** 주문상품내역 **/
alter table tbl_order_item add constraint order_item_order_seq foreign key(order_seq) references tbl_order(seq);
alter table tbl_order_item add constraint order_item_item_seq foreign key(item_seq) references tbl_item(seq);

/** 상품후기댓글 **/
alter table tbl_review_comment add constraint review_comment_review_seq foreign key(review_seq) references tbl_review(seq);
alter table tbl_review_comment add constraint review_comment_member_seq foreign key(member_seq) references tbl_member(seq);

/** 스티커상품주문내역 **/
alter table tbl_sticker_order_item add constraint sticker_order_item_item_seq foreign key(item_seq) references tbl_item(seq);
alter table tbl_sticker_order_item add constraint sticker_order_item_sticker foreign key(sticker_order_seq) references tbl_sticker_order(seq);

/** 스티커상품 **/
alter table tbl_sticker_item add constraint sticker_item_seq foreign key(seq) references tbl_item(seq);




