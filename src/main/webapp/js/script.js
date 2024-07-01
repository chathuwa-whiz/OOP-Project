function customerDelete() {
    if(confirm("Do you want to delete Account?")) {
        window.location.href = "../delete";
    }
}

// customer registration
document.getElementById("registrationForm").addEventListener("submit", function(event) {
    event.preventDefault();

    const email = document.getElementById("email").value;
    const phone = document.getElementById("phone").value;
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirmPassword").value;

    if (password !== confirmPassword) {
        document.getElementById("message").innerHTML = "Passwords do not match!";
        return;
    }

    document.getElementById('registrationForm').submit();
});
