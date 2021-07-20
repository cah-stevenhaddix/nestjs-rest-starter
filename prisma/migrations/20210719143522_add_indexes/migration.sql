-- CreateIndex
CREATE INDEX "Card.customer_id_index" ON "Card"("customer_id");

-- CreateIndex
CREATE INDEX "Card.id_customer_id_index" ON "Card"("id", "customer_id");

-- CreateIndex
CREATE INDEX "Customer.program_id_index" ON "Customer"("program_id");

-- CreateIndex
CREATE INDEX "Payment.customer_id_index" ON "Payment"("customer_id");

-- CreateIndex
CREATE INDEX "Payment.id_customer_id_index" ON "Payment"("id", "customer_id");
