<?php require_once 'core/dbConfig.php';

// SQL query to select all records from the Users table
$sql = "SELECT * FROM Users";

// Prepare and execute the query
$stmt = $pdo->prepare($sql);
$stmt->execute();

// Fetch all results into an associative array
$users = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
<body>
    <h2>Users List</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Role</th>
                <th>Created At</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Check if there are any users
            if (count($users) > 0) {
                // Loop through the users and display their information in the table
                foreach ($users as $user) {
                    echo "<tr>
                        <td>" . $user['users_id'] . "</td>
                        <td>" . $user['name'] . "</td>
                        <td>" . $user['email'] . "</td>
                        <td>" . $user['password'] . "</td>
                        <td>" . $user['role'] . "</td>
                        <td>" . $user['created_at'] . "</td>
                    </tr>";
                }
            } else {
                echo "<tr><td colspan='6'>No users found</td></tr>";
            }
            ?>
        </tbody>
    </table>

    <?php
    // Close the database connection
    $pdo = null;
    ?>
</body>
</html>