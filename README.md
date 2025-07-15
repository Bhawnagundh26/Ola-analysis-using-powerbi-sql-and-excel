
# 🚖 OLA Ride Booking Analysis Dashboard (Power BI + SQL + Excel)


This **Power BI dashboard** delivers a comprehensive analysis of OLA ride‑booking performance in **Bengaluru**.  
Built on **40 K+ simulated rides** from **July 2024**, it uncovers trends in bookings, revenue, cancellations, and user ratings—powered by **SQL** for data extraction, **Excel** for preparation, and **Power BI** for interactive storytelling.

> 📈 The dashboard highlights KPIs, patterns, and anomalies across multiple ride dimensions such as vehicle type, payment method, customer segment, and time of day.

---

## 📦 Dataset Attributes

The dataset captures every step of a ride, from request to completion (or cancellation):

- `Booking_ID` (10‑digit, prefixed “CNR”)
- `Date`, `Time`
- `Vehicle_Type` (Auto, Mini, Prime Sedan, Prime SUV, Bike, eBike, Prime Plus)
- `Pickup_Location`, `Drop_Location` (50 popular Bengaluru areas)
- `Booking_Status` (Success, Cancelled by Customer, Cancelled by Driver, Incomplete)
- `Cancelled_Rides_by_Customer`, `Reason_for_Customer_Cancel`
- `Cancelled_Rides_by_Driver`, `Reason_for_Driver_Cancel`
- `Incomplete_Rides`, `Incomplete_Rides_Reason`
- `Booking_Value` (₹)
- `Payment_Method` (Cash, UPI, Card, Wallet)
- `Ride_Distance` (km)
- `V_TAT` & `C_TAT` (Avg. driver & customer arrival times)
- `Driver_Ratings`, `Customer_Rating`

---

## 📊 Metrics Used in Analysis

- **Ride Volume** – daily trend, weekend & match‑day spikes  
- **Booking Status Mix** – success vs cancellations vs incomplete  
- **Revenue & Booking Value** – by payment method & day of week  
- **Vehicle Performance** – top vehicle types by distance & value  
- **Cancellation Reasons** – breakdown for customers and drivers  
- **Customer & Driver Ratings** – distribution and correlation  
- **Top Customers** – highest spenders & ride counts  

---



## 🧠 Key Insights

- ✅ **62 %** of rides were successfully completed.  
- ❌ **< 7 %** cancellations by customers—top reason: “Driver not moving toward pickup.”  
- ❌ **< 18 %** cancellations by drivers—mostly personal/car‑related issues.  
- 🚗 **Prime Sedan** & **Prime SUV** generated the highest revenue and average distance.  
- 💳 **Cash** and **UPI** accounted for **70 %+** of total payments.  
- 📅 **Weekends & match days** saw clear surges in bookings and booking value.  
- ⭐ Average ratings remained **4.0 or higher** across all vehicle segments.

---

## 💻 Tools & Technologies

| Tool | Purpose |
|------|---------|
| **SQL (MySQL)** | Data extraction, KPI calculation |
| **Microsoft Excel** | Data generation, cleaning, preprocessing |
| **Power BI** | Data modelling, DAX, interactive dashboards |

---

## 📁 Project Files

| File | Description |
|------|-------------|
| `OLA_Ride_Booking_Data.xlsx` | 40 K‑row cleaned dataset |
| `PowerBI_OLA_Dashboard.pbix` | Fully interactive dashboard |
| `SQL_Scripts.sql` | All queries & views used in analysis |
| `README.md` | You’re reading it 😄 |

---

## 🔗 Sample SQL Queries

```sql
-- Retrieve all successful bookings
SELECT *
FROM bookings
WHERE Booking_Status = 'Success';

-- Average ride distance per vehicle type
SELECT Vehicle_Type,
       AVG(Ride_Distance) AS avg_km
FROM bookings
GROUP BY Vehicle_Type;

-- Top 5 customers by total booking value
SELECT Customer_ID,
       SUM(Booking_Value) AS total_spend
FROM bookings
GROUP BY Customer_ID
ORDER BY total_spend DESC
LIMIT 5;
```

