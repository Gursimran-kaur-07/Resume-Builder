<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Resume Builder</title>
  <link rel="stylesheet" href="style.css">
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f0f2f5;
      margin: 0;
      padding: 0;
    }

    /* Header Styles */
    


    /* Container */
    .container {
      max-width: 900px;
      margin: 40px auto;
      padding: 30px;
      background: #ddddddff;
      border-radius: 10px;
      box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      color: #333;
      font-size: 2.5em;
      margin-bottom: 30px;
    }

    label {
      display: block;
      font-size: 18px;
      margin-top: 15px;
      color: #555;
    }

    input,
    textarea,
    select {
      width: 100%;
      padding: 12px;
      margin-top: 8px;
      background: #f8f8f8;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 16px;
      box-sizing: border-box;
    }

    input[type="text"],
    input[type="email"],
    input[type="file"] {
      height: 40px;
    }

    button {
      margin-top: 25px;
      padding: 12px 24px;
      background-color: #DCAE96;
      border: none;
      font-size: 18px;
      color: white;
      border-radius: 5px;
      cursor: pointer;
      width: 100%;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #A67B5B;
    }

    .success {
      color: green;
      font-size: 18px;
      text-align: center;
    }

   
  </style>
</head>

<body>
  <!-- HEADER -->
  <header>
    <nav class="navbar">
      <div class="logo">MyResume<span>Builder</span></div>
      <ul class="nav-links">
        <li><a href="index.html">Home</a></li>
        <li><a href="register.php">Register</a></li>
        <li><a href="login.php">Login</a></li>
      </ul>
    </nav>
  </header>

  <!-- MAIN CONTENT -->
  <div class="container">
    <?php
    require_once 'dbvars.php';

    if (!isset($_POST['name'])):
    ?>
      <!-- Form to input resume details -->
      <h1>Enter Your Details</h1>
      <form method="POST" enctype="multipart/form-data">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="contact">Contact</label>
        <input type="text" id="contact" name="contact" required>

        <label for="qualification">Qualification (Degree, Institution, Year per line)</label>
        <textarea id="qualification" name="qualification" required></textarea>

        <label for="experience">Experience</label>
        <textarea id="experience" name="experience" required></textarea>

        <label for="skills">Skills (one per line)</label>
        <textarea id="skills" name="skills" required></textarea>

        <label for="hobbies">Hobbies (one per line)</label>
        <textarea id="hobbies" name="hobbies"></textarea>

        <label for="objective">Objective / Goals</label>
        <textarea id="objective" name="objective"></textarea>

        <label for="image">Profile Image</label>
        <input type="file" name="image" accept="image/*">

        <!-- Template Selection -->
        <label for="template">Choose Template</label>
        <select name="template" id="template" required>
          <option value="template1">Classic Template</option>
          <option value="template2">Modern Template</option>
          <option value="template3">Elegant Template</option>
          <option value="template4">Sidebar Template</option>
        </select>

        <button type="submit">Save & Preview Resume</button>
      </form>

    <?php
    else:
      // Step 3: Collect form data
      $name = $_POST['name'];
      $email = $_POST['email'];
      $contact = $_POST['contact'];
      $qualification = $_POST['qualification'];
      $experience = $_POST['experience'];
      $skills = $_POST['skills'];
      $hobbies = $_POST['hobbies'];
      $objective = $_POST['objective'];
      $template = $_POST['template'];
      $imageName = $_POST['image'];

      $imageName = '';
      if (!empty($_FILES['image']['name'])) {
        $imageName = time() . '_' . basename($_FILES['image']['name']);
        move_uploaded_file($_FILES['image']['tmp_name'], 'uploads/' . $imageName);
      }

      // Step 4: Insert into database
      $stmt = $conn->prepare("INSERT INTO resumes (name, email, contact, qualification, experience, skills, hobbies, objective, image) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
      $stmt->bind_param("sssssssss", $name, $email, $contact, $qualification, $experience, $skills, $hobbies, $objective, $imageName);

      if ($stmt->execute()):
        $last_id = $conn->insert_id;
        echo "<p class='success'>✅ Resume saved successfully!</p>";
        header("Location: templates/{$template}.php?id={$last_id}");
        exit;
      else:
        echo "<p style='color:red;'>❌ Error saving data: " . $stmt->error . "</p>";
      endif;

      $stmt->close();
    endif;

    $conn->close();
    ?>
  </div>

  <!-- FOOTER -->
  <footer>
    <p>© 2025 MyResumeBuilder. All rights reserved.</p>
  </footer>
</body>

</html>
