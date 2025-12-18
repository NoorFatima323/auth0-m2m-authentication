# Auth0 Machine-to-Machine Authentication

This project demonstrates **Machine-to-Machine (M2M) authentication** using **Auth0** and the **OAuth 2.0 Client Credentials Grant**.  
It shows how a backend service can securely obtain an access token and use it to access a protected API **without any user involvement**.

---

## 📌 Overview

In a Machine-to-Machine application, systems communicate directly with each other.  
This project uses Auth0 to:

- Request an access token from the Auth0 token endpoint using client credentials
- Use the received token as a Bearer token to access a protected API endpoint

This approach is commonly used for **server-to-server communication**.

---

## 🔐 Authentication Flow Used

- OAuth 2.0 Client Credentials Grant
- No user login required
- Secure API-to-API communication

---

## 🛠 Technologies Used

- Auth0
- OAuth 2.0
- Client Credentials Grant
- REST APIs
- cURL
- JSON / HTTP

---

## 🚀 Get an Access Token

```bash
curl --request POST \
  --url https://YOUR_DOMAIN/oauth/token \
  --header 'content-type: application/json' \
  --data '{
    "client_id": "YOUR_CLIENT_ID",
    "client_secret": "YOUR_CLIENT_SECRET",
    "audience": "YOUR_API_IDENTIFIER",
    "grant_type": "client_credentials"
  }'

🔹 This request returns an access token if the credentials are valid.

🔑 Access a Protected API
curl --request GET \
  --url https://YOUR_DOMAIN/api/v2/YOUR_ENDPOINT \
  --header 'authorization: Bearer YOUR_ACCESS_TOKEN'

🔹 The API validates the token before granting access.

⚠️ Security Note

Sensitive credentials such as client_secret are not included in this repository.
Always store secrets securely using environment variables or secret managers.

📘 What I Learned

1-How Machine-to-Machine authentication works
2-How to use Auth0 with OAuth 2.0 Client Credentials flow
3-How access tokens secure backend-to-backend communication

🏁 Conclusion

This project provides a simple and clear example of implementing secure Machine-to-Machine authentication using Auth0, which is essential for modern backend services and API security.
