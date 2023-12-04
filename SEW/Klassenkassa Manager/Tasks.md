	1. **Students API:**
   - [x] *Get Students:* ✅ 2023-11-29
	   - `GET /students`
   - [x] *Get Student by ID:* ✅ 2023-11-29
	   - `GET /students/{id}`
   - [x] *Create Student:* ✅ 2023-11-30
	   - `POST /students`
   - [x] *Update Student:* ✅ 2023-11-30
	   - `PATCH /students/{id}`
   - [x] *Delete Student:* ✅ 2023-11-30
	   - `DELETE /students/{id}`

2. **Transactions API:**
   - [x] *Get Transactions:* ✅ 2023-11-21
	   - `GET /transactions`
   - [x] *Get Transaction by ID:* ✅ 2023-11-22
	   - `GET /transactions/{id}`
   - [x] *Create Transaction:* ✅ 2023-11-22
	   - `POST /transactions`
   - [x] *Update Transaction:* ✅ 2023-11-22
	   - `PATCH /transactions/{id}`
   - [x] *Delete Transaction:* ✅ 2023-11-29
	   - `DELETE /transactions/{id}`

3. **Classes API:**
   - [x] *Get Classes:* ✅ 2023-11-30
	   - `GET /classes`
   - [x] *Get Class by ID:* ✅ 2023-11-30
	   - `GET /classes/{id}`
   - [x] *Create Class:* ✅ 2023-11-30
	   - `POST /classes`
   - [x] *Update Class:* ✅ 2023-11-30
	   - `PATCH /classes/{id}`
   - [x] *Delete Class:* ✅ 2023-11-30
	   - `DELETE /classes/{id}`
   - [x] *Get Students in a Class:* ✅ 2023-11-30
	   - `GET /classes/{classId}/students`


4. **Payments API:**
   - [x] *Get Payments:* ✅ 2023-12-01
	   - `GET /paymentStatus/{transactionId}/{studentId}/`
	- [x] *Get Students for a Transaction:* ✅ 2023-12-01
	      - `GET /transactions/{transactionId}/students`
	- [x] *Get Transactions for a Student:* ✅ 2023-12-01
	      - `GET /students/{studentId}/transactions`
   - [x] *Create Payments* ✅ 2023-12-01
		-  `POST /paymentStatus/{transactionId}/{studentId}`
		- default `isPaid = false`
   - [x] *Update Payments:* ✅ 2023-12-01
	   - `PATCH /paymentStatus/{transactionId}/{studentId}/`
      - Request Payload:  
	      - `{ "isPaid": true }`

