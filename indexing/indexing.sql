CREATE INDEX order_date_time_idx 
ON order USING btree (order_date_time);

CREATE INDEX buyer_id_idx 
ON order USING btree (buyer_id);
