<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $description = htmlspecialchars($_POST['description']);

    $to = 'bhavanaperecharla@gmail.com'; // Your email address
    $subject = 'Contact Form Submission';
    $message = "Name: $name\nEmail: $email\n\nMessage:\n$description";
    $headers = "From: $email";

    if (mail($to, $subject, $message, $headers)) {
        echo "<script>alert('Your message has been sent successfully.'); window.location.href='contact.html';</script>";
    } else {
        echo "<script>alert('Failed to send message.'); window.location.href='contact.html';</script>";
    }
}
?>
