<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Password Generator</title>
  <style>
    body { font-family: Arial, sans-serif; text-align: center; padding: 40px; background: #f4f6f9; }
    h1 { color: #333; }
    input { padding: 10px; width: 280px; margin-top: 20px; text-align: center; }
    button { padding: 10px 20px; margin-top: 20px; background: #007bff; color: white; border: none; border-radius: 5px; cursor: pointer; }
  </style>
</head>
<body>
  <h1>🔑 Password Generator</h1>
  <p>Create strong and secure passwords instantly.</p>
  <input type="text" id="password" readonly placeholder="Password will appear here">
  <br>
  <button onclick="generatePassword()">Generate Password</button>

  <script>
    function generatePassword() {
      const chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+";
      let password = "";
      for (let i = 0; i < 12; i++) {
        password += chars.charAt(Math.floor(Math.random() * chars.length));
      }
      document.getElementById("password").value = password;
    }
  </script>
</body>
</html> 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>QR Code Generator</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/qrious/4.0.2/qrious.min.js"></script>
  <style>
    body { font-family: Arial, sans-serif; text-align: center; padding: 40px; background: #f4f6f9; }
    h1 { color: #333; }
    input { padding: 10px; width: 300px; margin: 20px auto; display: block; }
    button { padding: 10px 20px; background: #28a745; color: white; border: none; border-radius: 5px; cursor: pointer; }
    canvas { margin-top: 20px; }
  </style>
</head>
<body>
  <h1>📱 QR Code Generator</h1>
  <p>Enter text or URL to generate a QR code.</p>
  <input type="text" id="qr-input" placeholder="Enter text or link">
  <button onclick="generateQR()">Generate QR</button>
  <br>
  <canvas id="qr-code"></canvas>

  <script>
    let qr = new QRious({
      element: document.getElementById('qr-code'),
      size: 200
    });

    function generateQR() {
      const text = document.getElementById('qr-input').value;
      qr.value = text;
    }
  </script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>YouTube Thumbnail Downloader</title>
  <style>
    body { font-family: Arial, sans-serif; text-align: center; padding: 40px; background: #f4f6f9; }
    h1 { color: #333; }
    input { padding: 10px; width: 300px; margin: 20px auto; display: block; }
    button { padding: 10px 20px; background: #dc3545; color: white; border: none; border-radius: 5px; cursor: pointer; }
    img { margin-top: 20px; max-width: 100%; border: 1px solid #ddd; border-radius: 5px; }
  </style>
</head>
<body>
  <h1>🎥 YouTube Thumbnail Downloader</h1>
  <p>Paste a YouTube video link to get the thumbnail.</p>
  <input type="text" id="yt-link" placeholder="Enter YouTube URL">
  <button onclick="getThumbnail()">Get Thumbnail</button>
  <br>
  <img id="thumbnail" src="" alt="">
  
  <script>
    function getThumbnail() {
      let url = document.getElementById('yt-link').value;
      let videoId = "";
      if (url.includes("v=")) {
        videoId = url.split("v=")[1].split("&")[0];
      } else if (url.includes("youtu.be/")) {
        videoId = url.split("youtu.be/")[1];
      }
      if (videoId) {
        document.getElementById("thumbnail").src = `https://img.youtube.com/vi/${videoId}/maxresdefault.jpg`;
      } else {
        alert("Invalid YouTube URL");
      }
    }
  </script>
</body>
</html>

