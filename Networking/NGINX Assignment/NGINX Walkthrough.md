# Task: Setting Up NGINX on EC2 and Configuring Domain via Cloudflare 🚀

## Objective 🎯
- Buy my own domain via Cloudflare (preferably) 🌐.
- Create an EC2 instance running NGINX on port 80 🖥️.
- Add an A record to Cloudflare and point it to my EC2 instance 🔧.
- Be able to access the NGINX webpage via the domain: `nginx.maajid.co.uk` 🌍.

---

## Part 1: Buying a Domain via Cloudflare 🛒

### Step 1: Log in to Cloudflare 🔑
- I visited [Cloudflare](https://www.cloudflare.com/) and logged into my account.

### Step 2: Buy My Domain 💳
- I purchased the domain `maajid.co.uk` through Cloudflare's domain registration service.

---

## Part 2: Setting Up EC2 Instance with NGINX 🛠️

### Step 1: Launch EC2 Instance ⚡

1. I went to the **AWS Management Console** and navigated to **EC2** under **Services**.
2. I clicked on **Launch Instance** to create a new EC2 instance.
3. I selected the **Ubuntu** AMI (Amazon Machine Image).
4. I chose the **t2.micro** instance type, which is eligible for the free tier.
5. In the **Security Group**, I configured the settings to allow **HTTP (port 80)** traffic, as well as **SSH (port 22)** for remote access.
6. After configuring the instance, I launched it and selected a **Key Pair** to connect via SSH.

### Step 2: Connect to My EC2 Instance 🔌

1. Once the EC2 instance was running, I connected to it using SSH from my terminal:
   
```bash
ssh -i /path/to/your-key.pem ubuntu@<your-ec2-public-ip>
```

### Step 3: Install NGINX 🖥️

After connecting to the instance, I updated the package list with:
```bash
sudo apt-get update
```

Then, I installed NGINX by running:

```bash
sudo apt-get install nginx -y
```

### Step 4: Start and Enable NGINX 🎉

I started the NGINX service with:

```bash
sudo systemctl start nginx
```

To ensure that NGINX starts on boot, I enabled it using:

```bash
sudo systemctl enable nginx
```

### Verify NGINX 🔍

I opened my browser and entered the public IP address of my EC2 instance (e.g., `http://<your-ec2-public-ip>`).

I saw the default NGINX welcome page, confirming that everything was set up correctly.

---

## Part 3: Adding an A Record to Cloudflare 🌐

### Step 1: Log in to Cloudflare 🔑

I logged into my Cloudflare account again and navigated to the DNS section.

### Step 2: Add an A Record ➕

1. I added an A record for my domain `maajid.co.uk` by clicking Add Record.

2. For the Name, I entered `nginx` (so my domain would be `nginx.maajid.co.uk`).

3. In the IPv4 address field, I entered the public IP address of my EC2 instance.

4. I left the TTL as `Auto`.

5. I made sure the cloud icon was orange, indicating that Cloudflare was proxying the traffic.

6. I clicked Save to add the record.

### Step 3: Verify DNS Propagation ⏳

1. I waited a few minutes for the DNS changes to propagate.

2. Once the changes took effect, I opened a browser and navigated to `nginx.maajid.co.uk`.

3. I was able to access the NGINX welcome page hosted on my EC2 instance.

---

## Conclusion 🎉

1. I successfully purchased the domain `maajid.co.uk` from Cloudflare 🛒.

2. I launched an EC2 instance with Ubuntu and installed NGINX 🖥️.

3. I configured the Security Group to allow HTTP (`port 80`) traffic 🔐.

4. I added an A record in Cloudflare pointing to the public IP address of my EC2 instance 🗂️.

5. I can now access the NGINX welcome page via `nginx.maajid.co.uk` in my browser 🌍.

---

## Optional: Enable HTTPS 🔒

If I wanted to enable HTTPS, I could either use Cloudflare's SSL or set up an SSL certificate directly on my EC2 instance 🔑.
