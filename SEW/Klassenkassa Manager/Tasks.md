1. **Students API:**
   - [ ] *Get Students:* 
	   - `GET /students`
   - [ ] *Get Student by ID:* 
	   - `GET /students/{id}`
   - [ ] *Create Student:* 
	   - `POST /students`
   - [ ] *Update Student:* 
	   - `PATCH /students/{id}`
   - [ ] *Delete Student:* 
	   - `DELETE /students/{id}`
   - [ ] *Get Students in a Class:* 
	   - `GET /classes/{classId}/students`

2. **Transactions API:**
   - [x] *Get Transactions:* ✅ 2023-11-21
	   - `GET /transactions`
   - [x] *Get Transaction by ID:* ✅ 2023-11-22
	   - `GET /transactions/{id}`
   - [x] *Create Transaction:* ✅ 2023-11-22
	   - `POST /transactions`
   - [x] *Update Transaction:* ✅ 2023-11-22
	   - `PATCH /transactions/{id}`
   - [ ] *Delete Transaction:* 
	   - `DELETE /transactions/{id}`

3. **Classes API:**
   - [ ] *Get Classes:* 
	   - `GET /classes`
   - [ ] *Get Class by ID:* 
	   - `GET /classes/{id}`
   - [ ] *Create Class:* 
	   - `POST /classes`
   - [ ] *Update Class:* 
	   - `PATCH /classes/{id}`
   - [ ] *Delete Class:* 
	   - `DELETE /classes/{id}`

4. **Transaction Students API:**
   - [ ] *Get Transaction Student:* 
	   - `GET /paymentStatus/{transactionId}/{studentId}/`
   - [ ] *Update Transaction Student:*
	   - `PATCH /paymentStatus/{transactionId}/{studentId}/`
      - Request Payload: 
	      - `{ "isPaid": true }`
	
	- [ ] *Get Students for a Transaction:* 
	      - `GET /transactions/{transactionId}/students`
	- [ ] *Get Transactions for a Student:* 
	      - `GET /students/{studentId}/transactions`