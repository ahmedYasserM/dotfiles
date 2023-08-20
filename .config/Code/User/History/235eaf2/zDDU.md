# TLS

- `symmetric cryptography` als known as `public-key cryptography`

- TLS: Transfer Layer Protocol

- `TLS` has superseded `SSL`

- A message `encrypted` with a `public` key can only be `decrypted` with a `private` key.

- A message `signed` with a `private` key can only be `verified` with a `public` key

- `SSL` - Secure Seckets Layer

- `TLS` - Transport Layer Security

- `confidentiality` - preventing any one from reading the data

- `integrity` - preventing any one from modifing the data (and if he modified it I should knwo that)

- `authentication` - guranteeing the identity who sent the data

- `ssl` and `tls` prvoide `anti-replay protection`

- `anti-replay`:

  1. provided with built-in sequence numbers

  2. built in to `integrity` + `authentication` mechanism

- `non-repudiation`:

  1. the sender can not later deny sending a message

  2. byprodcut of `integrity` and `authentication`

- SSL/TLS echosystem involves three key players:

  1. client:

     - entity initiating the TLS handshake

     - optionally authenticated (rare)

  2. server:

     - entity receiving the TLS handshake

     - always authenticated - provides a certificate to prove his identity

  3. certificate authority (CA):

     - is the governing entity that issues certificates

     - trusted by both the client and the server

     - provides `trust anchor` - if we trust CA, then we trust what the CA trusts

- `TLS` starts with a `TLS handshake`

- The first step of `TLS handshake` use `public key cryptography`

- In `public key cryptography` there are two elements:

  1. `Public key` - `freely` distrubuted by the server

  2. `Private key` - `only` known to the server


---

## Hashing

- `message` -> `hashing function` -> `message digest`

- we use hashing to compare the message digests fo two messages to see if they are the same or not

- real world hashing algorithms must satisfy four requirements:
  1. infeasible to produce a given digest (try to guess some messages that produce the same digest)

  2. imposible to extract the original message from a given digest (hashing is rfer to as one-way encryption)

  3. slight change in the message should result in a completely different digest

  4. resulting digests must all be of same width (fixed size or fixed length)
- `collision`:

  1. when two different messages produce the same digest

  2. `byproduct` of the idea of `fixed width digests`

- common hashing algorithms:

  - `MD5` - `128` bits

  - `SHA/SHA-1` - `160` bits

  - `SHA-2` family:

    1. `SHA-224` - `224` bits

    2. `SHA-256` - `256` bits

    3. `SHA-384` - `384` bits

    4. `SHA-512` - `512` bits

- `hashing` is used to provide `data integrity`

- `data inegrity or integrity` - detecting if the data has been modified or not in transit

- `Message Authentication Code (MAC)`:

  - concept of combining `message` + `secret key` when `calculating digest`

  - provides:

    - `data integrity` - because if the data was changed the receiver will get a different digest than the sender, because the attacker does not have the secret key, so the receiver will know that the data was changed in transit

    - `authentication` - because if the digest that the receiver match the sent digest, then the receiver can be sure that the message was sent by the sender and not by someone else.

  - `message` + `secret key` must be combined in the same way:

    - because `hashing(key + message)` is not the same as `hashing(message + key)`

  - industry standard implementation of `MAC` is `HMAC` - `Hash-based Message Authentication Code`

  ![HMAC](./imgs/hash-and-mack.png)
  

---

## Encryption

- Encryption is used to provide `confidentiality`

- `confidentiality` - only the `intendent recipient ` can interpret the data

- `plain text or clear text` - data `before` encryption and `after` decryption

- `cipher text` - data `after` encryption and `before` decryption

- `simple encryption` - transforms `plain text` into `cipher text`

  + `does not scale` - I need to use a new encryption algorithm when try send any message to every new user
  
  + `hard` to do securely
  
  + can not simply use a standard algorithm




  

---
---

## NOTES

- watch this [playlist](https://www.youtube.com/playlist?list=PLIFyRwBY_4bTwRX__Zn4-letrtpSj1mzY) for more information

1. `Public Key` - This key is known to everyone and is used for encryption and verifying signatures. It can be freely shared with others without compromising security.

2. `Private Key` - This key is kept secret and known only to the owner. It is used for decryption and generating digital signatures.

- The process of signing a message with a private key involves the following steps:

  1.  `Creating the Message Digest` - A cryptographic hash function is applied to the message, which produces a fixed-size "digest" or "hash" unique to that message. This digest acts like a fingerprint of the original message.

  2.  `Encryption with Private Key` - The private key holder takes the message digest and encrypts it using their private key. This process is called "signing the message." The result is the digital signature.

  3.  `Attaching the Signature` - The digital signature, along with the original message, is sent to the recipient. The recipient can obtain the message digest by decrypting the signature using the public key of the sender.

  4.  `Verification` - To verify the authenticity of the message, the recipient independently generates the message digest from the received message using the same cryptographic hash function. Next, they decrypt the received signature with the public key of the sender, which gives them the original message digest. If the two digests match, it means the message has not been altered and that the signature is valid. If the digests do not match, it indicates that the message has been tampered with or that the signature is not authentic.

- Digital Signature is an Encrypted Hash or Encrypted Digest.

- There is a way when both client and server provides a certificate to prove their identity to each other, called `mututal ssl` or `mutual authentication ssl`

- SSL 3.0:

  1.  introduce the concept of `certificate chains`
  2.  `foundation` of `TLS` versions we use today

- The `avalanche effect` is a concept commonly used in cryptography and information security to describe a desirable property of encryption algorithms. It refers to the property where a small change in the input (plaintext) to an encryption algorithm results in a significantly different output (ciphertext). In other words, even a tiny alteration in the original data should cause the encrypted data to be drastically different.
