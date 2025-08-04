#  E-commerce Database Schema & ER Diagram

# Tools Used

- pgAdmin
- ER Diagram (Hand-drawn style)

---

# Tables Included

- Customer
- Product
- Category
- Product_Category_Map
- Order
- OrderItem
- ProductReview
- Shipment
- ShipmentItem
- Warehouse

---

# Relationships

- Customer → Order: One-to-Many
- Order → OrderItem: One-to-Many
- Product → OrderItem: One-to-Many
- Customer → ProductReview: One-to-Many
- Product → ProductReview: One-to-Many
- Order → Shipment: One-to-Many
- Shipment → ShipmentItem: One-to-Many
- OrderItem → ShipmentItem: One-to-One
- Product → Product_Category_Map: One-to-Many
- Category → Product_Category_Map: One-to-Many

---

# Outcome

A complete SQL-based schema for a basic e-commerce system with proper normalization, primary & foreign key constraints, and visual representation of the data model.

