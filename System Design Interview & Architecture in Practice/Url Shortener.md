# URL Shortener
Here is a link to Miro: https://miro.com/app/board/uXjVMzmvKEQ=/?moveToWidget=3458764560014074766&cot=14

## Important moments to be touched during interview:
### ID generator options: 
1) Universal Unique ID (PROS and Cons)
2) Multi-Master ID generation
<img width="996" alt="image" src="https://github.com/user-attachments/assets/b8a6ff82-bc74-4899-b125-6319003c1446" />


3) Ticket Server (Bottleneck and one point of failure)
  <img width="991" alt="image" src="https://github.com/user-attachments/assets/de08159d-6010-4e9e-b10c-5ed079aa37a2" />

4) Twitter SnowFlake (combined UID with `timestamp-datacenterId-machineId-incrementalRequestIdInThisMilisecond`)
<img width="1020" alt="image" src="https://github.com/user-attachments/assets/0d68da23-44e6-4c40-a11b-b1c9371fff62" />

### Redirect options:
1) 301 Constant Redirect: browser caches this and next time will redirect you immediately
2) 302 Temporary Redirect: browser caches it for the short period of time. Useful for visit analytics

### Hash function vs Base62 (UID -> shortUrl transformer)

## Questions and answers from Product owners
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/331533a0-29e5-4628-b706-3ae02d502f0a)


## Functional and Non-Functional attributes (Constraints & QA) of the system
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/554035c8-4cd5-4c4a-b7c0-959ae5643e6a)


## API. Endpoints. Protection. Throughput
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/0e236708-8c5a-4867-847a-844d216a7d30)


## Database rationale. Database Organization. Storage Estimation
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/2e38a237-51ec-4533-b1c8-dd565b8cb376)
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/eeef3668-8500-4d25-8ff9-6e009d34a1de)

## Cache Estimation
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/35744085-de52-4d45-a62f-d124ac230db9)

## Traffic & Bandwidth Estimation
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/95c52cb7-4a1b-4fbf-a863-41dca380028f)

---
### High-level System Design
#### Approach with Database
![image](https://github.com/Glareone/AZ-304-SA-And-Architecture-Design-In-Depth/assets/4239376/da4d6b39-db6f-4f03-9efa-cc5383d56633)

#### Approach with random string generator (Meta Snowflake)  
1. Generate Unique IDs: Use Snowflake or a similar system to generate a unique 64-bit ID for each URL submitted by users. Each ID will be globally unique due to the combination of timestamp, datacenter ID, machine ID, and sequence number.

2. Convert IDs to URL-friendly Format: Since each Snowflake ID is 64 bits, you can encode this ID into a shorter, URL-friendly string. Using base62 encoding (characters 0-9, a-z, A-Z) is a common approach as it allows you to represent a large number in a compact form. Here's how the conversion typically works:

3. Example of Snowflake ID to Short URL Conversion:
Given a Snowflake ID like 'DATACENTER-ID''GENERATOR-SERVICE-ID''TIMESTAMP''NUMBER-OF-GENERATED' 521504606222354432, you would convert this to a base62 string, which might look something like 7FlmR3s. This string is then used as the path in your TinyURL, such as https://tinyurl.com/7FlmR3s.

### Approach with generate-on-the-fly
This approach is about generating Hashcode using known algorithm, for instance, MD5.  

**PROS:**
1. If collisions are acceptable - it might be a good solution.
2. Simple design - we generate unique string, then store it in the DB. It's important to check what DB throughput on writing we can guarantee. 

**CONS:**
1. The main issue with this approach is potential collisions.
2. 

## Low-level System Design
