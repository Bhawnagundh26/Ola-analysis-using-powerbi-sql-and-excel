
# 🚖 OLA Ride Booking Analysis Dashboard (Power BI + SQL + Excel)

This project presents an interactive **Power BI dashboard** to analyze and visualize **OLA ride booking data** in **Bengaluru**. With over **40,000 records** of simulated bookings from July 2024, the dashboard reveals deep insights into vehicle performance, cancellations, customer behavior, ratings, and revenue trends—powered by **SQL**, **Excel**, and **Power BI**.

---

## 📁 Project Files

| File | Description |
|------|-------------|
| `OLA_Ride_Booking_Data.xlsx` | Dataset with 40,000+ rows of simulated OLA ride data |
| `PowerBI_OLA_Dashboard.pbix` | Power BI dashboard file |
| `SQL_Scripts.sql` | SQL queries used to extract business KPIs |
| `README.md` | Project overview and documentation |

---

## 📊 Key Dashboard Features

### 🎯 Filters / Slicers
- **Date** (July 2024, Daily)
- **Vehicle Type** (Auto, Mini, Prime Sedan, Prime SUV, etc.)
- **Booking Status** (Success, Cancelled by Customer, Cancelled by Driver, Incomplete)
- **Payment Method** (UPI, Cash, Card, Wallet)

### 📈 Visual Insights
- 📈 **Ride Volume Over Time**
- 📊 **Booking Status Breakdown**
- 🚗 **Top Vehicle Types by Distance**
- 💳 **Revenue by Payment Method**
- ❌ **Cancellation Reasons (Customer & Driver)**
- ⭐ **Customer vs Driver Ratings**
- 🧍 **Top 5 Customers by Booking Value**

---

## 💻 Tools & Technologies Used

- **SQL (MySQL)** – for data querying, joins, views, and aggregations
- **Microsoft Excel** – for data generation, preprocessing, and formatting
- **Power BI** – for data modeling, dashboard design, and interactive visualizations

---

## 📸 Dashboard Snapshots

### 🟢 Overview Page  
![Overview](./assets/Screenshot-Overall.png)

### 🚗 Vehicle Type Performance  
![Vehicle Type](./assets/Screenshot-VehicleType.png)

### 💳 Revenue Breakdown  
![Revenue](./assets/Screenshot-Revenue.png)

### ❌ Cancellation Reasons  
![Cancellation](./assets/Screenshot-Cancellation.png)

### ⭐ Ratings Comparison  
![Ratings](./assets/Screenshot-Ratings.png)

> 📝 *Place the above image files in a folder called `/assets` in your GitHub repo for them to render properly.*

---

## 📌 Key Insights

- ✅ **62%** of rides were successfully completed.
- ❌ Customer cancellations (under 7%) were mostly due to *“Driver not moving toward pickup.”*
- 🚗 **Prime Sedan** and **Prime SUV** performed best in distance and value.
- 💳 **Cash** and **UPI** were the most preferred payment methods.
- 📅 **Ride volume and revenue peaked** on weekends and match days.
- ⭐ Ratings consistently averaged **4.0+** across most vehicle types.

---

## 🧠 Sample SQL Queries

```sql
-- 1. Retrieve all successful bookings
SELECT * FROM bookings WHERE Booking_Status = 'Success';

-- 2. Average ride distance per vehicle type
SELECT Vehicle_Type, AVG(Ride_Distance) FROM bookings GROUP BY Vehicle_Type;

-- 3. Top 5 customers by ride count
SELECT Customer_ID, COUNT(*) FROM bookings GROUP BY Customer_ID ORDER BY COUNT(*) DESC LIMIT 5;
```
