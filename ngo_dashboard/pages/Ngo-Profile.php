<?php
  session_start();
  if(isset($_SESSION['ngo_id'])){ 
    include_once 'ngo_retrieve.php';  
  ?>

<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <title> <?php echo $row['ngo_name']; ?> NGO Dashboard </title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <!-- Nucleo Icons -->
    <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link id="pagestyle" href="../assets/css/argon-dashboard.css?v=2.0.0" rel="stylesheet" />
  </head>

<body class="g-sidenav-show bg-gray-100">
  <div class="position-absolute w-100 min-height-300 top-0" style="background-image: url('https://raw.githubusercontent.com/creativetimofficial/public-assets/master/argon-dashboard-pro/assets/img/profile-layout-header.jpg'); background-position-y: 50%;">
    <span class="mask bg-primary opacity-6"></span>
  </div>

  <aside
    class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 "
    id="sidenav-main">

    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
        aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="./Ngo-Dashboard.php">
        <!--  https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html "
        target="_blank" -->
        <!-- <img src="./assets/img/logo-ct-dark.png" class="navbar-brand-img h-100" alt="main_logo"> -->
        <img src="../assets/img/community.png" class="avatar avatar-sm me-3" alt="ngo-logo">
        <span class="ms-1 font-weight-bold"><?php echo $row['ngo_name']; ?></span>
      </a>
    </div>
    <hr class="horizontal dark mt-0">

    <div class="" id="sidenav-collapse-main">

      <ul class="navbar-nav">

        <li class="nav-item">
          <a class="nav-link " href="./Ngo-Dashboard.php">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Dashboard</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link " href="./tables.php">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-bullet-list-67 text-warning text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Volunteers</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link " href="">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="fa fa-newspaper-o text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">News and Event</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link " href="./tables.php">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-bullet-list-67 text-warning text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Applicants</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link " href="">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-books text-primary text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Ebook</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link " href="./Ngo-Donation.php">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-credit-card text-success text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Donation</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link " href="./Ngo-Profile.php">
            <div
              class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
              <i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
            </div>
            <span class="nav-link-text ms-1">Profile</span>
          </a>
        </li>

      </ul>

    </div>

  </aside>

  <div class="main-content position-relative max-height-vh-100 h-100">
    
    <div class="card shadow-lg mx-4 card-profile-bottom">
      <div class="card-body p-3">
        <div class="row gx-4">
          <div class="col-auto">
            <div class="avatar avatar-xl position-relative">
              <img src="../assets/img/community.png" alt="profile_image" class="w-100 border-radius-lg shadow-sm">
            </div>
          </div>
          <div class="col-auto my-auto">
            <div class="h-100">
              <h5 class="mb-1">
                <?php echo $row['ngo_name']; ?>
              </h5>
              <p class="mb-0 font-weight-bold text-sm">
                <?php echo $row['ngo_domain']; ?>
              </p>
            </div>
          </div>         
        </div>
      </div>
    </div>

    <div class="container-fluid py-4">
      <div class="row">
        
          <div class="card">
            <div class="card-header pb-0">
              <div class="d-flex align-items-center">
                <p class="mb-0">Edit Profile</p>
                <button class="btn btn-primary btn-sm ms-auto">Edit</button>
              </div>
            </div>
            <div class="card-body">
              <p class="text-uppercase text-sm">NGO Details</p>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Name</label>
                    <input class="form-control" placeholder="Enter NGO Name" readonly value="<?php echo $row['ngo_name']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Domain</label>
                    <input class="form-control"  placeholder="Enter NGO Domain" readonly value="<?php echo $row['ngo_domain']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Act Name</label>
                    <input class="form-control"  placeholder="Enter Act Name" readonly value="<?php echo $row['act_name']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Registration No.</label>
                    <input class="form-control"  placeholder="Enter Registration Number" readonly value="<?php echo $row['registration_no']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">NGO Address</label>
                    <input class="form-control" placeholder="Enter NGO Address" readonly value="<?php echo $row['ngo_address']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">City of Registration</label>
                    <input class="form-control"  placeholder="Enter City Name" readonly value="<?php echo $row['city']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">State of Registration</label>
                    <input class="form-control"  placeholder="Enter State Name" readonly value="<?php echo $row['state']; ?>">
                  </div>
                </div>                
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">NGO City</label>
                    <input class="form-control"  placeholder="Enter City Name" readonly value="<?php echo $row['ngo_city']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">NGO State</label>
                    <input class="form-control"  placeholder="Enter State Name" readonly value="<?php echo $row['ngo_state']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Pin Code</label>
                    <input class="form-control" readonly placeholder="Enter Pin code" value="<?php echo $row['pincode']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Contact No.</label>
                    <input class="form-control"  placeholder="Enter Mobile Number"  readonly value="<?php echo $row['ngo_mobile']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Date of Registration</label>
                    <input class="form-control"  readonly value="<?php echo $row['registration_date']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">NGO Email-ID</label>
                    <input class="form-control" placeholder="Enter NGO Email" readonly value="<?php echo $row['ngo_email']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">NGO Website URL</label>
                    <input class="form-control"  placeholder="Enter NGO Website URL (https://www.xyz.com)" readonly value="<?php echo $row['url']; ?>">
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">NGO Description</label>
                    <textarea rows="5" cols="50" class="form-control" placeholder="Enter NGO Description"  style="resize:none" readonly>
                      <?php echo $row['ngo_desc']; ?>
                    </textarea>
                  </div>
                </div>             

              </div>

              <hr class="horizontal dark">

              <p class="text-uppercase text-sm">Our Founder</p>
              <div class="row">                
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Name</label>
                    <input class="form-control" placeholder="Enter Founder Name" readonly value="<?php echo $row['founder_name']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Email</label>
                    <input class="form-control" placeholder="Enter Email" readonly value="<?php echo $row['email']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Contact No.</label>
                    <input class="form-control" placeholder="Enter Mobile Number"  readonly value="<?php echo $row['mobile']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">Aadhar Number</label>
                    <input class="form-control"  placeholder="Enter 12-digit Aadhar Number" readonly value="<?php echo $row['aadhar']; ?>">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label for="example-text-input" class="form-control-label">PAN Number</label>
                    <input class="form-control"  placeholder="Enter 10-digit PAN Number" readonly value="<?php echo $row['pan']; ?>">
                  </div>
                </div>
              </div>
              
            </div>
          </div>
        </div>
    </div>

  </div>
 
  <!--   Core JS Files   -->
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/argon-dashboard.min.js?v=2.0.0"></script>
</body>

</html>
<?php
  }
  else{
    header('location:../../PHP/ngo_login_form.php');
  }
?>